contract main {




// =====================  Runtime code  =====================


address owner;
address sub_31bef2d5Address;
address sub_89876f59Address;
address sub_5bfd3380Address;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function sub_31bef2d5(?) {
    return sub_31bef2d5Address
}

function sub_5bfd3380(?) {
    return sub_5bfd3380Address
}

function sub_89876f59(?) {
    return sub_89876f59Address
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_4dbee817(?) {
    require msg.sender == owner
    sub_5bfd3380Address = arg1
}

function sub_5eb08097(?) {
    require msg.sender == owner
    sub_31bef2d5Address = arg1
}

function sub_7f4e9dce(?) {
    require msg.sender == owner
    sub_89876f59Address = arg1
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

function sub_76c37493(?) {
    require ext_code.size(sub_31bef2d5Address)
    call sub_31bef2d5Address.getReferer(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[2176] = ext_call.return_data[12 len 20]
    require ext_code.size(sub_89876f59Address)
    call sub_89876f59Address.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not address(ext_call.return_data[12 len 20]):
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xcf91894 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                if stor6 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor6:
                    require stor6
                    emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                if stor6 * arg2 / stor6 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, stor6 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       stor6 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xddca26a with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                require ext_code.size(sub_89876f59Address)
                call sub_89876f59Address.ownerOf(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[2208] = ext_call.return_data[12 len 20]
                if 1 > ext_call.return_data[32]:
                    revert with 0, 'SafeMath sub failed'
                if not ext_call.return_data[32] - 1:
                    if 10 * arg2 / 10 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    if stor6 + 30 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor6 + 30:
                        require stor6
                        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (30 * arg2) + (stor6 * arg2) / stor6 + 30 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor6 * arg2) / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (30 * arg2) + (stor6 * arg2) / stor6,
                           0,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                    revert with 0, 'SafeMath mul failed'
                if not (5 * ext_call.return_data[32]) + 5:
                    require stor6
                    if stor6 + 30 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor6 + 30:
                        require stor6
                        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (30 * arg2) + (stor6 * arg2) / stor6 + 30 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor6 * arg2) / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (30 * arg2) + (stor6 * arg2) / stor6,
                           0,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor6 + 30 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor6 + 30:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0,
                           (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (30 * arg2) + (stor6 * arg2) / stor6 + 30 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor6 * arg2) / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (30 * arg2) + (stor6 * arg2) / stor6,
                       0,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if (5 * ext_call.return_data[32]) + 25 < 0:
                revert with 0, 'SafeMath add failed'
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[2208] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if (5 * ext_call.return_data[32]) + stor6 + 25 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor6 + 25:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 25 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                       0,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if (5 * ext_call.return_data[32]) + stor6 + 25 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor6 + 25:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 25 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                       0,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor6 + 25 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor6 + 25:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 25 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                   0,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if stor5 < 0:
            revert with 0, 'SafeMath add failed'
        if not stor4:
            require stor6
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xcf91894 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                if stor5 + stor6 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6:
                    require stor6
                    emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xddca26a with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if stor5 + 30 < stor5:
                    revert with 0, 'SafeMath add failed'
                require ext_code.size(sub_89876f59Address)
                call sub_89876f59Address.ownerOf(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[2208] = ext_call.return_data[12 len 20]
                if 1 > ext_call.return_data[32]:
                    revert with 0, 'SafeMath sub failed'
                if not ext_call.return_data[32] - 1:
                    if 10 * arg2 / 10 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    if stor5 + stor6 + 30 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor5 + stor6 + 30:
                        require stor6
                        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                               0 / stor6,
                               0 / stor6,
                               10 * arg2 / stor6,
                               0,
                               0,
                               0,
                               0,
                               0,
                               0,
                               0
                    if (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 30 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                           0 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                    revert with 0, 'SafeMath mul failed'
                if not (5 * ext_call.return_data[32]) + 5:
                    require stor6
                    if stor5 + stor6 + 30 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor5 + stor6 + 30:
                        require stor6
                        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 30 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                           0 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor5 + stor6 + 30 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 30:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 30 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if (5 * ext_call.return_data[32]) + stor5 + 25 < stor5:
                revert with 0, 'SafeMath add failed'
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[2208] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 25:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 25:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 25:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   0 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if arg2 * stor4 / stor4 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xcf91894 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            if stor5 + stor6 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + stor6:
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xddca26a with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            if stor5 + 30 < stor5:
                revert with 0, 'SafeMath add failed'
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[2208] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor5 + stor6 + 30 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 30:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           arg2 * stor4 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 30 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       arg2 * stor4 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if stor5 + stor6 + 30 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 30:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           arg2 * stor4 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 30 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       arg2 * stor4 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if stor5 + stor6 + 30 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + stor6 + 30:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 30 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if (5 * ext_call.return_data[32]) + stor5 + 25 < stor5:
            revert with 0, 'SafeMath add failed'
        require ext_code.size(sub_89876f59Address)
        call sub_89876f59Address.ownerOf(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[2208] = ext_call.return_data[12 len 20]
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            if 10 * arg2 / 10 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 25:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   10 * arg2 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if not (5 * ext_call.return_data[32]) + 5:
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 25:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   0 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        if (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 < stor6:
            revert with 0, 'SafeMath add failed'
        if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 25:
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   arg2 * stor4 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
               arg2 * stor4 / stor6,
               (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if 1 > ext_call.return_data[0]:
        revert with 0, 'SafeMath sub failed'
    if not ext_call.return_data[0] - 1:
        if not address(ext_call.return_data[12 len 20]):
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xcf91894 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                if stor6 + 10 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor6 + 10:
                    require stor6
                    emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                if (10 * arg2) + (stor6 * arg2) / stor6 + 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (10 * arg2) + (stor6 * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (10 * arg2) + (stor6 * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xddca26a with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                require ext_code.size(sub_89876f59Address)
                call sub_89876f59Address.ownerOf(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[2208] = ext_call.return_data[12 len 20]
                if 1 > ext_call.return_data[32]:
                    revert with 0, 'SafeMath sub failed'
                if not ext_call.return_data[32] - 1:
                    if 10 * arg2 / 10 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    if stor6 + 40 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor6 + 40:
                        require stor6
                        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (40 * arg2) + (stor6 * arg2) / stor6 + 40 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor6 * arg2) / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (40 * arg2) + (stor6 * arg2) / stor6,
                           0,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                    revert with 0, 'SafeMath mul failed'
                if not (5 * ext_call.return_data[32]) + 5:
                    require stor6
                    if stor6 + 40 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor6 + 40:
                        require stor6
                        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (40 * arg2) + (stor6 * arg2) / stor6 + 40 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor6 * arg2) / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (40 * arg2) + (stor6 * arg2) / stor6,
                           0,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor6 + 40 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor6 + 40:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0,
                           (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (40 * arg2) + (stor6 * arg2) / stor6 + 40 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor6 * arg2) / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (40 * arg2) + (stor6 * arg2) / stor6,
                       0,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if (5 * ext_call.return_data[32]) + 35 < 10:
                revert with 0, 'SafeMath add failed'
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[2208] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if (5 * ext_call.return_data[32]) + stor6 + 35 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor6 + 35:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 35 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                       0,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if (5 * ext_call.return_data[32]) + stor6 + 35 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor6 + 35:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 35 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                       0,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor6 + 35 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor6 + 35:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 35 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                   0,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if stor5 + 10 < 10:
            revert with 0, 'SafeMath add failed'
        if not stor4:
            require stor6
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xcf91894 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                if stor5 + stor6 + 10 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 10:
                    require stor6
                    emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (10 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (10 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (10 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xddca26a with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                require ext_code.size(sub_89876f59Address)
                call sub_89876f59Address.ownerOf(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[2208] = ext_call.return_data[12 len 20]
                if 1 > ext_call.return_data[32]:
                    revert with 0, 'SafeMath sub failed'
                if not ext_call.return_data[32] - 1:
                    if 10 * arg2 / 10 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    if stor5 + stor6 + 40 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor5 + stor6 + 40:
                        require stor6
                        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                               0 / stor6,
                               0 / stor6,
                               10 * arg2 / stor6,
                               0,
                               0,
                               0,
                               0,
                               0,
                               0,
                               0
                    if (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 40 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                           0 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                    revert with 0, 'SafeMath mul failed'
                if not (5 * ext_call.return_data[32]) + 5:
                    require stor6
                    if stor5 + stor6 + 40 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor5 + stor6 + 40:
                        require stor6
                        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 40 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                           0 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor5 + stor6 + 40 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 40:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 40 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if (5 * ext_call.return_data[32]) + 25 < 0:
                revert with 0, 'SafeMath add failed'
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[2208] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 35:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 35:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 35:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   0 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if arg2 * stor4 / stor4 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xcf91894 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            if stor5 + stor6 + 10 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + stor6 + 10:
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (10 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 10 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (10 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (10 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xddca26a with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[2208] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor5 + stor6 + 40 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 40:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           arg2 * stor4 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 40 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       arg2 * stor4 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if stor5 + stor6 + 40 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 40:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           arg2 * stor4 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 40 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       arg2 * stor4 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if stor5 + stor6 + 40 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + stor6 + 40:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 40 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if (5 * ext_call.return_data[32]) + 25 < 0:
            revert with 0, 'SafeMath add failed'
        require ext_code.size(sub_89876f59Address)
        call sub_89876f59Address.ownerOf(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[2208] = ext_call.return_data[12 len 20]
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            if 10 * arg2 / 10 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 35:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   10 * arg2 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if not (5 * ext_call.return_data[32]) + 5:
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 35:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   0 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        if (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 < stor6:
            revert with 0, 'SafeMath add failed'
        if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 35:
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   arg2 * stor4 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
               arg2 * stor4 / stor6,
               (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if (5 * ext_call.return_data[0]) - 5 / ext_call.return_data[0] - 1 != 5:
        revert with 0, 'SafeMath mul failed'
    if 100 < (5 * ext_call.return_data[0]) + 5:
        if not address(ext_call.return_data[12 len 20]):
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xcf91894 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                if stor6 + 100 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor6 + 100:
                    require stor6
                    emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                if (100 * arg2) + (stor6 * arg2) / stor6 + 100 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (100 * arg2) + (stor6 * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (100 * arg2) + (stor6 * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xddca26a with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                require ext_code.size(sub_89876f59Address)
                call sub_89876f59Address.ownerOf(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[2208] = ext_call.return_data[12 len 20]
                if 1 > ext_call.return_data[32]:
                    revert with 0, 'SafeMath sub failed'
                if not ext_call.return_data[32] - 1:
                    if 10 * arg2 / 10 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    if stor6 + 130 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor6 + 130:
                        require stor6
                        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (130 * arg2) + (stor6 * arg2) / stor6 + 130 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor6 * arg2) / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (130 * arg2) + (stor6 * arg2) / stor6,
                           0,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                    revert with 0, 'SafeMath mul failed'
                if not (5 * ext_call.return_data[32]) + 5:
                    require stor6
                    if stor6 + 130 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor6 + 130:
                        require stor6
                        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (130 * arg2) + (stor6 * arg2) / stor6 + 130 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor6 * arg2) / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (130 * arg2) + (stor6 * arg2) / stor6,
                           0,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor6 + 130 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor6 + 130:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0,
                           (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (130 * arg2) + (stor6 * arg2) / stor6 + 130 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor6 * arg2) / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (130 * arg2) + (stor6 * arg2) / stor6,
                       0,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if (5 * ext_call.return_data[32]) + 125 < 100:
                revert with 0, 'SafeMath add failed'
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[2208] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if (5 * ext_call.return_data[32]) + stor6 + 125 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor6 + 125:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 125 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                       0,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if (5 * ext_call.return_data[32]) + stor6 + 125 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor6 + 125:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 125 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                       0,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor6 + 125 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor6 + 125:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 125 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                   0,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if stor5 + 100 < 100:
            revert with 0, 'SafeMath add failed'
        if not stor4:
            require stor6
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xcf91894 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                if stor5 + stor6 + 100 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 100:
                    require stor6
                    emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (100 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 100 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (100 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (100 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xddca26a with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                require ext_code.size(sub_89876f59Address)
                call sub_89876f59Address.ownerOf(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[2208] = ext_call.return_data[12 len 20]
                if 1 > ext_call.return_data[32]:
                    revert with 0, 'SafeMath sub failed'
                if not ext_call.return_data[32] - 1:
                    if 10 * arg2 / 10 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    if stor5 + stor6 + 130 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor5 + stor6 + 130:
                        require stor6
                        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                               0 / stor6,
                               0 / stor6,
                               10 * arg2 / stor6,
                               0,
                               0,
                               0,
                               0,
                               0,
                               0,
                               0
                    if (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 130 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                           0 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                    revert with 0, 'SafeMath mul failed'
                if not (5 * ext_call.return_data[32]) + 5:
                    require stor6
                    if stor5 + stor6 + 130 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor5 + stor6 + 130:
                        require stor6
                        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 130 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                           0 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor5 + stor6 + 130 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 130:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 130 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if (5 * ext_call.return_data[32]) + 25 < 0:
                revert with 0, 'SafeMath add failed'
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[2208] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 125:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 125:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 125:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   0 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if arg2 * stor4 / stor4 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xcf91894 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            if stor5 + stor6 + 100 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + stor6 + 100:
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (100 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 100 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (100 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (100 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xddca26a with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[2208] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor5 + stor6 + 130 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 130:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           arg2 * stor4 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 130 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       arg2 * stor4 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if stor5 + stor6 + 130 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 130:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           arg2 * stor4 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 130 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       arg2 * stor4 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if stor5 + stor6 + 130 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + stor6 + 130:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 130 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if (5 * ext_call.return_data[32]) + 25 < 0:
            revert with 0, 'SafeMath add failed'
        require ext_code.size(sub_89876f59Address)
        call sub_89876f59Address.ownerOf(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[2208] = ext_call.return_data[12 len 20]
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            if 10 * arg2 / 10 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 125:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   10 * arg2 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if not (5 * ext_call.return_data[32]) + 5:
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 125:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   0 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        if (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 < stor6:
            revert with 0, 'SafeMath add failed'
        if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 125:
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   arg2 * stor4 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
               arg2 * stor4 / stor6,
               (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if (5 * ext_call.return_data[0]) + 5 < 0:
        revert with 0, 'SafeMath add failed'
    if not address(ext_call.return_data[12 len 20]):
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xcf91894 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            if (5 * ext_call.return_data[0]) + stor6 + 5 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[0]) + stor6 + 5:
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
            if (5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[0]) + stor6 + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xddca26a with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[2208] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[0]) + stor6 + 35:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                       0,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[0]) + stor6 + 35:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                       0,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[0]) + stor6 + 35:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   0,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if (5 * ext_call.return_data[32]) + 25 < 0:
            revert with 0, 'SafeMath add failed'
        require ext_code.size(sub_89876f59Address)
        call sub_89876f59Address.ownerOf(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[2208] = ext_call.return_data[12 len 20]
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            if 10 * arg2 / 10 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
            if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   0,
                   10 * arg2 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if not (5 * ext_call.return_data[32]) + 5:
            require stor6
            if (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   0,
                   0 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        if (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
            revert with 0, 'SafeMath add failed'
        if not (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30:
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   0,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
               0,
               (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if stor5 < 0:
        revert with 0, 'SafeMath add failed'
    if not stor4:
        require stor6
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xcf91894 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            if stor5 + (5 * ext_call.return_data[0]) + stor6 + 5 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + (5 * ext_call.return_data[0]) + stor6 + 5:
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor5 + (5 * ext_call.return_data[0]) + stor6 + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (5 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (5 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   0 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xddca26a with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[2208] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + (5 * ext_call.return_data[0]) + stor6 + 35:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + (5 * ext_call.return_data[0]) + stor6 + 35:
                    require stor6
                    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + (5 * ext_call.return_data[0]) + stor6 + 35:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   0 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if (5 * ext_call.return_data[32]) + 25 < 0:
            revert with 0, 'SafeMath add failed'
        require ext_code.size(sub_89876f59Address)
        call sub_89876f59Address.ownerOf(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[2208] = ext_call.return_data[12 len 20]
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            if 10 * arg2 / 10 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   0 / stor6,
                   10 * arg2 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if not (5 * ext_call.return_data[32]) + 5:
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   0 / stor6,
                   0 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        if (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
            revert with 0, 'SafeMath add failed'
        if not (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30:
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   0 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
               0 / stor6,
               (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if arg2 * stor4 / stor4 != arg2:
        revert with 0, 'SafeMath mul failed'
    require stor6
    require ext_code.size(sub_5bfd3380Address)
    call sub_5bfd3380Address.0xcf91894 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[32]:
        if stor5 + (5 * ext_call.return_data[0]) + stor6 + 5 < stor6:
            revert with 0, 'SafeMath add failed'
        if not stor5 + (5 * ext_call.return_data[0]) + stor6 + 5:
            require stor6
            emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   arg2 * stor4 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor5 + (5 * ext_call.return_data[0]) + stor6 + 5 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (5 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (5 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
               arg2 * stor4 / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    require ext_code.size(sub_5bfd3380Address)
    call sub_5bfd3380Address.0xddca26a with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if 1 > ext_call.return_data[32]:
        revert with 0, 'SafeMath sub failed'
    if not ext_call.return_data[32] - 1:
        require ext_code.size(sub_89876f59Address)
        call sub_89876f59Address.ownerOf(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[2208] = ext_call.return_data[12 len 20]
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            if 10 * arg2 / 10 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + (5 * ext_call.return_data[0]) + stor6 + 35:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   10 * arg2 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if not (5 * ext_call.return_data[32]) + 5:
            require stor6
            if stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + (5 * ext_call.return_data[0]) + stor6 + 35:
                require stor6
                emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   0 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        if stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
            revert with 0, 'SafeMath add failed'
        if not stor5 + (5 * ext_call.return_data[0]) + stor6 + 35:
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   arg2 * stor4 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
               arg2 * stor4 / stor6,
               (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
        revert with 0, 'SafeMath mul failed'
    if (5 * ext_call.return_data[32]) + 25 < 0:
        revert with 0, 'SafeMath add failed'
    require ext_code.size(sub_89876f59Address)
    call sub_89876f59Address.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[2208] = ext_call.return_data[12 len 20]
    if 1 > ext_call.return_data[32]:
        revert with 0, 'SafeMath sub failed'
    if not ext_call.return_data[32] - 1:
        if 10 * arg2 / 10 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        if (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
            revert with 0, 'SafeMath add failed'
        if not (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30:
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   arg2 * stor4 / stor6,
                   10 * arg2 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
               arg2 * stor4 / stor6,
               10 * arg2 / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
        revert with 0, 'SafeMath mul failed'
    if not (5 * ext_call.return_data[32]) + 5:
        require stor6
        if (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
            revert with 0, 'SafeMath add failed'
        if not (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30:
            require stor6
            emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   arg2 * stor4 / stor6,
                   0 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
               arg2 * stor4 / stor6,
               0 / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
        revert with 0, 'SafeMath mul failed'
    require stor6
    if (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
        revert with 0, 'SafeMath add failed'
    if not (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30:
        require stor6
        emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               0 / stor6,
               arg2 * stor4 / stor6,
               (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
        revert with 0, 'SafeMath mul failed'
    require stor6
    emit 0x95369991: address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
    return address(arg1), mem[2176 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
           (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
           arg2 * stor4 / stor6,
           (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
           0,
           0,
           0,
           0,
           0,
           0,
           0
}

function sub_d99ad500(?) {
    require ext_code.size(sub_31bef2d5Address)
    call sub_31bef2d5Address.getReferer(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[1536] = ext_call.return_data[12 len 20]
    require ext_code.size(sub_89876f59Address)
    call sub_89876f59Address.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not address(ext_call.return_data[12 len 20]):
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xcf91894 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                if stor6 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor6:
                    require stor6
                    emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                if stor6 * arg2 / stor6 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, stor6 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       stor6 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xddca26a with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                require ext_code.size(sub_89876f59Address)
                call sub_89876f59Address.ownerOf(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[1568] = ext_call.return_data[12 len 20]
                if 1 > ext_call.return_data[32]:
                    revert with 0, 'SafeMath sub failed'
                if not ext_call.return_data[32] - 1:
                    if 10 * arg2 / 10 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    if stor6 + 30 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor6 + 30:
                        require stor6
                        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (30 * arg2) + (stor6 * arg2) / stor6 + 30 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor6 * arg2) / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (30 * arg2) + (stor6 * arg2) / stor6,
                           0,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                    revert with 0, 'SafeMath mul failed'
                if not (5 * ext_call.return_data[32]) + 5:
                    require stor6
                    if stor6 + 30 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor6 + 30:
                        require stor6
                        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (30 * arg2) + (stor6 * arg2) / stor6 + 30 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor6 * arg2) / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (30 * arg2) + (stor6 * arg2) / stor6,
                           0,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor6 + 30 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor6 + 30:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0,
                           (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (30 * arg2) + (stor6 * arg2) / stor6 + 30 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor6 * arg2) / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (30 * arg2) + (stor6 * arg2) / stor6,
                       0,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if (5 * ext_call.return_data[32]) + 25 < 0:
                revert with 0, 'SafeMath add failed'
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[1568] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if (5 * ext_call.return_data[32]) + stor6 + 25 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor6 + 25:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 25 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                       0,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if (5 * ext_call.return_data[32]) + stor6 + 25 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor6 + 25:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 25 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                       0,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor6 + 25 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor6 + 25:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 25 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                   0,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if stor5 < 0:
            revert with 0, 'SafeMath add failed'
        if not stor4:
            require stor6
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xcf91894 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                if stor5 + stor6 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6:
                    require stor6
                    emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xddca26a with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if stor5 + 30 < stor5:
                    revert with 0, 'SafeMath add failed'
                require ext_code.size(sub_89876f59Address)
                call sub_89876f59Address.ownerOf(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[1568] = ext_call.return_data[12 len 20]
                if 1 > ext_call.return_data[32]:
                    revert with 0, 'SafeMath sub failed'
                if not ext_call.return_data[32] - 1:
                    if 10 * arg2 / 10 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    if stor5 + stor6 + 30 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor5 + stor6 + 30:
                        require stor6
                        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                               0 / stor6,
                               0 / stor6,
                               10 * arg2 / stor6,
                               0,
                               0,
                               0,
                               0,
                               0,
                               0,
                               0
                    if (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 30 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                           0 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                    revert with 0, 'SafeMath mul failed'
                if not (5 * ext_call.return_data[32]) + 5:
                    require stor6
                    if stor5 + stor6 + 30 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor5 + stor6 + 30:
                        require stor6
                        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 30 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                           0 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor5 + stor6 + 30 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 30:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 30 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if (5 * ext_call.return_data[32]) + stor5 + 25 < stor5:
                revert with 0, 'SafeMath add failed'
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[1568] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 25:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 25:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 25:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   0 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if arg2 * stor4 / stor4 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xcf91894 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            if stor5 + stor6 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + stor6:
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xddca26a with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            if stor5 + 30 < stor5:
                revert with 0, 'SafeMath add failed'
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[1568] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor5 + stor6 + 30 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 30:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           arg2 * stor4 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 30 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       arg2 * stor4 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if stor5 + stor6 + 30 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 30:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           arg2 * stor4 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 30 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       arg2 * stor4 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if stor5 + stor6 + 30 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + stor6 + 30:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 30 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (30 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if (5 * ext_call.return_data[32]) + stor5 + 25 < stor5:
            revert with 0, 'SafeMath add failed'
        require ext_code.size(sub_89876f59Address)
        call sub_89876f59Address.ownerOf(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[1568] = ext_call.return_data[12 len 20]
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            if 10 * arg2 / 10 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 25:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   10 * arg2 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if not (5 * ext_call.return_data[32]) + 5:
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 25:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   0 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        if (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 < stor6:
            revert with 0, 'SafeMath add failed'
        if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 25:
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   arg2 * stor4 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 25 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (25 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
               arg2 * stor4 / stor6,
               (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if 1 > ext_call.return_data[0]:
        revert with 0, 'SafeMath sub failed'
    if not ext_call.return_data[0] - 1:
        if not address(ext_call.return_data[12 len 20]):
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xcf91894 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                if stor6 + 10 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor6 + 10:
                    require stor6
                    emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                if (10 * arg2) + (stor6 * arg2) / stor6 + 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (10 * arg2) + (stor6 * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (10 * arg2) + (stor6 * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xddca26a with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                require ext_code.size(sub_89876f59Address)
                call sub_89876f59Address.ownerOf(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[1568] = ext_call.return_data[12 len 20]
                if 1 > ext_call.return_data[32]:
                    revert with 0, 'SafeMath sub failed'
                if not ext_call.return_data[32] - 1:
                    if 10 * arg2 / 10 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    if stor6 + 40 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor6 + 40:
                        require stor6
                        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (40 * arg2) + (stor6 * arg2) / stor6 + 40 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor6 * arg2) / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (40 * arg2) + (stor6 * arg2) / stor6,
                           0,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                    revert with 0, 'SafeMath mul failed'
                if not (5 * ext_call.return_data[32]) + 5:
                    require stor6
                    if stor6 + 40 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor6 + 40:
                        require stor6
                        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (40 * arg2) + (stor6 * arg2) / stor6 + 40 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor6 * arg2) / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (40 * arg2) + (stor6 * arg2) / stor6,
                           0,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor6 + 40 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor6 + 40:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0,
                           (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (40 * arg2) + (stor6 * arg2) / stor6 + 40 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor6 * arg2) / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (40 * arg2) + (stor6 * arg2) / stor6,
                       0,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if (5 * ext_call.return_data[32]) + 35 < 10:
                revert with 0, 'SafeMath add failed'
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[1568] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if (5 * ext_call.return_data[32]) + stor6 + 35 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor6 + 35:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 35 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                       0,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if (5 * ext_call.return_data[32]) + stor6 + 35 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor6 + 35:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 35 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                       0,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor6 + 35 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor6 + 35:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 35 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                   0,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if stor5 + 10 < 10:
            revert with 0, 'SafeMath add failed'
        if not stor4:
            require stor6
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xcf91894 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                if stor5 + stor6 + 10 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 10:
                    require stor6
                    emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (10 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (10 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (10 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xddca26a with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                require ext_code.size(sub_89876f59Address)
                call sub_89876f59Address.ownerOf(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[1568] = ext_call.return_data[12 len 20]
                if 1 > ext_call.return_data[32]:
                    revert with 0, 'SafeMath sub failed'
                if not ext_call.return_data[32] - 1:
                    if 10 * arg2 / 10 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    if stor5 + stor6 + 40 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor5 + stor6 + 40:
                        require stor6
                        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                               0 / stor6,
                               0 / stor6,
                               10 * arg2 / stor6,
                               0,
                               0,
                               0,
                               0,
                               0,
                               0,
                               0
                    if (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 40 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                           0 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                    revert with 0, 'SafeMath mul failed'
                if not (5 * ext_call.return_data[32]) + 5:
                    require stor6
                    if stor5 + stor6 + 40 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor5 + stor6 + 40:
                        require stor6
                        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 40 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                           0 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor5 + stor6 + 40 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 40:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 40 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if (5 * ext_call.return_data[32]) + 25 < 0:
                revert with 0, 'SafeMath add failed'
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[1568] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 35:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 35:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 35:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   0 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if arg2 * stor4 / stor4 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xcf91894 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            if stor5 + stor6 + 10 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + stor6 + 10:
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (10 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 10 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (10 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (10 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xddca26a with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[1568] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor5 + stor6 + 40 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 40:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           arg2 * stor4 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 40 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       arg2 * stor4 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if stor5 + stor6 + 40 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 40:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           arg2 * stor4 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 40 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       arg2 * stor4 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if stor5 + stor6 + 40 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + stor6 + 40:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 40 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (40 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if (5 * ext_call.return_data[32]) + 25 < 0:
            revert with 0, 'SafeMath add failed'
        require ext_code.size(sub_89876f59Address)
        call sub_89876f59Address.ownerOf(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[1568] = ext_call.return_data[12 len 20]
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            if 10 * arg2 / 10 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 35:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   10 * arg2 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if not (5 * ext_call.return_data[32]) + 5:
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 35:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   0 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        if (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 < stor6:
            revert with 0, 'SafeMath add failed'
        if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 35:
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   arg2 * stor4 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 35 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (35 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
               arg2 * stor4 / stor6,
               (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if (5 * ext_call.return_data[0]) - 5 / ext_call.return_data[0] - 1 != 5:
        revert with 0, 'SafeMath mul failed'
    if 100 < (5 * ext_call.return_data[0]) + 5:
        if not address(ext_call.return_data[12 len 20]):
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xcf91894 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                if stor6 + 100 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor6 + 100:
                    require stor6
                    emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                if (100 * arg2) + (stor6 * arg2) / stor6 + 100 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (100 * arg2) + (stor6 * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (100 * arg2) + (stor6 * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xddca26a with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                require ext_code.size(sub_89876f59Address)
                call sub_89876f59Address.ownerOf(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[1568] = ext_call.return_data[12 len 20]
                if 1 > ext_call.return_data[32]:
                    revert with 0, 'SafeMath sub failed'
                if not ext_call.return_data[32] - 1:
                    if 10 * arg2 / 10 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    if stor6 + 130 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor6 + 130:
                        require stor6
                        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (130 * arg2) + (stor6 * arg2) / stor6 + 130 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor6 * arg2) / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (130 * arg2) + (stor6 * arg2) / stor6,
                           0,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                    revert with 0, 'SafeMath mul failed'
                if not (5 * ext_call.return_data[32]) + 5:
                    require stor6
                    if stor6 + 130 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor6 + 130:
                        require stor6
                        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (130 * arg2) + (stor6 * arg2) / stor6 + 130 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor6 * arg2) / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (130 * arg2) + (stor6 * arg2) / stor6,
                           0,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor6 + 130 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor6 + 130:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0,
                           (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (130 * arg2) + (stor6 * arg2) / stor6 + 130 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor6 * arg2) / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (130 * arg2) + (stor6 * arg2) / stor6,
                       0,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if (5 * ext_call.return_data[32]) + 125 < 100:
                revert with 0, 'SafeMath add failed'
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[1568] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if (5 * ext_call.return_data[32]) + stor6 + 125 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor6 + 125:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 125 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                       0,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if (5 * ext_call.return_data[32]) + stor6 + 125 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor6 + 125:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 125 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                       0,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor6 + 125 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor6 + 125:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor6 + 125 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor6 * arg2) / stor6,
                   0,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if stor5 + 100 < 100:
            revert with 0, 'SafeMath add failed'
        if not stor4:
            require stor6
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xcf91894 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                if stor5 + stor6 + 100 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 100:
                    require stor6
                    emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (100 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 100 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (100 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (100 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            require ext_code.size(sub_5bfd3380Address)
            call sub_5bfd3380Address.0xddca26a with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                require ext_code.size(sub_89876f59Address)
                call sub_89876f59Address.ownerOf(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[1568] = ext_call.return_data[12 len 20]
                if 1 > ext_call.return_data[32]:
                    revert with 0, 'SafeMath sub failed'
                if not ext_call.return_data[32] - 1:
                    if 10 * arg2 / 10 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    if stor5 + stor6 + 130 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor5 + stor6 + 130:
                        require stor6
                        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                               0 / stor6,
                               0 / stor6,
                               10 * arg2 / stor6,
                               0,
                               0,
                               0,
                               0,
                               0,
                               0,
                               0
                    if (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 130 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                           0 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                    revert with 0, 'SafeMath mul failed'
                if not (5 * ext_call.return_data[32]) + 5:
                    require stor6
                    if stor5 + stor6 + 130 < stor6:
                        revert with 0, 'SafeMath add failed'
                    if not stor5 + stor6 + 130:
                        require stor6
                        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    if (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 130 != arg2:
                        revert with 0, 'SafeMath mul failed'
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                           0 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor5 + stor6 + 130 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 130:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 130 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if (5 * ext_call.return_data[32]) + 25 < 0:
                revert with 0, 'SafeMath add failed'
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[1568] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 125:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 125:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 125:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   0 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if arg2 * stor4 / stor4 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xcf91894 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            if stor5 + stor6 + 100 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + stor6 + 100:
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (100 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 100 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (100 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (100 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xddca26a with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[1568] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor5 + stor6 + 130 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 130:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           arg2 * stor4 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 130 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       arg2 * stor4 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if stor5 + stor6 + 130 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + stor6 + 130:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           arg2 * stor4 / stor6,
                           0 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 130 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                       arg2 * stor4 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if stor5 + stor6 + 130 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + stor6 + 130:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor5 + stor6 + 130 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (130 * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if (5 * ext_call.return_data[32]) + 25 < 0:
            revert with 0, 'SafeMath add failed'
        require ext_code.size(sub_89876f59Address)
        call sub_89876f59Address.ownerOf(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[1568] = ext_call.return_data[12 len 20]
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            if 10 * arg2 / 10 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 125:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   10 * arg2 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if not (5 * ext_call.return_data[32]) + 5:
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 125:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   0 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        if (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 < stor6:
            revert with 0, 'SafeMath add failed'
        if not (5 * ext_call.return_data[32]) + stor5 + stor6 + 125:
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   arg2 * stor4 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + stor6 + 125 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (125 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (stor6 * arg2) / stor6,
               arg2 * stor4 / stor6,
               (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if (5 * ext_call.return_data[0]) + 5 < 0:
        revert with 0, 'SafeMath add failed'
    if not address(ext_call.return_data[12 len 20]):
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xcf91894 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            if (5 * ext_call.return_data[0]) + stor6 + 5 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[0]) + stor6 + 5:
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
            if (5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[0]) + stor6 + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xddca26a with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[1568] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[0]) + stor6 + 35:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                       0,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not (5 * ext_call.return_data[0]) + stor6 + 35:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                       0,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[0]) + stor6 + 35:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (35 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   0,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if (5 * ext_call.return_data[32]) + 25 < 0:
            revert with 0, 'SafeMath add failed'
        require ext_code.size(sub_89876f59Address)
        call sub_89876f59Address.ownerOf(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[1568] = ext_call.return_data[12 len 20]
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            if 10 * arg2 / 10 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
            if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   0,
                   10 * arg2 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if not (5 * ext_call.return_data[32]) + 5:
            require stor6
            if (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   0,
                   0 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        if (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
            revert with 0, 'SafeMath add failed'
        if not (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30:
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   0,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
               0,
               (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if stor5 < 0:
        revert with 0, 'SafeMath add failed'
    if not stor4:
        require stor6
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xcf91894 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            if stor5 + (5 * ext_call.return_data[0]) + stor6 + 5 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + (5 * ext_call.return_data[0]) + stor6 + 5:
                require stor6
                emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor5 + (5 * ext_call.return_data[0]) + stor6 + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (5 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (5 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   0 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        require ext_code.size(sub_5bfd3380Address)
        call sub_5bfd3380Address.0xddca26a with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            require ext_code.size(sub_89876f59Address)
            call sub_89876f59Address.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[1568] = ext_call.return_data[12 len 20]
            if 1 > ext_call.return_data[32]:
                revert with 0, 'SafeMath sub failed'
            if not ext_call.return_data[32] - 1:
                if 10 * arg2 / 10 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                if stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + (5 * ext_call.return_data[0]) + stor6 + 35:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                           0 / stor6,
                           0 / stor6,
                           10 * arg2 / stor6,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           0
                if (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
                revert with 0, 'SafeMath mul failed'
            if not (5 * ext_call.return_data[32]) + 5:
                require stor6
                if stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
                    revert with 0, 'SafeMath add failed'
                if not stor5 + (5 * ext_call.return_data[0]) + stor6 + 35:
                    require stor6
                    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                if (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
                    revert with 0, 'SafeMath mul failed'
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                       0 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + (5 * ext_call.return_data[0]) + stor6 + 35:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0 / stor6,
                       (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   0 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if (5 * ext_call.return_data[32]) + 25 < 0:
            revert with 0, 'SafeMath add failed'
        require ext_code.size(sub_89876f59Address)
        call sub_89876f59Address.ownerOf(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[1568] = ext_call.return_data[12 len 20]
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            if 10 * arg2 / 10 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       0 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   0 / stor6,
                   10 * arg2 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if not (5 * ext_call.return_data[32]) + 5:
            require stor6
            if (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
                revert with 0, 'SafeMath add failed'
            if not (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   0 / stor6,
                   0 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        if (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
            revert with 0, 'SafeMath add failed'
        if not (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30:
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   0 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, 0 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
               0 / stor6,
               (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if arg2 * stor4 / stor4 != arg2:
        revert with 0, 'SafeMath mul failed'
    require stor6
    require ext_code.size(sub_5bfd3380Address)
    call sub_5bfd3380Address.0xcf91894 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[32]:
        if stor5 + (5 * ext_call.return_data[0]) + stor6 + 5 < stor6:
            revert with 0, 'SafeMath add failed'
        if not stor5 + (5 * ext_call.return_data[0]) + stor6 + 5:
            require stor6
            emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   arg2 * stor4 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor5 + (5 * ext_call.return_data[0]) + stor6 + 5 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, (5 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), ext_call.return_data[12 len 20], 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (5 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
               arg2 * stor4 / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    require ext_code.size(sub_5bfd3380Address)
    call sub_5bfd3380Address.0xddca26a with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if 1 > ext_call.return_data[32]:
        revert with 0, 'SafeMath sub failed'
    if not ext_call.return_data[32] - 1:
        require ext_code.size(sub_89876f59Address)
        call sub_89876f59Address.ownerOf(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[1568] = ext_call.return_data[12 len 20]
        if 1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath sub failed'
        if not ext_call.return_data[32] - 1:
            if 10 * arg2 / 10 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            if stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + (5 * ext_call.return_data[0]) + stor6 + 35:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       10 * arg2 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   10 * arg2 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
            revert with 0, 'SafeMath mul failed'
        if not (5 * ext_call.return_data[32]) + 5:
            require stor6
            if stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
                revert with 0, 'SafeMath add failed'
            if not stor5 + (5 * ext_call.return_data[0]) + stor6 + 35:
                require stor6
                emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
                return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                       0 / stor6,
                       arg2 * stor4 / stor6,
                       0 / stor6,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       0
            if (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
                revert with 0, 'SafeMath mul failed'
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
                   arg2 * stor4 / stor6,
                   0 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        if stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 < stor6:
            revert with 0, 'SafeMath add failed'
        if not stor5 + (5 * ext_call.return_data[0]) + stor6 + 35:
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   arg2 * stor4 / stor6,
                   (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor5 + (5 * ext_call.return_data[0]) + stor6 + 35 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (35 * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
               arg2 * stor4 / stor6,
               (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
        revert with 0, 'SafeMath mul failed'
    if (5 * ext_call.return_data[32]) + 25 < 0:
        revert with 0, 'SafeMath add failed'
    require ext_code.size(sub_89876f59Address)
    call sub_89876f59Address.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[1568] = ext_call.return_data[12 len 20]
    if 1 > ext_call.return_data[32]:
        revert with 0, 'SafeMath sub failed'
    if not ext_call.return_data[32] - 1:
        if 10 * arg2 / 10 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        if (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
            revert with 0, 'SafeMath add failed'
        if not (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30:
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   arg2 * stor4 / stor6,
                   10 * arg2 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 10 * arg2 / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
               arg2 * stor4 / stor6,
               10 * arg2 / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if (5 * ext_call.return_data[32]) - 5 / ext_call.return_data[32] - 1 != 5:
        revert with 0, 'SafeMath mul failed'
    if not (5 * ext_call.return_data[32]) + 5:
        require stor6
        if (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
            revert with 0, 'SafeMath add failed'
        if not (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30:
            require stor6
            emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
            return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
                   0 / stor6,
                   arg2 * stor4 / stor6,
                   0 / stor6,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
            revert with 0, 'SafeMath mul failed'
        require stor6
        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, 0 / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
               arg2 * stor4 / stor6,
               0 / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / (5 * ext_call.return_data[32]) + 5 != arg2:
        revert with 0, 'SafeMath mul failed'
    require stor6
    if (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 < stor6:
        revert with 0, 'SafeMath add failed'
    if not (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30:
        require stor6
        emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 0 / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
        return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               0 / stor6,
               arg2 * stor4 / stor6,
               (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    if (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / (5 * ext_call.return_data[32]) + stor5 + (5 * ext_call.return_data[0]) + stor6 + 30 != arg2:
        revert with 0, 'SafeMath mul failed'
    require stor6
    emit 0x95369991: address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6, arg2 * stor4 / stor6, (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6, 0, 0, 0, 0, 0, 0, 0
    return address(arg1), mem[1536 len 64], 0, 0, 0, 0, 0, 0, 0 >> 2304, 
           (30 * arg2) + (5 * ext_call.return_data[32] * arg2) + (stor5 * arg2) + (5 * ext_call.return_data[0] * arg2) + (stor6 * arg2) / stor6,
           arg2 * stor4 / stor6,
           (5 * arg2) + (5 * ext_call.return_data[32] * arg2) / stor6,
           0,
           0,
           0,
           0,
           0,
           0,
           0
}



}
