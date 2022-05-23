contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 start;
uint256 teamTimeLock;
uint256 sub_71d4975e;
uint256 sub_c98257fb;
uint256 sub_a32af4d0;
uint256 fiveReserveTimeLock;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
mapping of uint256 released;
mapping of uint8 stor15;

function teamTimeLock() {
    return teamTimeLock
}

function sub_71d4975e(?) {
    return sub_71d4975e
}

function owner() {
    return owner
}

function released(address arg1) {
    return released[arg1]
}

function sub_a32af4d0(?) {
    return sub_a32af4d0
}

function start() {
    return start
}

function fiveReserveTimeLock() {
    return fiveReserveTimeLock
}

function sub_c98257fb(?) {
    return sub_c98257fb
}

function revoked(address arg1) {
    return bool(stor15[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function vestedAmount(address arg1) {
    if not stor13:
        require stor12
        if not stor13:
            require stor12
            if not stor13:
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor13:
                            return 0
                    else:
                        if block.timestamp < sub_c98257fb:
                            require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (0 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                        else:
                            if block.timestamp < sub_a32af4d0:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                require 2 * 0 / stor12 >= 0 / stor12
                                if (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                    return 0
                            else:
                                if block.timestamp >= fiveReserveTimeLock:
                                    return ext_call.return_data[0]
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                require 2 * 0 / stor12 >= 0 / stor12
                                require 3 * 0 / stor12 >= 2 * 0 / stor12
                                if (3 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                    return 0
                    return (0 / stor12)
                require stor11 * stor13 / stor13 == stor11
                require stor12
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp < sub_c98257fb:
                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (0 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp < sub_a32af4d0:
                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require 2 * 0 / stor12 >= 0 / stor12
                    if (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                require 2 * 0 / stor12 >= 0 / stor12
                require 3 * 0 / stor12 >= 2 * 0 / stor12
                if (3 * 0 / stor12) + ext_call.return_data[0] != stor13:
                    return 0
            else:
                require stor10 * stor13 / stor13 == stor10
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor13:
                            return 0
                    else:
                        if block.timestamp < sub_c98257fb:
                            require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (0 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                        else:
                            if block.timestamp < sub_a32af4d0:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                require 2 * 0 / stor12 >= 0 / stor12
                                if (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                    return 0
                                return (stor10 * stor13 / stor12)
                            if block.timestamp >= fiveReserveTimeLock:
                                return ext_call.return_data[0]
                            require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require 2 * 0 / stor12 >= 0 / stor12
                            require stor10 * stor13 / stor12 >= 0
                            if (stor10 * stor13 / stor12) + (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                    return (0 / stor12)
                require stor11 * stor13 / stor13 == stor11
                require stor12
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp < sub_c98257fb:
                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (0 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp < sub_a32af4d0:
                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require 2 * 0 / stor12 >= 0 / stor12
                    if (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (stor10 * stor13 / stor12)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                require 2 * 0 / stor12 >= 0 / stor12
                require stor10 * stor13 / stor12 >= 0
                if (stor10 * stor13 / stor12) + (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                    return 0
        else:
            require stor9 * stor13 / stor13 == stor9
            require stor12
            if not stor13:
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor13:
                            return 0
                    else:
                        if block.timestamp < sub_c98257fb:
                            require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (0 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                            return (stor9 * stor13 / stor12)
                        if block.timestamp < sub_a32af4d0:
                            require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require stor9 * stor13 / stor12 >= 0
                            if (stor9 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                        else:
                            if block.timestamp >= fiveReserveTimeLock:
                                return ext_call.return_data[0]
                            require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require 0 / stor12 >= 0
                            require 2 * 0 / stor12 >= 0 / stor12
                            if (2 * 0 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                    return (0 / stor12)
                require stor11 * stor13 / stor13 == stor11
                require stor12
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp < sub_c98257fb:
                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (0 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (stor9 * stor13 / stor12)
                if block.timestamp < sub_a32af4d0:
                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor9 * stor13 / stor12 >= 0
                    if (stor9 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                require 0 / stor12 >= 0
                require 2 * 0 / stor12 >= 0 / stor12
                if (2 * 0 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                    return 0
            else:
                require stor10 * stor13 / stor13 == stor10
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor13:
                            return 0
                    else:
                        if block.timestamp < sub_c98257fb:
                            require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (0 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                            return (stor9 * stor13 / stor12)
                        if block.timestamp < sub_a32af4d0:
                            require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require stor9 * stor13 / stor12 >= 0
                            if (stor9 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                            return (stor10 * stor13 / stor12)
                        if block.timestamp >= fiveReserveTimeLock:
                            return ext_call.return_data[0]
                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require 0 / stor12 >= 0
                        require stor10 * stor13 / stor12 >= 0
                        if (stor10 * stor13 / stor12) + (0 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                    return (0 / stor12)
                require stor11 * stor13 / stor13 == stor11
                require stor12
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp < sub_c98257fb:
                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (0 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (stor9 * stor13 / stor12)
                if block.timestamp < sub_a32af4d0:
                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor9 * stor13 / stor12 >= 0
                    if (stor9 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (stor10 * stor13 / stor12)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                require 0 / stor12 >= 0
                require stor10 * stor13 / stor12 >= 0
                if (stor10 * stor13 / stor12) + (0 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                    return 0
    else:
        require stor8 * stor13 / stor13 == stor8
        require stor12
        if not stor13:
            require stor12
            if not stor13:
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor13:
                            return 0
                        return (stor8 * stor13 / stor12)
                    if block.timestamp < sub_c98257fb:
                        require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                    else:
                        if block.timestamp < sub_a32af4d0:
                            require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require 0 / stor12 >= 0
                            if (0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                        else:
                            if block.timestamp >= fiveReserveTimeLock:
                                return ext_call.return_data[0]
                            require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require stor8 * stor13 / stor12 >= 0
                            require 2 * 0 / stor12 >= 0 / stor12
                            if (2 * 0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                    return (0 / stor12)
                require stor11 * stor13 / stor13 == stor11
                require stor12
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor13:
                        return 0
                    return (stor8 * stor13 / stor12)
                if block.timestamp < sub_c98257fb:
                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp < sub_a32af4d0:
                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require 0 / stor12 >= 0
                    if (0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                require stor8 * stor13 / stor12 >= 0
                require 2 * 0 / stor12 >= 0 / stor12
                if (2 * 0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                    return 0
            else:
                require stor10 * stor13 / stor13 == stor10
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor13:
                            return 0
                        return (stor8 * stor13 / stor12)
                    if block.timestamp < sub_c98257fb:
                        require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                    else:
                        if block.timestamp < sub_a32af4d0:
                            require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require 0 / stor12 >= 0
                            if (0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                            return (stor10 * stor13 / stor12)
                        if block.timestamp >= fiveReserveTimeLock:
                            return ext_call.return_data[0]
                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require stor8 * stor13 / stor12 >= 0
                        require stor10 * stor13 / stor12 >= 0
                        if (stor10 * stor13 / stor12) + (stor8 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                    return (0 / stor12)
                require stor11 * stor13 / stor13 == stor11
                require stor12
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor13:
                        return 0
                    return (stor8 * stor13 / stor12)
                if block.timestamp < sub_c98257fb:
                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp < sub_a32af4d0:
                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require 0 / stor12 >= 0
                    if (0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (stor10 * stor13 / stor12)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                require stor8 * stor13 / stor12 >= 0
                require stor10 * stor13 / stor12 >= 0
                if (stor10 * stor13 / stor12) + (stor8 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                    return 0
        else:
            require stor9 * stor13 / stor13 == stor9
            require stor12
            if not stor13:
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor13:
                            return 0
                        return (stor8 * stor13 / stor12)
                    if block.timestamp < sub_c98257fb:
                        require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                        return (stor9 * stor13 / stor12)
                    if block.timestamp < sub_a32af4d0:
                        require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require stor9 * stor13 / stor12 >= 0
                        if (stor9 * stor13 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                    else:
                        if block.timestamp >= fiveReserveTimeLock:
                            return ext_call.return_data[0]
                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require stor8 * stor13 / stor12 >= 0
                        require 0 / stor12 >= 0
                        if (0 / stor12) + (stor8 * stor13 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                    return (0 / stor12)
                require stor11 * stor13 / stor13 == stor11
                require stor12
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor13:
                        return 0
                    return (stor8 * stor13 / stor12)
                if block.timestamp < sub_c98257fb:
                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (stor9 * stor13 / stor12)
                if block.timestamp < sub_a32af4d0:
                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor9 * stor13 / stor12 >= 0
                    if (stor9 * stor13 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                require stor8 * stor13 / stor12 >= 0
                require 0 / stor12 >= 0
                if (0 / stor12) + (stor8 * stor13 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                    return 0
            else:
                require stor10 * stor13 / stor13 == stor10
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor13:
                            return 0
                        return (stor8 * stor13 / stor12)
                    if block.timestamp < sub_c98257fb:
                        require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                        return (stor9 * stor13 / stor12)
                    if block.timestamp < sub_a32af4d0:
                        require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require stor9 * stor13 / stor12 >= 0
                        if (stor9 * stor13 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                        return (stor10 * stor13 / stor12)
                    if block.timestamp >= fiveReserveTimeLock:
                        return ext_call.return_data[0]
                    require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor8 * stor13 / stor12 >= 0
                    require stor10 * stor13 / stor12 >= 0
                    if (stor10 * stor13 / stor12) + (stor8 * stor13 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                require stor11 * stor13 / stor13 == stor11
                require stor12
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor13:
                        return 0
                    return (stor8 * stor13 / stor12)
                if block.timestamp < sub_c98257fb:
                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (stor9 * stor13 / stor12)
                if block.timestamp < sub_a32af4d0:
                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor9 * stor13 / stor12 >= 0
                    if (stor9 * stor13 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (stor10 * stor13 / stor12)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                require stor8 * stor13 / stor12 >= 0
                require stor10 * stor13 / stor12 >= 0
                if (stor10 * stor13 / stor12) + (stor8 * stor13 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                    return 0
    return (stor11 * stor13 / stor12)
}

function releasableAmount(address arg1) {
    if not stor13:
        require stor12
        if not stor13:
            require stor12
            if not stor13:
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor13:
                            return 0
                    else:
                        if block.timestamp < sub_c98257fb:
                            require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (0 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                        else:
                            if block.timestamp < sub_a32af4d0:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                require 2 * 0 / stor12 >= 0 / stor12
                                if (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                    return 0
                            else:
                                if block.timestamp >= fiveReserveTimeLock:
                                    return ext_call.return_data[0]
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                require 2 * 0 / stor12 >= 0 / stor12
                                require 3 * 0 / stor12 >= 2 * 0 / stor12
                                if (3 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                    return 0
                    return (0 / stor12)
                require stor11 * stor13 / stor13 == stor11
                require stor12
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp < sub_c98257fb:
                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (0 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp < sub_a32af4d0:
                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require 2 * 0 / stor12 >= 0 / stor12
                    if (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                require 2 * 0 / stor12 >= 0 / stor12
                require 3 * 0 / stor12 >= 2 * 0 / stor12
                if (3 * 0 / stor12) + ext_call.return_data[0] != stor13:
                    return 0
            else:
                require stor10 * stor13 / stor13 == stor10
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor13:
                            return 0
                    else:
                        if block.timestamp < sub_c98257fb:
                            require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (0 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                        else:
                            if block.timestamp < sub_a32af4d0:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                require 2 * 0 / stor12 >= 0 / stor12
                                if (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                    return 0
                                return (stor10 * stor13 / stor12)
                            if block.timestamp >= fiveReserveTimeLock:
                                return ext_call.return_data[0]
                            require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require 2 * 0 / stor12 >= 0 / stor12
                            require stor10 * stor13 / stor12 >= 0
                            if (stor10 * stor13 / stor12) + (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                    return (0 / stor12)
                require stor11 * stor13 / stor13 == stor11
                require stor12
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp < sub_c98257fb:
                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (0 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp < sub_a32af4d0:
                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require 2 * 0 / stor12 >= 0 / stor12
                    if (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (stor10 * stor13 / stor12)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                require 2 * 0 / stor12 >= 0 / stor12
                require stor10 * stor13 / stor12 >= 0
                if (stor10 * stor13 / stor12) + (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                    return 0
        else:
            require stor9 * stor13 / stor13 == stor9
            require stor12
            if not stor13:
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor13:
                            return 0
                    else:
                        if block.timestamp < sub_c98257fb:
                            require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (0 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                            return (stor9 * stor13 / stor12)
                        if block.timestamp < sub_a32af4d0:
                            require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require stor9 * stor13 / stor12 >= 0
                            if (stor9 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                        else:
                            if block.timestamp >= fiveReserveTimeLock:
                                return ext_call.return_data[0]
                            require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require 0 / stor12 >= 0
                            require 2 * 0 / stor12 >= 0 / stor12
                            if (2 * 0 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                    return (0 / stor12)
                require stor11 * stor13 / stor13 == stor11
                require stor12
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp < sub_c98257fb:
                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (0 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (stor9 * stor13 / stor12)
                if block.timestamp < sub_a32af4d0:
                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor9 * stor13 / stor12 >= 0
                    if (stor9 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                require 0 / stor12 >= 0
                require 2 * 0 / stor12 >= 0 / stor12
                if (2 * 0 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                    return 0
            else:
                require stor10 * stor13 / stor13 == stor10
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor13:
                            return 0
                    else:
                        if block.timestamp < sub_c98257fb:
                            require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (0 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                            return (stor9 * stor13 / stor12)
                        if block.timestamp < sub_a32af4d0:
                            require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require stor9 * stor13 / stor12 >= 0
                            if (stor9 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                            return (stor10 * stor13 / stor12)
                        if block.timestamp >= fiveReserveTimeLock:
                            return ext_call.return_data[0]
                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require 0 / stor12 >= 0
                        require stor10 * stor13 / stor12 >= 0
                        if (stor10 * stor13 / stor12) + (0 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                    return (0 / stor12)
                require stor11 * stor13 / stor13 == stor11
                require stor12
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp < sub_c98257fb:
                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (0 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (stor9 * stor13 / stor12)
                if block.timestamp < sub_a32af4d0:
                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor9 * stor13 / stor12 >= 0
                    if (stor9 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (stor10 * stor13 / stor12)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                require 0 / stor12 >= 0
                require stor10 * stor13 / stor12 >= 0
                if (stor10 * stor13 / stor12) + (0 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                    return 0
    else:
        require stor8 * stor13 / stor13 == stor8
        require stor12
        if not stor13:
            require stor12
            if not stor13:
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor13:
                            return 0
                        return (stor8 * stor13 / stor12)
                    if block.timestamp < sub_c98257fb:
                        require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                    else:
                        if block.timestamp < sub_a32af4d0:
                            require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require 0 / stor12 >= 0
                            if (0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                        else:
                            if block.timestamp >= fiveReserveTimeLock:
                                return ext_call.return_data[0]
                            require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require stor8 * stor13 / stor12 >= 0
                            require 2 * 0 / stor12 >= 0 / stor12
                            if (2 * 0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                    return (0 / stor12)
                require stor11 * stor13 / stor13 == stor11
                require stor12
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor13:
                        return 0
                    return (stor8 * stor13 / stor12)
                if block.timestamp < sub_c98257fb:
                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp < sub_a32af4d0:
                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require 0 / stor12 >= 0
                    if (0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                require stor8 * stor13 / stor12 >= 0
                require 2 * 0 / stor12 >= 0 / stor12
                if (2 * 0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                    return 0
            else:
                require stor10 * stor13 / stor13 == stor10
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor13:
                            return 0
                        return (stor8 * stor13 / stor12)
                    if block.timestamp < sub_c98257fb:
                        require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                    else:
                        if block.timestamp < sub_a32af4d0:
                            require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require 0 / stor12 >= 0
                            if (0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                return 0
                            return (stor10 * stor13 / stor12)
                        if block.timestamp >= fiveReserveTimeLock:
                            return ext_call.return_data[0]
                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require stor8 * stor13 / stor12 >= 0
                        require stor10 * stor13 / stor12 >= 0
                        if (stor10 * stor13 / stor12) + (stor8 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                    return (0 / stor12)
                require stor11 * stor13 / stor13 == stor11
                require stor12
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor13:
                        return 0
                    return (stor8 * stor13 / stor12)
                if block.timestamp < sub_c98257fb:
                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp < sub_a32af4d0:
                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require 0 / stor12 >= 0
                    if (0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (stor10 * stor13 / stor12)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                require stor8 * stor13 / stor12 >= 0
                require stor10 * stor13 / stor12 >= 0
                if (stor10 * stor13 / stor12) + (stor8 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                    return 0
        else:
            require stor9 * stor13 / stor13 == stor9
            require stor12
            if not stor13:
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor13:
                            return 0
                        return (stor8 * stor13 / stor12)
                    if block.timestamp < sub_c98257fb:
                        require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                        return (stor9 * stor13 / stor12)
                    if block.timestamp < sub_a32af4d0:
                        require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require stor9 * stor13 / stor12 >= 0
                        if (stor9 * stor13 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                    else:
                        if block.timestamp >= fiveReserveTimeLock:
                            return ext_call.return_data[0]
                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require stor8 * stor13 / stor12 >= 0
                        require 0 / stor12 >= 0
                        if (0 / stor12) + (stor8 * stor13 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                    return (0 / stor12)
                require stor11 * stor13 / stor13 == stor11
                require stor12
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor13:
                        return 0
                    return (stor8 * stor13 / stor12)
                if block.timestamp < sub_c98257fb:
                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (stor9 * stor13 / stor12)
                if block.timestamp < sub_a32af4d0:
                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor9 * stor13 / stor12 >= 0
                    if (stor9 * stor13 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                require stor8 * stor13 / stor12 >= 0
                require 0 / stor12 >= 0
                if (0 / stor12) + (stor8 * stor13 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                    return 0
            else:
                require stor10 * stor13 / stor13 == stor10
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor13:
                            return 0
                        return (stor8 * stor13 / stor12)
                    if block.timestamp < sub_c98257fb:
                        require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                        return (stor9 * stor13 / stor12)
                    if block.timestamp < sub_a32af4d0:
                        require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require stor9 * stor13 / stor12 >= 0
                        if (stor9 * stor13 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                            return 0
                        return (stor10 * stor13 / stor12)
                    if block.timestamp >= fiveReserveTimeLock:
                        return ext_call.return_data[0]
                    require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor8 * stor13 / stor12 >= 0
                    require stor10 * stor13 / stor12 >= 0
                    if (stor10 * stor13 / stor12) + (stor8 * stor13 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (0 / stor12)
                require stor11 * stor13 / stor13 == stor11
                require stor12
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor13:
                        return 0
                    return (stor8 * stor13 / stor12)
                if block.timestamp < sub_c98257fb:
                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (stor9 * stor13 / stor12)
                if block.timestamp < sub_a32af4d0:
                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor9 * stor13 / stor12 >= 0
                    if (stor9 * stor13 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                        return 0
                    return (stor10 * stor13 / stor12)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                require stor8 * stor13 / stor12 >= 0
                require stor10 * stor13 / stor12 >= 0
                if (stor10 * stor13 / stor12) + (stor8 * stor13 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                    return 0
    return (stor11 * stor13 / stor12)
}

function revoke(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor13:
        require stor12
        if not stor13:
            require stor12
            if not stor13:
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor15[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require 0 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require 0 / stor12 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (0 / stor12)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor12) + ext_call.return_data[0] != stor13:
                                    require 0 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require 0 / stor12 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor12)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * 0 / stor12 >= 0 / stor12
                                    if (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                        require 0 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require 0 / stor12 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (0 / stor12)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 2 * 0 / stor12 >= 0 / stor12
                                        require 3 * 0 / stor12 >= 2 * 0 / stor12
                                        if (3 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                            require 0 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require 0 / stor12 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (0 / stor12)
                else:
                    require stor11 * stor13 / stor13 == stor11
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor15[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require 0 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require 0 / stor12 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (0 / stor12)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor12) + ext_call.return_data[0] != stor13:
                                    require 0 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require 0 / stor12 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor12)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * 0 / stor12 >= 0 / stor12
                                    if (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                        require 0 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require 0 / stor12 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (0 / stor12)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 2 * 0 / stor12 >= 0 / stor12
                                        require 3 * 0 / stor12 >= 2 * 0 / stor12
                                        if (3 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                            require 0 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require stor11 * stor13 / stor12 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (stor11 * stor13 / stor12)
            else:
                require stor10 * stor13 / stor13 == stor10
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor15[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require 0 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require 0 / stor12 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (0 / stor12)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor12) + ext_call.return_data[0] != stor13:
                                    require 0 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require 0 / stor12 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor12)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * 0 / stor12 >= 0 / stor12
                                    if (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                        require 0 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require stor10 * stor13 / stor12 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (stor10 * stor13 / stor12)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 2 * 0 / stor12 >= 0 / stor12
                                        require stor10 * stor13 / stor12 >= 0
                                        if (stor10 * stor13 / stor12) + (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                            require 0 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require 0 / stor12 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (0 / stor12)
                else:
                    require stor11 * stor13 / stor13 == stor11
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor15[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require 0 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require 0 / stor12 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (0 / stor12)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor12) + ext_call.return_data[0] != stor13:
                                    require 0 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require 0 / stor12 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor12)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * 0 / stor12 >= 0 / stor12
                                    if (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                        require 0 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require stor10 * stor13 / stor12 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (stor10 * stor13 / stor12)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 2 * 0 / stor12 >= 0 / stor12
                                        require stor10 * stor13 / stor12 >= 0
                                        if (stor10 * stor13 / stor12) + (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                            require 0 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require stor11 * stor13 / stor12 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (stor11 * stor13 / stor12)
        else:
            require stor9 * stor13 / stor13 == stor9
            require stor12
            if not stor13:
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor15[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require 0 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require 0 / stor12 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (0 / stor12)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor12) + ext_call.return_data[0] != stor13:
                                    require 0 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require stor9 * stor13 / stor12 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (stor9 * stor13 / stor12)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor9 * stor13 / stor12 >= 0
                                    if (stor9 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                                        require 0 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require 0 / stor12 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (0 / stor12)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 0 / stor12 >= 0
                                        require 2 * 0 / stor12 >= 0 / stor12
                                        if (2 * 0 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require 0 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require 0 / stor12 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (0 / stor12)
                else:
                    require stor11 * stor13 / stor13 == stor11
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor15[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require 0 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require 0 / stor12 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (0 / stor12)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor12) + ext_call.return_data[0] != stor13:
                                    require 0 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require stor9 * stor13 / stor12 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (stor9 * stor13 / stor12)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor9 * stor13 / stor12 >= 0
                                    if (stor9 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                                        require 0 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require 0 / stor12 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (0 / stor12)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 0 / stor12 >= 0
                                        require 2 * 0 / stor12 >= 0 / stor12
                                        if (2 * 0 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require 0 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require stor11 * stor13 / stor12 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (stor11 * stor13 / stor12)
            else:
                require stor10 * stor13 / stor13 == stor10
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor15[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require 0 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require 0 / stor12 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (0 / stor12)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor12) + ext_call.return_data[0] != stor13:
                                    require 0 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require stor9 * stor13 / stor12 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (stor9 * stor13 / stor12)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor9 * stor13 / stor12 >= 0
                                    if (stor9 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                                        require 0 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require stor10 * stor13 / stor12 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (stor10 * stor13 / stor12)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 0 / stor12 >= 0
                                        require stor10 * stor13 / stor12 >= 0
                                        if (stor10 * stor13 / stor12) + (0 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require 0 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require 0 / stor12 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (0 / stor12)
                else:
                    require stor11 * stor13 / stor13 == stor11
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor15[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require 0 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require 0 / stor12 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (0 / stor12)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor12) + ext_call.return_data[0] != stor13:
                                    require 0 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require stor9 * stor13 / stor12 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (stor9 * stor13 / stor12)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor9 * stor13 / stor12 >= 0
                                    if (stor9 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                                        require 0 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require stor10 * stor13 / stor12 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (stor10 * stor13 / stor12)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 0 / stor12 >= 0
                                        require stor10 * stor13 / stor12 >= 0
                                        if (stor10 * stor13 / stor12) + (0 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require 0 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require stor11 * stor13 / stor12 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (stor11 * stor13 / stor12)
    else:
        require stor8 * stor13 / stor13 == stor8
        require stor12
        if not stor13:
            require stor12
            if not stor13:
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor15[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require 0 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require stor8 * stor13 / stor12 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (stor8 * stor13 / stor12)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                    require 0 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require 0 / stor12 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor12)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 0 / stor12 >= 0
                                    if (0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                        require 0 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require 0 / stor12 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (0 / stor12)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor8 * stor13 / stor12 >= 0
                                        require 2 * 0 / stor12 >= 0 / stor12
                                        if (2 * 0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require 0 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require 0 / stor12 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (0 / stor12)
                else:
                    require stor11 * stor13 / stor13 == stor11
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor15[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require 0 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require stor8 * stor13 / stor12 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (stor8 * stor13 / stor12)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                    require 0 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require 0 / stor12 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor12)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 0 / stor12 >= 0
                                    if (0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                        require 0 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require 0 / stor12 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (0 / stor12)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor8 * stor13 / stor12 >= 0
                                        require 2 * 0 / stor12 >= 0 / stor12
                                        if (2 * 0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require 0 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require stor11 * stor13 / stor12 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (stor11 * stor13 / stor12)
            else:
                require stor10 * stor13 / stor13 == stor10
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor15[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require 0 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require stor8 * stor13 / stor12 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (stor8 * stor13 / stor12)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                    require 0 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require 0 / stor12 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor12)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 0 / stor12 >= 0
                                    if (0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                        require 0 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require stor10 * stor13 / stor12 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (stor10 * stor13 / stor12)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor8 * stor13 / stor12 >= 0
                                        require stor10 * stor13 / stor12 >= 0
                                        if (stor10 * stor13 / stor12) + (stor8 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                                            require 0 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require 0 / stor12 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (0 / stor12)
                else:
                    require stor11 * stor13 / stor13 == stor11
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor15[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require 0 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require stor8 * stor13 / stor12 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (stor8 * stor13 / stor12)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                    require 0 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require 0 / stor12 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor12)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 0 / stor12 >= 0
                                    if (0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                        require 0 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require stor10 * stor13 / stor12 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (stor10 * stor13 / stor12)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor8 * stor13 / stor12 >= 0
                                        require stor10 * stor13 / stor12 >= 0
                                        if (stor10 * stor13 / stor12) + (stor8 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                                            require 0 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require stor11 * stor13 / stor12 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (stor11 * stor13 / stor12)
        else:
            require stor9 * stor13 / stor13 == stor9
            require stor12
            if not stor13:
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor15[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require 0 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require stor8 * stor13 / stor12 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (stor8 * stor13 / stor12)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                    require 0 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require stor9 * stor13 / stor12 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (stor9 * stor13 / stor12)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor9 * stor13 / stor12 >= 0
                                    if (stor9 * stor13 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                        require 0 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require 0 / stor12 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (0 / stor12)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor8 * stor13 / stor12 >= 0
                                        require 0 / stor12 >= 0
                                        if (0 / stor12) + (stor8 * stor13 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require 0 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require 0 / stor12 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (0 / stor12)
                else:
                    require stor11 * stor13 / stor13 == stor11
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor15[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require 0 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require stor8 * stor13 / stor12 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (stor8 * stor13 / stor12)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                    require 0 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require stor9 * stor13 / stor12 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (stor9 * stor13 / stor12)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor9 * stor13 / stor12 >= 0
                                    if (stor9 * stor13 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                        require 0 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require 0 / stor12 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (0 / stor12)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor8 * stor13 / stor12 >= 0
                                        require 0 / stor12 >= 0
                                        if (0 / stor12) + (stor8 * stor13 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require 0 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require stor11 * stor13 / stor12 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (stor11 * stor13 / stor12)
            else:
                require stor10 * stor13 / stor13 == stor10
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor15[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require 0 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require stor8 * stor13 / stor12 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (stor8 * stor13 / stor12)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                    require 0 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require stor9 * stor13 / stor12 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (stor9 * stor13 / stor12)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor9 * stor13 / stor12 >= 0
                                    if (stor9 * stor13 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                        require 0 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require stor10 * stor13 / stor12 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (stor10 * stor13 / stor12)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor8 * stor13 / stor12 >= 0
                                        require stor10 * stor13 / stor12 >= 0
                                        if (stor10 * stor13 / stor12) + (stor8 * stor13 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require 0 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require 0 / stor12 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (0 / stor12)
                else:
                    require stor11 * stor13 / stor13 == stor11
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor15[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require 0 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require stor8 * stor13 / stor12 <= ext_call.return_data[0]
                                stor15[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (stor8 * stor13 / stor12)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                    require 0 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require stor9 * stor13 / stor12 <= ext_call.return_data[0]
                                    stor15[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (stor9 * stor13 / stor12)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor9 * stor13 / stor12 >= 0
                                    if (stor9 * stor13 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                        require 0 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require stor10 * stor13 / stor12 <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (stor10 * stor13 / stor12)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor15[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor8 * stor13 / stor12 >= 0
                                        require stor10 * stor13 / stor12 >= 0
                                        if (stor10 * stor13 / stor12) + (stor8 * stor13 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require 0 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require stor11 * stor13 / stor12 <= ext_call.return_data[0]
                                            stor15[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (stor11 * stor13 / stor12)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Revoked()
}

function release(address arg1) {
    if not stor13:
        require stor12
        if not stor13:
            require stor12
            if not stor13:
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += 0 / stor12
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0 / stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((0 / stor12));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor12) + ext_call.return_data[0] != stor13:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += 0 / stor12
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0 / stor12
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((0 / stor12));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * 0 / stor12 >= 0 / stor12
                                    if (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += 0 / stor12
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0 / stor12
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((0 / stor12));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 2 * 0 / stor12 >= 0 / stor12
                                        require 3 * 0 / stor12 >= 2 * 0 / stor12
                                        if (3 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += 0 / stor12
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0 / stor12
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((0 / stor12));
                else:
                    require stor11 * stor13 / stor13 == stor11
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += 0 / stor12
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0 / stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((0 / stor12));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor12) + ext_call.return_data[0] != stor13:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += 0 / stor12
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0 / stor12
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((0 / stor12));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * 0 / stor12 >= 0 / stor12
                                    if (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += 0 / stor12
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0 / stor12
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((0 / stor12));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 2 * 0 / stor12 >= 0 / stor12
                                        require 3 * 0 / stor12 >= 2 * 0 / stor12
                                        if (3 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (stor11 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += stor11 * stor13 / stor12
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, stor11 * stor13 / stor12
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((stor11 * stor13 / stor12));
            else:
                require stor10 * stor13 / stor13 == stor10
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += 0 / stor12
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0 / stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((0 / stor12));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor12) + ext_call.return_data[0] != stor13:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += 0 / stor12
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0 / stor12
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((0 / stor12));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * 0 / stor12 >= 0 / stor12
                                    if (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (stor10 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += stor10 * stor13 / stor12
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, stor10 * stor13 / stor12
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((stor10 * stor13 / stor12));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 2 * 0 / stor12 >= 0 / stor12
                                        require stor10 * stor13 / stor12 >= 0
                                        if (stor10 * stor13 / stor12) + (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += 0 / stor12
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0 / stor12
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((0 / stor12));
                else:
                    require stor11 * stor13 / stor13 == stor11
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += 0 / stor12
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0 / stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((0 / stor12));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor12) + ext_call.return_data[0] != stor13:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += 0 / stor12
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0 / stor12
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((0 / stor12));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * 0 / stor12 >= 0 / stor12
                                    if (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (stor10 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += stor10 * stor13 / stor12
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, stor10 * stor13 / stor12
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((stor10 * stor13 / stor12));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 2 * 0 / stor12 >= 0 / stor12
                                        require stor10 * stor13 / stor12 >= 0
                                        if (stor10 * stor13 / stor12) + (2 * 0 / stor12) + ext_call.return_data[0] != stor13:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (stor11 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += stor11 * stor13 / stor12
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, stor11 * stor13 / stor12
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((stor11 * stor13 / stor12));
        else:
            require stor9 * stor13 / stor13 == stor9
            require stor12
            if not stor13:
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += 0 / stor12
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0 / stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((0 / stor12));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor12) + ext_call.return_data[0] != stor13:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (stor9 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += stor9 * stor13 / stor12
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, stor9 * stor13 / stor12
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((stor9 * stor13 / stor12));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor9 * stor13 / stor12 >= 0
                                    if (stor9 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += 0 / stor12
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0 / stor12
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((0 / stor12));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 0 / stor12 >= 0
                                        require 2 * 0 / stor12 >= 0 / stor12
                                        if (2 * 0 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += 0 / stor12
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0 / stor12
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((0 / stor12));
                else:
                    require stor11 * stor13 / stor13 == stor11
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += 0 / stor12
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0 / stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((0 / stor12));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor12) + ext_call.return_data[0] != stor13:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (stor9 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += stor9 * stor13 / stor12
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, stor9 * stor13 / stor12
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((stor9 * stor13 / stor12));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor9 * stor13 / stor12 >= 0
                                    if (stor9 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += 0 / stor12
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0 / stor12
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((0 / stor12));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 0 / stor12 >= 0
                                        require 2 * 0 / stor12 >= 0 / stor12
                                        if (2 * 0 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (stor11 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += stor11 * stor13 / stor12
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, stor11 * stor13 / stor12
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((stor11 * stor13 / stor12));
            else:
                require stor10 * stor13 / stor13 == stor10
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += 0 / stor12
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0 / stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((0 / stor12));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor12) + ext_call.return_data[0] != stor13:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (stor9 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += stor9 * stor13 / stor12
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, stor9 * stor13 / stor12
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((stor9 * stor13 / stor12));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor9 * stor13 / stor12 >= 0
                                    if (stor9 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (stor10 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += stor10 * stor13 / stor12
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, stor10 * stor13 / stor12
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((stor10 * stor13 / stor12));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 0 / stor12 >= 0
                                        require stor10 * stor13 / stor12 >= 0
                                        if (stor10 * stor13 / stor12) + (0 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += 0 / stor12
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0 / stor12
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((0 / stor12));
                else:
                    require stor11 * stor13 / stor13 == stor11
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += 0 / stor12
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0 / stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((0 / stor12));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor12) + ext_call.return_data[0] != stor13:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (stor9 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += stor9 * stor13 / stor12
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, stor9 * stor13 / stor12
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((stor9 * stor13 / stor12));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor9 * stor13 / stor12 >= 0
                                    if (stor9 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (stor10 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += stor10 * stor13 / stor12
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, stor10 * stor13 / stor12
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((stor10 * stor13 / stor12));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 0 / stor12 >= 0
                                        require stor10 * stor13 / stor12 >= 0
                                        if (stor10 * stor13 / stor12) + (0 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (stor11 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += stor11 * stor13 / stor12
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, stor11 * stor13 / stor12
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((stor11 * stor13 / stor12));
    else:
        require stor8 * stor13 / stor13 == stor8
        require stor12
        if not stor13:
            require stor12
            if not stor13:
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (stor8 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += stor8 * stor13 / stor12
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, stor8 * stor13 / stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((stor8 * stor13 / stor12));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += 0 / stor12
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0 / stor12
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((0 / stor12));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 0 / stor12 >= 0
                                    if (0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += 0 / stor12
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0 / stor12
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((0 / stor12));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor8 * stor13 / stor12 >= 0
                                        require 2 * 0 / stor12 >= 0 / stor12
                                        if (2 * 0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += 0 / stor12
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0 / stor12
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((0 / stor12));
                else:
                    require stor11 * stor13 / stor13 == stor11
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (stor8 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += stor8 * stor13 / stor12
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, stor8 * stor13 / stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((stor8 * stor13 / stor12));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += 0 / stor12
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0 / stor12
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((0 / stor12));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 0 / stor12 >= 0
                                    if (0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += 0 / stor12
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0 / stor12
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((0 / stor12));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor8 * stor13 / stor12 >= 0
                                        require 2 * 0 / stor12 >= 0 / stor12
                                        if (2 * 0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (stor11 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += stor11 * stor13 / stor12
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, stor11 * stor13 / stor12
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((stor11 * stor13 / stor12));
            else:
                require stor10 * stor13 / stor13 == stor10
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (stor8 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += stor8 * stor13 / stor12
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, stor8 * stor13 / stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((stor8 * stor13 / stor12));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += 0 / stor12
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0 / stor12
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((0 / stor12));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 0 / stor12 >= 0
                                    if (0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (stor10 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += stor10 * stor13 / stor12
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, stor10 * stor13 / stor12
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((stor10 * stor13 / stor12));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor8 * stor13 / stor12 >= 0
                                        require stor10 * stor13 / stor12 >= 0
                                        if (stor10 * stor13 / stor12) + (stor8 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += 0 / stor12
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0 / stor12
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((0 / stor12));
                else:
                    require stor11 * stor13 / stor13 == stor11
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (stor8 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += stor8 * stor13 / stor12
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, stor8 * stor13 / stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((stor8 * stor13 / stor12));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += 0 / stor12
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0 / stor12
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((0 / stor12));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 0 / stor12 >= 0
                                    if (0 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (stor10 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += stor10 * stor13 / stor12
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, stor10 * stor13 / stor12
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((stor10 * stor13 / stor12));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (0 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor8 * stor13 / stor12 >= 0
                                        require stor10 * stor13 / stor12 >= 0
                                        if (stor10 * stor13 / stor12) + (stor8 * stor13 / stor12) + (0 / stor12) + ext_call.return_data[0] != stor13:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (stor11 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += stor11 * stor13 / stor12
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, stor11 * stor13 / stor12
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((stor11 * stor13 / stor12));
        else:
            require stor9 * stor13 / stor13 == stor9
            require stor12
            if not stor13:
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (stor8 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += stor8 * stor13 / stor12
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, stor8 * stor13 / stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((stor8 * stor13 / stor12));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (stor9 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += stor9 * stor13 / stor12
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, stor9 * stor13 / stor12
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((stor9 * stor13 / stor12));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor9 * stor13 / stor12 >= 0
                                    if (stor9 * stor13 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += 0 / stor12
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0 / stor12
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((0 / stor12));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor8 * stor13 / stor12 >= 0
                                        require 0 / stor12 >= 0
                                        if (0 / stor12) + (stor8 * stor13 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += 0 / stor12
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0 / stor12
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((0 / stor12));
                else:
                    require stor11 * stor13 / stor13 == stor11
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (stor8 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += stor8 * stor13 / stor12
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, stor8 * stor13 / stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((stor8 * stor13 / stor12));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (stor9 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += stor9 * stor13 / stor12
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, stor9 * stor13 / stor12
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((stor9 * stor13 / stor12));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor9 * stor13 / stor12 >= 0
                                    if (stor9 * stor13 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += 0 / stor12
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0 / stor12
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((0 / stor12));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor8 * stor13 / stor12 >= 0
                                        require 0 / stor12 >= 0
                                        if (0 / stor12) + (stor8 * stor13 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (stor11 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += stor11 * stor13 / stor12
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, stor11 * stor13 / stor12
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((stor11 * stor13 / stor12));
            else:
                require stor10 * stor13 / stor13 == stor10
                require stor12
                if not stor13:
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (stor8 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += stor8 * stor13 / stor12
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, stor8 * stor13 / stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((stor8 * stor13 / stor12));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (stor9 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += stor9 * stor13 / stor12
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, stor9 * stor13 / stor12
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((stor9 * stor13 / stor12));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor9 * stor13 / stor12 >= 0
                                    if (stor9 * stor13 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (stor10 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += stor10 * stor13 / stor12
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, stor10 * stor13 / stor12
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((stor10 * stor13 / stor12));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor8 * stor13 / stor12 >= 0
                                        require stor10 * stor13 / stor12 >= 0
                                        if (stor10 * stor13 / stor12) + (stor8 * stor13 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (0 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += 0 / stor12
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0 / stor12
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((0 / stor12));
                else:
                    require stor11 * stor13 / stor13 == stor11
                    require stor12
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor13:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (stor8 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += stor8 * stor13 / stor12
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, stor8 * stor13 / stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((stor8 * stor13 / stor12));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (stor9 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += stor9 * stor13 / stor12
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, stor9 * stor13 / stor12
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((stor9 * stor13 / stor12));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor8 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor9 * stor13 / stor12 >= 0
                                    if (stor9 * stor13 / stor12) + (stor8 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (stor10 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += stor10 * stor13 / stor12
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, stor10 * stor13 / stor12
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((stor10 * stor13 / stor12));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (stor9 * stor13 / stor12) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor8 * stor13 / stor12 >= 0
                                        require stor10 * stor13 / stor12 >= 0
                                        if (stor10 * stor13 / stor12) + (stor8 * stor13 / stor12) + (stor9 * stor13 / stor12) + ext_call.return_data[0] != stor13:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (stor11 * stor13 / stor12) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += stor11 * stor13 / stor12
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor1, stor11 * stor13 / stor12
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((stor11 * stor13 / stor12));
}



}
