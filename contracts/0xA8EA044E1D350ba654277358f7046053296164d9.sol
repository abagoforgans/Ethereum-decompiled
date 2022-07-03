contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address beneficiaryAddress;
mapping of uint256 released;
mapping of uint8 stor3;

function beneficiary() {
    return beneficiaryAddress
}

function revocable() {
    return bool(stor1)
}

function owner() {
    return owner
}

function released(address arg1) {
    return released[arg1]
}

function revoked(address arg1) {
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function vestedAmount(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + released[address(arg1)] >= ext_call.return_data[0]
    if block.timestamp < 435256 * 3600:
        return 0
    if block.timestamp >= 441832 * 3600:
        return (ext_call.return_data[0] + released[address(arg1)])
    if stor3[address(arg1)]:
        return (ext_call.return_data[0] + released[address(arg1)])
    if block.timestamp < 435256 * 3600:
        return 0
    if block.timestamp < 436000 * 3600:
        if not ext_call.return_data[0] + released[address(arg1)]:
            return 0
        if ext_call.return_data[0] + released[address(arg1)]:
            if ext_call.return_data[0] + released[address(arg1)] / ext_call.return_data[0] + released[address(arg1)] == 1:
                return (ext_call.return_data[0] + released[address(arg1)] / 10)
    else:
        if block.timestamp < 436720 * 3600:
            if not ext_call.return_data[0] + released[address(arg1)]:
                return 0
            if ext_call.return_data[0] + released[address(arg1)]:
                if 2 * ext_call.return_data[0] + released[address(arg1)] / ext_call.return_data[0] + released[address(arg1)] == 2:
                    return (2 * ext_call.return_data[0] + released[address(arg1)] / 10)
        else:
            if block.timestamp < 437464 * 3600:
                if not ext_call.return_data[0] + released[address(arg1)]:
                    return 0
                if ext_call.return_data[0] + released[address(arg1)]:
                    if (3 * ext_call.return_data[0]) + (3 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 3:
                        return ((3 * ext_call.return_data[0]) + (3 * released[address(arg1)]) / 10)
            else:
                if block.timestamp < 438184 * 3600:
                    if not ext_call.return_data[0] + released[address(arg1)]:
                        return 0
                    if ext_call.return_data[0] + released[address(arg1)]:
                        if 4 * ext_call.return_data[0] + released[address(arg1)] / ext_call.return_data[0] + released[address(arg1)] == 4:
                            return (4 * ext_call.return_data[0] + released[address(arg1)] / 10)
                else:
                    if block.timestamp < 438928 * 3600:
                        if not ext_call.return_data[0] + released[address(arg1)]:
                            return 0
                        if ext_call.return_data[0] + released[address(arg1)]:
                            if (5 * ext_call.return_data[0]) + (5 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 5:
                                return ((5 * ext_call.return_data[0]) + (5 * released[address(arg1)]) / 10)
                    else:
                        if block.timestamp < 439672 * 3600:
                            if not ext_call.return_data[0] + released[address(arg1)]:
                                return 0
                            if ext_call.return_data[0] + released[address(arg1)]:
                                if (6 * ext_call.return_data[0]) + (6 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 6:
                                    return ((6 * ext_call.return_data[0]) + (6 * released[address(arg1)]) / 10)
                        else:
                            if block.timestamp < 440368 * 3600:
                                if not ext_call.return_data[0] + released[address(arg1)]:
                                    return 0
                                if ext_call.return_data[0] + released[address(arg1)]:
                                    if (7 * ext_call.return_data[0]) + (7 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 7:
                                        return ((7 * ext_call.return_data[0]) + (7 * released[address(arg1)]) / 10)
                            else:
                                if block.timestamp < 441112 * 3600:
                                    if not ext_call.return_data[0] + released[address(arg1)]:
                                        return 0
                                    if ext_call.return_data[0] + released[address(arg1)]:
                                        if 8 * ext_call.return_data[0] + released[address(arg1)] / ext_call.return_data[0] + released[address(arg1)] == 8:
                                            return (8 * ext_call.return_data[0] + released[address(arg1)] / 10)
                                else:
                                    if block.timestamp >= 441832 * 3600:
                                        return 0
                                    if not ext_call.return_data[0] + released[address(arg1)]:
                                        return 0
                                    if ext_call.return_data[0] + released[address(arg1)]:
                                        if (9 * ext_call.return_data[0]) + (9 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 9:
                                            return ((9 * ext_call.return_data[0]) + (9 * released[address(arg1)]) / 10)
    revert
}

function releasableAmount(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + released[address(arg1)] >= ext_call.return_data[0]
    if block.timestamp < 435256 * 3600:
        if released[address(arg1)] <= 0:
            return -released[address(arg1)]
    else:
        if block.timestamp >= 441832 * 3600:
            if released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]:
                return ext_call.return_data[0]
        else:
            if stor3[address(arg1)]:
                if released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]:
                    return ext_call.return_data[0]
            else:
                if block.timestamp < 435256 * 3600:
                    if released[address(arg1)] <= 0:
                        return -released[address(arg1)]
                else:
                    if block.timestamp < 436000 * 3600:
                        if not ext_call.return_data[0] + released[address(arg1)]:
                            if released[address(arg1)] <= 0:
                                return -released[address(arg1)]
                        else:
                            if ext_call.return_data[0] + released[address(arg1)]:
                                if ext_call.return_data[0] + released[address(arg1)] / ext_call.return_data[0] + released[address(arg1)] == 1:
                                    if released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)] / 10:
                                        return ((ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)])
                    else:
                        if block.timestamp < 436720 * 3600:
                            if not ext_call.return_data[0] + released[address(arg1)]:
                                if released[address(arg1)] <= 0:
                                    return -released[address(arg1)]
                            else:
                                if ext_call.return_data[0] + released[address(arg1)]:
                                    if 2 * ext_call.return_data[0] + released[address(arg1)] / ext_call.return_data[0] + released[address(arg1)] == 2:
                                        if released[address(arg1)] <= 2 * ext_call.return_data[0] + released[address(arg1)] / 10:
                                            return ((2 * ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)])
                        else:
                            if block.timestamp < 437464 * 3600:
                                if not ext_call.return_data[0] + released[address(arg1)]:
                                    if released[address(arg1)] <= 0:
                                        return -released[address(arg1)]
                                else:
                                    if ext_call.return_data[0] + released[address(arg1)]:
                                        if (3 * ext_call.return_data[0]) + (3 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 3:
                                            if released[address(arg1)] <= (3 * ext_call.return_data[0]) + (3 * released[address(arg1)]) / 10:
                                                return (((3 * ext_call.return_data[0]) + (3 * released[address(arg1)]) / 10) - released[address(arg1)])
                            else:
                                if block.timestamp < 438184 * 3600:
                                    if not ext_call.return_data[0] + released[address(arg1)]:
                                        if released[address(arg1)] <= 0:
                                            return -released[address(arg1)]
                                    else:
                                        if ext_call.return_data[0] + released[address(arg1)]:
                                            if 4 * ext_call.return_data[0] + released[address(arg1)] / ext_call.return_data[0] + released[address(arg1)] == 4:
                                                if released[address(arg1)] <= 4 * ext_call.return_data[0] + released[address(arg1)] / 10:
                                                    return ((4 * ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)])
                                else:
                                    if block.timestamp < 438928 * 3600:
                                        if not ext_call.return_data[0] + released[address(arg1)]:
                                            if released[address(arg1)] <= 0:
                                                return -released[address(arg1)]
                                        else:
                                            if ext_call.return_data[0] + released[address(arg1)]:
                                                if (5 * ext_call.return_data[0]) + (5 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 5:
                                                    if released[address(arg1)] <= (5 * ext_call.return_data[0]) + (5 * released[address(arg1)]) / 10:
                                                        return (((5 * ext_call.return_data[0]) + (5 * released[address(arg1)]) / 10) - released[address(arg1)])
                                    else:
                                        if block.timestamp < 439672 * 3600:
                                            if not ext_call.return_data[0] + released[address(arg1)]:
                                                if released[address(arg1)] <= 0:
                                                    return -released[address(arg1)]
                                            else:
                                                if ext_call.return_data[0] + released[address(arg1)]:
                                                    if (6 * ext_call.return_data[0]) + (6 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 6:
                                                        if released[address(arg1)] <= (6 * ext_call.return_data[0]) + (6 * released[address(arg1)]) / 10:
                                                            return (((6 * ext_call.return_data[0]) + (6 * released[address(arg1)]) / 10) - released[address(arg1)])
                                        else:
                                            if block.timestamp < 440368 * 3600:
                                                if not ext_call.return_data[0] + released[address(arg1)]:
                                                    if released[address(arg1)] <= 0:
                                                        return -released[address(arg1)]
                                                else:
                                                    if ext_call.return_data[0] + released[address(arg1)]:
                                                        if (7 * ext_call.return_data[0]) + (7 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 7:
                                                            if released[address(arg1)] <= (7 * ext_call.return_data[0]) + (7 * released[address(arg1)]) / 10:
                                                                return (((7 * ext_call.return_data[0]) + (7 * released[address(arg1)]) / 10) - released[address(arg1)])
                                            else:
                                                if block.timestamp < 441112 * 3600:
                                                    if not ext_call.return_data[0] + released[address(arg1)]:
                                                        if released[address(arg1)] <= 0:
                                                            return -released[address(arg1)]
                                                    else:
                                                        if ext_call.return_data[0] + released[address(arg1)]:
                                                            if 8 * ext_call.return_data[0] + released[address(arg1)] / ext_call.return_data[0] + released[address(arg1)] == 8:
                                                                if released[address(arg1)] <= 8 * ext_call.return_data[0] + released[address(arg1)] / 10:
                                                                    return ((8 * ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)])
                                                else:
                                                    if block.timestamp >= 441832 * 3600:
                                                        if released[address(arg1)] <= 0:
                                                            return -released[address(arg1)]
                                                    else:
                                                        if not ext_call.return_data[0] + released[address(arg1)]:
                                                            if released[address(arg1)] <= 0:
                                                                return -released[address(arg1)]
                                                        else:
                                                            if ext_call.return_data[0] + released[address(arg1)]:
                                                                if (9 * ext_call.return_data[0]) + (9 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 9:
                                                                    if released[address(arg1)] <= (9 * ext_call.return_data[0]) + (9 * released[address(arg1)]) / 10:
                                                                        return (((9 * ext_call.return_data[0]) + (9 * released[address(arg1)]) / 10) - released[address(arg1)])
    revert
}

function revoke(address arg1) {
    require msg.sender == owner
    require stor1
    require not stor3[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + released[address(arg1)] >= ext_call.return_data[0]
    if block.timestamp < 435256 * 3600:
        require released[address(arg1)] <= 0
        require -released[address(arg1)] <= ext_call.return_data[0]
        stor3[address(arg1)] = 1
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0] + released[address(arg1)]
    else:
        if block.timestamp >= 441832 * 3600:
            require released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]
            require ext_call.return_data[0] <= ext_call.return_data[0]
            stor3[address(arg1)] = 1
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, 0
        else:
            if stor3[address(arg1)]:
                require released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]
                require ext_call.return_data[0] <= ext_call.return_data[0]
                stor3[address(arg1)] = 1
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, 0
            else:
                if block.timestamp < 435256 * 3600:
                    require released[address(arg1)] <= 0
                    require -released[address(arg1)] <= ext_call.return_data[0]
                    stor3[address(arg1)] = 1
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] + released[address(arg1)]
                else:
                    if block.timestamp < 436000 * 3600:
                        if not ext_call.return_data[0] + released[address(arg1)]:
                            require released[address(arg1)] <= 0
                            require -released[address(arg1)] <= ext_call.return_data[0]
                            stor3[address(arg1)] = 1
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, ext_call.return_data[0] + released[address(arg1)]
                        else:
                            require ext_call.return_data[0] + released[address(arg1)]
                            require ext_call.return_data[0] + released[address(arg1)] / ext_call.return_data[0] + released[address(arg1)] == 1
                            require released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)] / 10
                            require (ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)] <= ext_call.return_data[0]
                            stor3[address(arg1)] = 1
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, ext_call.return_data[0] - (ext_call.return_data[0] + released[address(arg1)] / 10) + released[address(arg1)]
                    else:
                        if block.timestamp < 436720 * 3600:
                            if not ext_call.return_data[0] + released[address(arg1)]:
                                require released[address(arg1)] <= 0
                                require -released[address(arg1)] <= ext_call.return_data[0]
                                stor3[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] + released[address(arg1)]
                            else:
                                require ext_call.return_data[0] + released[address(arg1)]
                                require 2 * ext_call.return_data[0] + released[address(arg1)] / ext_call.return_data[0] + released[address(arg1)] == 2
                                require released[address(arg1)] <= 2 * ext_call.return_data[0] + released[address(arg1)] / 10
                                require (2 * ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)] <= ext_call.return_data[0]
                                stor3[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (2 * ext_call.return_data[0] + released[address(arg1)] / 10) + released[address(arg1)]
                        else:
                            if block.timestamp < 437464 * 3600:
                                if not ext_call.return_data[0] + released[address(arg1)]:
                                    require released[address(arg1)] <= 0
                                    require -released[address(arg1)] <= ext_call.return_data[0]
                                    stor3[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] + released[address(arg1)]
                                else:
                                    require ext_call.return_data[0] + released[address(arg1)]
                                    require (3 * ext_call.return_data[0]) + (3 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 3
                                    require released[address(arg1)] <= (3 * ext_call.return_data[0]) + (3 * released[address(arg1)]) / 10
                                    require ((3 * ext_call.return_data[0]) + (3 * released[address(arg1)]) / 10) - released[address(arg1)] <= ext_call.return_data[0]
                                    stor3[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - ((3 * ext_call.return_data[0]) + (3 * released[address(arg1)]) / 10) + released[address(arg1)]
                            else:
                                if block.timestamp < 438184 * 3600:
                                    if not ext_call.return_data[0] + released[address(arg1)]:
                                        require released[address(arg1)] <= 0
                                        require -released[address(arg1)] <= ext_call.return_data[0]
                                        stor3[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] + released[address(arg1)]
                                    else:
                                        require ext_call.return_data[0] + released[address(arg1)]
                                        require 4 * ext_call.return_data[0] + released[address(arg1)] / ext_call.return_data[0] + released[address(arg1)] == 4
                                        require released[address(arg1)] <= 4 * ext_call.return_data[0] + released[address(arg1)] / 10
                                        require (4 * ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)] <= ext_call.return_data[0]
                                        stor3[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (4 * ext_call.return_data[0] + released[address(arg1)] / 10) + released[address(arg1)]
                                else:
                                    if block.timestamp < 438928 * 3600:
                                        if not ext_call.return_data[0] + released[address(arg1)]:
                                            require released[address(arg1)] <= 0
                                            require -released[address(arg1)] <= ext_call.return_data[0]
                                            stor3[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] + released[address(arg1)]
                                        else:
                                            require ext_call.return_data[0] + released[address(arg1)]
                                            require (5 * ext_call.return_data[0]) + (5 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 5
                                            require released[address(arg1)] <= (5 * ext_call.return_data[0]) + (5 * released[address(arg1)]) / 10
                                            require ((5 * ext_call.return_data[0]) + (5 * released[address(arg1)]) / 10) - released[address(arg1)] <= ext_call.return_data[0]
                                            stor3[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - ((5 * ext_call.return_data[0]) + (5 * released[address(arg1)]) / 10) + released[address(arg1)]
                                    else:
                                        if block.timestamp < 439672 * 3600:
                                            if not ext_call.return_data[0] + released[address(arg1)]:
                                                require released[address(arg1)] <= 0
                                                require -released[address(arg1)] <= ext_call.return_data[0]
                                                stor3[address(arg1)] = 1
                                                require ext_code.size(arg1)
                                                call arg1.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, ext_call.return_data[0] + released[address(arg1)]
                                            else:
                                                require ext_call.return_data[0] + released[address(arg1)]
                                                require (6 * ext_call.return_data[0]) + (6 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 6
                                                require released[address(arg1)] <= (6 * ext_call.return_data[0]) + (6 * released[address(arg1)]) / 10
                                                require ((6 * ext_call.return_data[0]) + (6 * released[address(arg1)]) / 10) - released[address(arg1)] <= ext_call.return_data[0]
                                                stor3[address(arg1)] = 1
                                                require ext_code.size(arg1)
                                                call arg1.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, ext_call.return_data[0] - ((6 * ext_call.return_data[0]) + (6 * released[address(arg1)]) / 10) + released[address(arg1)]
                                        else:
                                            if block.timestamp < 440368 * 3600:
                                                if not ext_call.return_data[0] + released[address(arg1)]:
                                                    require released[address(arg1)] <= 0
                                                    require -released[address(arg1)] <= ext_call.return_data[0]
                                                    stor3[address(arg1)] = 1
                                                    require ext_code.size(arg1)
                                                    call arg1.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args owner, ext_call.return_data[0] + released[address(arg1)]
                                                else:
                                                    require ext_call.return_data[0] + released[address(arg1)]
                                                    require (7 * ext_call.return_data[0]) + (7 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 7
                                                    require released[address(arg1)] <= (7 * ext_call.return_data[0]) + (7 * released[address(arg1)]) / 10
                                                    require ((7 * ext_call.return_data[0]) + (7 * released[address(arg1)]) / 10) - released[address(arg1)] <= ext_call.return_data[0]
                                                    stor3[address(arg1)] = 1
                                                    require ext_code.size(arg1)
                                                    call arg1.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args owner, ext_call.return_data[0] - ((7 * ext_call.return_data[0]) + (7 * released[address(arg1)]) / 10) + released[address(arg1)]
                                            else:
                                                if block.timestamp < 441112 * 3600:
                                                    if not ext_call.return_data[0] + released[address(arg1)]:
                                                        require released[address(arg1)] <= 0
                                                        require -released[address(arg1)] <= ext_call.return_data[0]
                                                        stor3[address(arg1)] = 1
                                                        require ext_code.size(arg1)
                                                        call arg1.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args owner, ext_call.return_data[0] + released[address(arg1)]
                                                    else:
                                                        require ext_call.return_data[0] + released[address(arg1)]
                                                        require 8 * ext_call.return_data[0] + released[address(arg1)] / ext_call.return_data[0] + released[address(arg1)] == 8
                                                        require released[address(arg1)] <= 8 * ext_call.return_data[0] + released[address(arg1)] / 10
                                                        require (8 * ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)] <= ext_call.return_data[0]
                                                        stor3[address(arg1)] = 1
                                                        require ext_code.size(arg1)
                                                        call arg1.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args owner, ext_call.return_data[0] - (8 * ext_call.return_data[0] + released[address(arg1)] / 10) + released[address(arg1)]
                                                else:
                                                    if block.timestamp >= 441832 * 3600:
                                                        require released[address(arg1)] <= 0
                                                        require -released[address(arg1)] <= ext_call.return_data[0]
                                                        stor3[address(arg1)] = 1
                                                        require ext_code.size(arg1)
                                                        call arg1.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args owner, ext_call.return_data[0] + released[address(arg1)]
                                                    else:
                                                        if not ext_call.return_data[0] + released[address(arg1)]:
                                                            require released[address(arg1)] <= 0
                                                            require -released[address(arg1)] <= ext_call.return_data[0]
                                                            stor3[address(arg1)] = 1
                                                            require ext_code.size(arg1)
                                                            call arg1.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args owner, ext_call.return_data[0] + released[address(arg1)]
                                                        else:
                                                            require ext_call.return_data[0] + released[address(arg1)]
                                                            require (9 * ext_call.return_data[0]) + (9 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 9
                                                            require released[address(arg1)] <= (9 * ext_call.return_data[0]) + (9 * released[address(arg1)]) / 10
                                                            require ((9 * ext_call.return_data[0]) + (9 * released[address(arg1)]) / 10) - released[address(arg1)] <= ext_call.return_data[0]
                                                            stor3[address(arg1)] = 1
                                                            require ext_code.size(arg1)
                                                            call arg1.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args owner, ext_call.return_data[0] - ((9 * ext_call.return_data[0]) + (9 * released[address(arg1)]) / 10) + released[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Revoked()
}

function release(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + released[address(arg1)] >= ext_call.return_data[0]
    if block.timestamp < 435256 * 3600:
        require released[address(arg1)] <= 0
        require -released[address(arg1)] > 0
        require 0 >= released[address(arg1)]
        released[address(arg1)] = 0
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, -released[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit Released(-released[address(arg1)]);
    else:
        if block.timestamp >= 441832 * 3600:
            require released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]
            require ext_call.return_data[0] > 0
            require released[address(arg1)] + ext_call.return_data[0] >= released[address(arg1)]
            released[address(arg1)] += ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit Released(ext_call.return_data[0]);
        else:
            if stor3[address(arg1)]:
                require released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]
                require ext_call.return_data[0] > 0
                require released[address(arg1)] + ext_call.return_data[0] >= released[address(arg1)]
                released[address(arg1)] += ext_call.return_data[0]
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit Released(ext_call.return_data[0]);
            else:
                if block.timestamp < 435256 * 3600:
                    require released[address(arg1)] <= 0
                    require -released[address(arg1)] > 0
                    require 0 >= released[address(arg1)]
                    released[address(arg1)] = 0
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, -released[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit Released(-released[address(arg1)]);
                else:
                    if block.timestamp < 436000 * 3600:
                        if not ext_call.return_data[0] + released[address(arg1)]:
                            require released[address(arg1)] <= 0
                            require -released[address(arg1)] > 0
                            require 0 >= released[address(arg1)]
                            released[address(arg1)] = 0
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args beneficiaryAddress, -released[address(arg1)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit Released(-released[address(arg1)]);
                        else:
                            require ext_call.return_data[0] + released[address(arg1)]
                            require ext_call.return_data[0] + released[address(arg1)] / ext_call.return_data[0] + released[address(arg1)] == 1
                            require released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)] / 10
                            require (ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)] > 0
                            require ext_call.return_data[0] + released[address(arg1)] / 10 >= released[address(arg1)]
                            released[address(arg1)] = ext_call.return_data[0] + released[address(arg1)] / 10
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args beneficiaryAddress, (ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit Released(((ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)]));
                    else:
                        if block.timestamp < 436720 * 3600:
                            if not ext_call.return_data[0] + released[address(arg1)]:
                                require released[address(arg1)] <= 0
                                require -released[address(arg1)] > 0
                                require 0 >= released[address(arg1)]
                                released[address(arg1)] = 0
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, -released[address(arg1)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(-released[address(arg1)]);
                            else:
                                require ext_call.return_data[0] + released[address(arg1)]
                                require 2 * ext_call.return_data[0] + released[address(arg1)] / ext_call.return_data[0] + released[address(arg1)] == 2
                                require released[address(arg1)] <= 2 * ext_call.return_data[0] + released[address(arg1)] / 10
                                require (2 * ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)] > 0
                                require 2 * ext_call.return_data[0] + released[address(arg1)] / 10 >= released[address(arg1)]
                                released[address(arg1)] = 2 * ext_call.return_data[0] + released[address(arg1)] / 10
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, (2 * ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(((2 * ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)]));
                        else:
                            if block.timestamp < 437464 * 3600:
                                if not ext_call.return_data[0] + released[address(arg1)]:
                                    require released[address(arg1)] <= 0
                                    require -released[address(arg1)] > 0
                                    require 0 >= released[address(arg1)]
                                    released[address(arg1)] = 0
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, -released[address(arg1)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(-released[address(arg1)]);
                                else:
                                    require ext_call.return_data[0] + released[address(arg1)]
                                    require (3 * ext_call.return_data[0]) + (3 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 3
                                    require released[address(arg1)] <= (3 * ext_call.return_data[0]) + (3 * released[address(arg1)]) / 10
                                    require ((3 * ext_call.return_data[0]) + (3 * released[address(arg1)]) / 10) - released[address(arg1)] > 0
                                    require (3 * ext_call.return_data[0]) + (3 * released[address(arg1)]) / 10 >= released[address(arg1)]
                                    released[address(arg1)] = (3 * ext_call.return_data[0]) + (3 * released[address(arg1)]) / 10
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, ((3 * ext_call.return_data[0]) + (3 * released[address(arg1)]) / 10) - released[address(arg1)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((((3 * ext_call.return_data[0]) + (3 * released[address(arg1)]) / 10) - released[address(arg1)]));
                            else:
                                if block.timestamp < 438184 * 3600:
                                    if not ext_call.return_data[0] + released[address(arg1)]:
                                        require released[address(arg1)] <= 0
                                        require -released[address(arg1)] > 0
                                        require 0 >= released[address(arg1)]
                                        released[address(arg1)] = 0
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, -released[address(arg1)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(-released[address(arg1)]);
                                    else:
                                        require ext_call.return_data[0] + released[address(arg1)]
                                        require 4 * ext_call.return_data[0] + released[address(arg1)] / ext_call.return_data[0] + released[address(arg1)] == 4
                                        require released[address(arg1)] <= 4 * ext_call.return_data[0] + released[address(arg1)] / 10
                                        require (4 * ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)] > 0
                                        require 4 * ext_call.return_data[0] + released[address(arg1)] / 10 >= released[address(arg1)]
                                        released[address(arg1)] = 4 * ext_call.return_data[0] + released[address(arg1)] / 10
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, (4 * ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(((4 * ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)]));
                                else:
                                    if block.timestamp < 438928 * 3600:
                                        if not ext_call.return_data[0] + released[address(arg1)]:
                                            require released[address(arg1)] <= 0
                                            require -released[address(arg1)] > 0
                                            require 0 >= released[address(arg1)]
                                            released[address(arg1)] = 0
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, -released[address(arg1)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(-released[address(arg1)]);
                                        else:
                                            require ext_call.return_data[0] + released[address(arg1)]
                                            require (5 * ext_call.return_data[0]) + (5 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 5
                                            require released[address(arg1)] <= (5 * ext_call.return_data[0]) + (5 * released[address(arg1)]) / 10
                                            require ((5 * ext_call.return_data[0]) + (5 * released[address(arg1)]) / 10) - released[address(arg1)] > 0
                                            require (5 * ext_call.return_data[0]) + (5 * released[address(arg1)]) / 10 >= released[address(arg1)]
                                            released[address(arg1)] = (5 * ext_call.return_data[0]) + (5 * released[address(arg1)]) / 10
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, ((5 * ext_call.return_data[0]) + (5 * released[address(arg1)]) / 10) - released[address(arg1)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((((5 * ext_call.return_data[0]) + (5 * released[address(arg1)]) / 10) - released[address(arg1)]));
                                    else:
                                        if block.timestamp < 439672 * 3600:
                                            if not ext_call.return_data[0] + released[address(arg1)]:
                                                require released[address(arg1)] <= 0
                                                require -released[address(arg1)] > 0
                                                require 0 >= released[address(arg1)]
                                                released[address(arg1)] = 0
                                                require ext_code.size(arg1)
                                                call arg1.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args beneficiaryAddress, -released[address(arg1)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit Released(-released[address(arg1)]);
                                            else:
                                                require ext_call.return_data[0] + released[address(arg1)]
                                                require (6 * ext_call.return_data[0]) + (6 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 6
                                                require released[address(arg1)] <= (6 * ext_call.return_data[0]) + (6 * released[address(arg1)]) / 10
                                                require ((6 * ext_call.return_data[0]) + (6 * released[address(arg1)]) / 10) - released[address(arg1)] > 0
                                                require (6 * ext_call.return_data[0]) + (6 * released[address(arg1)]) / 10 >= released[address(arg1)]
                                                released[address(arg1)] = (6 * ext_call.return_data[0]) + (6 * released[address(arg1)]) / 10
                                                require ext_code.size(arg1)
                                                call arg1.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args beneficiaryAddress, ((6 * ext_call.return_data[0]) + (6 * released[address(arg1)]) / 10) - released[address(arg1)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit Released((((6 * ext_call.return_data[0]) + (6 * released[address(arg1)]) / 10) - released[address(arg1)]));
                                        else:
                                            if block.timestamp < 440368 * 3600:
                                                if not ext_call.return_data[0] + released[address(arg1)]:
                                                    require released[address(arg1)] <= 0
                                                    require -released[address(arg1)] > 0
                                                    require 0 >= released[address(arg1)]
                                                    released[address(arg1)] = 0
                                                    require ext_code.size(arg1)
                                                    call arg1.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args beneficiaryAddress, -released[address(arg1)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0]
                                                    emit Released(-released[address(arg1)]);
                                                else:
                                                    require ext_call.return_data[0] + released[address(arg1)]
                                                    require (7 * ext_call.return_data[0]) + (7 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 7
                                                    require released[address(arg1)] <= (7 * ext_call.return_data[0]) + (7 * released[address(arg1)]) / 10
                                                    require ((7 * ext_call.return_data[0]) + (7 * released[address(arg1)]) / 10) - released[address(arg1)] > 0
                                                    require (7 * ext_call.return_data[0]) + (7 * released[address(arg1)]) / 10 >= released[address(arg1)]
                                                    released[address(arg1)] = (7 * ext_call.return_data[0]) + (7 * released[address(arg1)]) / 10
                                                    require ext_code.size(arg1)
                                                    call arg1.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args beneficiaryAddress, ((7 * ext_call.return_data[0]) + (7 * released[address(arg1)]) / 10) - released[address(arg1)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0]
                                                    emit Released((((7 * ext_call.return_data[0]) + (7 * released[address(arg1)]) / 10) - released[address(arg1)]));
                                            else:
                                                if block.timestamp < 441112 * 3600:
                                                    if not ext_call.return_data[0] + released[address(arg1)]:
                                                        require released[address(arg1)] <= 0
                                                        require -released[address(arg1)] > 0
                                                        require 0 >= released[address(arg1)]
                                                        released[address(arg1)] = 0
                                                        require ext_code.size(arg1)
                                                        call arg1.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args beneficiaryAddress, -released[address(arg1)]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0]
                                                        emit Released(-released[address(arg1)]);
                                                    else:
                                                        require ext_call.return_data[0] + released[address(arg1)]
                                                        require 8 * ext_call.return_data[0] + released[address(arg1)] / ext_call.return_data[0] + released[address(arg1)] == 8
                                                        require released[address(arg1)] <= 8 * ext_call.return_data[0] + released[address(arg1)] / 10
                                                        require (8 * ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)] > 0
                                                        require 8 * ext_call.return_data[0] + released[address(arg1)] / 10 >= released[address(arg1)]
                                                        released[address(arg1)] = 8 * ext_call.return_data[0] + released[address(arg1)] / 10
                                                        require ext_code.size(arg1)
                                                        call arg1.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args beneficiaryAddress, (8 * ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0]
                                                        emit Released(((8 * ext_call.return_data[0] + released[address(arg1)] / 10) - released[address(arg1)]));
                                                else:
                                                    if block.timestamp >= 441832 * 3600:
                                                        require released[address(arg1)] <= 0
                                                        require -released[address(arg1)] > 0
                                                        require 0 >= released[address(arg1)]
                                                        released[address(arg1)] = 0
                                                        require ext_code.size(arg1)
                                                        call arg1.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args beneficiaryAddress, -released[address(arg1)]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0]
                                                        emit Released(-released[address(arg1)]);
                                                    else:
                                                        if not ext_call.return_data[0] + released[address(arg1)]:
                                                            require released[address(arg1)] <= 0
                                                            require -released[address(arg1)] > 0
                                                            require 0 >= released[address(arg1)]
                                                            released[address(arg1)] = 0
                                                            require ext_code.size(arg1)
                                                            call arg1.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args beneficiaryAddress, -released[address(arg1)]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0]
                                                            emit Released(-released[address(arg1)]);
                                                        else:
                                                            require ext_call.return_data[0] + released[address(arg1)]
                                                            require (9 * ext_call.return_data[0]) + (9 * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == 9
                                                            require released[address(arg1)] <= (9 * ext_call.return_data[0]) + (9 * released[address(arg1)]) / 10
                                                            require ((9 * ext_call.return_data[0]) + (9 * released[address(arg1)]) / 10) - released[address(arg1)] > 0
                                                            require (9 * ext_call.return_data[0]) + (9 * released[address(arg1)]) / 10 >= released[address(arg1)]
                                                            released[address(arg1)] = (9 * ext_call.return_data[0]) + (9 * released[address(arg1)]) / 10
                                                            require ext_code.size(arg1)
                                                            call arg1.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args beneficiaryAddress, ((9 * ext_call.return_data[0]) + (9 * released[address(arg1)]) / 10) - released[address(arg1)]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0]
                                                            emit Released((((9 * ext_call.return_data[0]) + (9 * released[address(arg1)]) / 10) - released[address(arg1)]));
}



}
