contract main {




// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 cliff;
uint256 start;
uint256 duration;
uint256 teamTimeLock;
uint256 sub_71d4975e;
uint256 sub_c98257fb;
uint256 sub_a32af4d0;
uint256 fiveReserveTimeLock;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint8 revocable;
mapping of uint256 released;
mapping of uint8 stor18;

function duration() {
    return duration
}

function cliff() {
    return cliff
}

function beneficiary() {
    return beneficiaryAddress
}

function teamTimeLock() {
    return teamTimeLock
}

function sub_71d4975e(?) {
    return sub_71d4975e
}

function revocable() {
    return bool(revocable)
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
    return bool(stor18[arg1])
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
    if not stor15:
        require stor14
        if not stor15:
            require stor14
            if not stor15:
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor15:
                            return 0
                    else:
                        if block.timestamp < sub_c98257fb:
                            require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (0 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                        else:
                            if block.timestamp < sub_a32af4d0:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                require 2 * 0 / stor14 >= 0 / stor14
                                if (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                    return 0
                            else:
                                if block.timestamp >= fiveReserveTimeLock:
                                    return ext_call.return_data[0]
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                require 2 * 0 / stor14 >= 0 / stor14
                                require 3 * 0 / stor14 >= 2 * 0 / stor14
                                if (3 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                    return 0
                    return (0 / stor14)
                require stor13 * stor15 / stor15 == stor13
                require stor14
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp < sub_c98257fb:
                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (0 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp < sub_a32af4d0:
                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require 2 * 0 / stor14 >= 0 / stor14
                    if (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                require 2 * 0 / stor14 >= 0 / stor14
                require 3 * 0 / stor14 >= 2 * 0 / stor14
                if (3 * 0 / stor14) + ext_call.return_data[0] != stor15:
                    return 0
            else:
                require stor12 * stor15 / stor15 == stor12
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor15:
                            return 0
                    else:
                        if block.timestamp < sub_c98257fb:
                            require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (0 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                        else:
                            if block.timestamp < sub_a32af4d0:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                require 2 * 0 / stor14 >= 0 / stor14
                                if (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                    return 0
                                return (stor12 * stor15 / stor14)
                            if block.timestamp >= fiveReserveTimeLock:
                                return ext_call.return_data[0]
                            require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require 2 * 0 / stor14 >= 0 / stor14
                            require stor12 * stor15 / stor14 >= 0
                            if (stor12 * stor15 / stor14) + (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                    return (0 / stor14)
                require stor13 * stor15 / stor15 == stor13
                require stor14
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp < sub_c98257fb:
                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (0 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp < sub_a32af4d0:
                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require 2 * 0 / stor14 >= 0 / stor14
                    if (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (stor12 * stor15 / stor14)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                require 2 * 0 / stor14 >= 0 / stor14
                require stor12 * stor15 / stor14 >= 0
                if (stor12 * stor15 / stor14) + (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                    return 0
        else:
            require stor11 * stor15 / stor15 == stor11
            require stor14
            if not stor15:
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor15:
                            return 0
                    else:
                        if block.timestamp < sub_c98257fb:
                            require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (0 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                            return (stor11 * stor15 / stor14)
                        if block.timestamp < sub_a32af4d0:
                            require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require stor11 * stor15 / stor14 >= 0
                            if (stor11 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                        else:
                            if block.timestamp >= fiveReserveTimeLock:
                                return ext_call.return_data[0]
                            require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require 0 / stor14 >= 0
                            require 2 * 0 / stor14 >= 0 / stor14
                            if (2 * 0 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                    return (0 / stor14)
                require stor13 * stor15 / stor15 == stor13
                require stor14
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp < sub_c98257fb:
                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (0 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (stor11 * stor15 / stor14)
                if block.timestamp < sub_a32af4d0:
                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor11 * stor15 / stor14 >= 0
                    if (stor11 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                require 0 / stor14 >= 0
                require 2 * 0 / stor14 >= 0 / stor14
                if (2 * 0 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                    return 0
            else:
                require stor12 * stor15 / stor15 == stor12
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor15:
                            return 0
                    else:
                        if block.timestamp < sub_c98257fb:
                            require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (0 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                            return (stor11 * stor15 / stor14)
                        if block.timestamp < sub_a32af4d0:
                            require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require stor11 * stor15 / stor14 >= 0
                            if (stor11 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                            return (stor12 * stor15 / stor14)
                        if block.timestamp >= fiveReserveTimeLock:
                            return ext_call.return_data[0]
                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require 0 / stor14 >= 0
                        require stor12 * stor15 / stor14 >= 0
                        if (stor12 * stor15 / stor14) + (0 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                    return (0 / stor14)
                require stor13 * stor15 / stor15 == stor13
                require stor14
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp < sub_c98257fb:
                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (0 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (stor11 * stor15 / stor14)
                if block.timestamp < sub_a32af4d0:
                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor11 * stor15 / stor14 >= 0
                    if (stor11 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (stor12 * stor15 / stor14)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                require 0 / stor14 >= 0
                require stor12 * stor15 / stor14 >= 0
                if (stor12 * stor15 / stor14) + (0 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                    return 0
    else:
        require stor10 * stor15 / stor15 == stor10
        require stor14
        if not stor15:
            require stor14
            if not stor15:
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor15:
                            return 0
                        return (stor10 * stor15 / stor14)
                    if block.timestamp < sub_c98257fb:
                        require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                    else:
                        if block.timestamp < sub_a32af4d0:
                            require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require 0 / stor14 >= 0
                            if (0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                        else:
                            if block.timestamp >= fiveReserveTimeLock:
                                return ext_call.return_data[0]
                            require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require stor10 * stor15 / stor14 >= 0
                            require 2 * 0 / stor14 >= 0 / stor14
                            if (2 * 0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                    return (0 / stor14)
                require stor13 * stor15 / stor15 == stor13
                require stor14
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor15:
                        return 0
                    return (stor10 * stor15 / stor14)
                if block.timestamp < sub_c98257fb:
                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp < sub_a32af4d0:
                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require 0 / stor14 >= 0
                    if (0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                require stor10 * stor15 / stor14 >= 0
                require 2 * 0 / stor14 >= 0 / stor14
                if (2 * 0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                    return 0
            else:
                require stor12 * stor15 / stor15 == stor12
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor15:
                            return 0
                        return (stor10 * stor15 / stor14)
                    if block.timestamp < sub_c98257fb:
                        require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                    else:
                        if block.timestamp < sub_a32af4d0:
                            require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require 0 / stor14 >= 0
                            if (0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                            return (stor12 * stor15 / stor14)
                        if block.timestamp >= fiveReserveTimeLock:
                            return ext_call.return_data[0]
                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require stor10 * stor15 / stor14 >= 0
                        require stor12 * stor15 / stor14 >= 0
                        if (stor12 * stor15 / stor14) + (stor10 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                    return (0 / stor14)
                require stor13 * stor15 / stor15 == stor13
                require stor14
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor15:
                        return 0
                    return (stor10 * stor15 / stor14)
                if block.timestamp < sub_c98257fb:
                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp < sub_a32af4d0:
                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require 0 / stor14 >= 0
                    if (0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (stor12 * stor15 / stor14)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                require stor10 * stor15 / stor14 >= 0
                require stor12 * stor15 / stor14 >= 0
                if (stor12 * stor15 / stor14) + (stor10 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                    return 0
        else:
            require stor11 * stor15 / stor15 == stor11
            require stor14
            if not stor15:
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor15:
                            return 0
                        return (stor10 * stor15 / stor14)
                    if block.timestamp < sub_c98257fb:
                        require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                        return (stor11 * stor15 / stor14)
                    if block.timestamp < sub_a32af4d0:
                        require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require stor11 * stor15 / stor14 >= 0
                        if (stor11 * stor15 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                    else:
                        if block.timestamp >= fiveReserveTimeLock:
                            return ext_call.return_data[0]
                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require stor10 * stor15 / stor14 >= 0
                        require 0 / stor14 >= 0
                        if (0 / stor14) + (stor10 * stor15 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                    return (0 / stor14)
                require stor13 * stor15 / stor15 == stor13
                require stor14
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor15:
                        return 0
                    return (stor10 * stor15 / stor14)
                if block.timestamp < sub_c98257fb:
                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (stor11 * stor15 / stor14)
                if block.timestamp < sub_a32af4d0:
                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor11 * stor15 / stor14 >= 0
                    if (stor11 * stor15 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                require stor10 * stor15 / stor14 >= 0
                require 0 / stor14 >= 0
                if (0 / stor14) + (stor10 * stor15 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                    return 0
            else:
                require stor12 * stor15 / stor15 == stor12
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor15:
                            return 0
                        return (stor10 * stor15 / stor14)
                    if block.timestamp < sub_c98257fb:
                        require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                        return (stor11 * stor15 / stor14)
                    if block.timestamp < sub_a32af4d0:
                        require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require stor11 * stor15 / stor14 >= 0
                        if (stor11 * stor15 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                        return (stor12 * stor15 / stor14)
                    if block.timestamp >= fiveReserveTimeLock:
                        return ext_call.return_data[0]
                    require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor10 * stor15 / stor14 >= 0
                    require stor12 * stor15 / stor14 >= 0
                    if (stor12 * stor15 / stor14) + (stor10 * stor15 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                require stor13 * stor15 / stor15 == stor13
                require stor14
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor15:
                        return 0
                    return (stor10 * stor15 / stor14)
                if block.timestamp < sub_c98257fb:
                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (stor11 * stor15 / stor14)
                if block.timestamp < sub_a32af4d0:
                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor11 * stor15 / stor14 >= 0
                    if (stor11 * stor15 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (stor12 * stor15 / stor14)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                require stor10 * stor15 / stor14 >= 0
                require stor12 * stor15 / stor14 >= 0
                if (stor12 * stor15 / stor14) + (stor10 * stor15 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                    return 0
    return (stor13 * stor15 / stor14)
}

function releasableAmount(address arg1) {
    if not stor15:
        require stor14
        if not stor15:
            require stor14
            if not stor15:
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor15:
                            return 0
                    else:
                        if block.timestamp < sub_c98257fb:
                            require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (0 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                        else:
                            if block.timestamp < sub_a32af4d0:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                require 2 * 0 / stor14 >= 0 / stor14
                                if (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                    return 0
                            else:
                                if block.timestamp >= fiveReserveTimeLock:
                                    return ext_call.return_data[0]
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                require 2 * 0 / stor14 >= 0 / stor14
                                require 3 * 0 / stor14 >= 2 * 0 / stor14
                                if (3 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                    return 0
                    return (0 / stor14)
                require stor13 * stor15 / stor15 == stor13
                require stor14
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp < sub_c98257fb:
                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (0 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp < sub_a32af4d0:
                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require 2 * 0 / stor14 >= 0 / stor14
                    if (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                require 2 * 0 / stor14 >= 0 / stor14
                require 3 * 0 / stor14 >= 2 * 0 / stor14
                if (3 * 0 / stor14) + ext_call.return_data[0] != stor15:
                    return 0
            else:
                require stor12 * stor15 / stor15 == stor12
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor15:
                            return 0
                    else:
                        if block.timestamp < sub_c98257fb:
                            require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (0 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                        else:
                            if block.timestamp < sub_a32af4d0:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                require 2 * 0 / stor14 >= 0 / stor14
                                if (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                    return 0
                                return (stor12 * stor15 / stor14)
                            if block.timestamp >= fiveReserveTimeLock:
                                return ext_call.return_data[0]
                            require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require 2 * 0 / stor14 >= 0 / stor14
                            require stor12 * stor15 / stor14 >= 0
                            if (stor12 * stor15 / stor14) + (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                    return (0 / stor14)
                require stor13 * stor15 / stor15 == stor13
                require stor14
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp < sub_c98257fb:
                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (0 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp < sub_a32af4d0:
                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require 2 * 0 / stor14 >= 0 / stor14
                    if (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (stor12 * stor15 / stor14)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                require 2 * 0 / stor14 >= 0 / stor14
                require stor12 * stor15 / stor14 >= 0
                if (stor12 * stor15 / stor14) + (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                    return 0
        else:
            require stor11 * stor15 / stor15 == stor11
            require stor14
            if not stor15:
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor15:
                            return 0
                    else:
                        if block.timestamp < sub_c98257fb:
                            require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (0 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                            return (stor11 * stor15 / stor14)
                        if block.timestamp < sub_a32af4d0:
                            require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require stor11 * stor15 / stor14 >= 0
                            if (stor11 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                        else:
                            if block.timestamp >= fiveReserveTimeLock:
                                return ext_call.return_data[0]
                            require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require 0 / stor14 >= 0
                            require 2 * 0 / stor14 >= 0 / stor14
                            if (2 * 0 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                    return (0 / stor14)
                require stor13 * stor15 / stor15 == stor13
                require stor14
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp < sub_c98257fb:
                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (0 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (stor11 * stor15 / stor14)
                if block.timestamp < sub_a32af4d0:
                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor11 * stor15 / stor14 >= 0
                    if (stor11 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                require 0 / stor14 >= 0
                require 2 * 0 / stor14 >= 0 / stor14
                if (2 * 0 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                    return 0
            else:
                require stor12 * stor15 / stor15 == stor12
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor15:
                            return 0
                    else:
                        if block.timestamp < sub_c98257fb:
                            require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (0 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                            return (stor11 * stor15 / stor14)
                        if block.timestamp < sub_a32af4d0:
                            require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require stor11 * stor15 / stor14 >= 0
                            if (stor11 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                            return (stor12 * stor15 / stor14)
                        if block.timestamp >= fiveReserveTimeLock:
                            return ext_call.return_data[0]
                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require 0 / stor14 >= 0
                        require stor12 * stor15 / stor14 >= 0
                        if (stor12 * stor15 / stor14) + (0 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                    return (0 / stor14)
                require stor13 * stor15 / stor15 == stor13
                require stor14
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp < sub_c98257fb:
                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (0 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (stor11 * stor15 / stor14)
                if block.timestamp < sub_a32af4d0:
                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor11 * stor15 / stor14 >= 0
                    if (stor11 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (stor12 * stor15 / stor14)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                require 0 / stor14 >= 0
                require stor12 * stor15 / stor14 >= 0
                if (stor12 * stor15 / stor14) + (0 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                    return 0
    else:
        require stor10 * stor15 / stor15 == stor10
        require stor14
        if not stor15:
            require stor14
            if not stor15:
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor15:
                            return 0
                        return (stor10 * stor15 / stor14)
                    if block.timestamp < sub_c98257fb:
                        require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                    else:
                        if block.timestamp < sub_a32af4d0:
                            require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require 0 / stor14 >= 0
                            if (0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                        else:
                            if block.timestamp >= fiveReserveTimeLock:
                                return ext_call.return_data[0]
                            require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require stor10 * stor15 / stor14 >= 0
                            require 2 * 0 / stor14 >= 0 / stor14
                            if (2 * 0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                    return (0 / stor14)
                require stor13 * stor15 / stor15 == stor13
                require stor14
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor15:
                        return 0
                    return (stor10 * stor15 / stor14)
                if block.timestamp < sub_c98257fb:
                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp < sub_a32af4d0:
                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require 0 / stor14 >= 0
                    if (0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                require stor10 * stor15 / stor14 >= 0
                require 2 * 0 / stor14 >= 0 / stor14
                if (2 * 0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                    return 0
            else:
                require stor12 * stor15 / stor15 == stor12
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor15:
                            return 0
                        return (stor10 * stor15 / stor14)
                    if block.timestamp < sub_c98257fb:
                        require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                    else:
                        if block.timestamp < sub_a32af4d0:
                            require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require 0 / stor14 >= 0
                            if (0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                return 0
                            return (stor12 * stor15 / stor14)
                        if block.timestamp >= fiveReserveTimeLock:
                            return ext_call.return_data[0]
                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require stor10 * stor15 / stor14 >= 0
                        require stor12 * stor15 / stor14 >= 0
                        if (stor12 * stor15 / stor14) + (stor10 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                    return (0 / stor14)
                require stor13 * stor15 / stor15 == stor13
                require stor14
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor15:
                        return 0
                    return (stor10 * stor15 / stor14)
                if block.timestamp < sub_c98257fb:
                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp < sub_a32af4d0:
                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require 0 / stor14 >= 0
                    if (0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (stor12 * stor15 / stor14)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                require stor10 * stor15 / stor14 >= 0
                require stor12 * stor15 / stor14 >= 0
                if (stor12 * stor15 / stor14) + (stor10 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                    return 0
        else:
            require stor11 * stor15 / stor15 == stor11
            require stor14
            if not stor15:
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor15:
                            return 0
                        return (stor10 * stor15 / stor14)
                    if block.timestamp < sub_c98257fb:
                        require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                        return (stor11 * stor15 / stor14)
                    if block.timestamp < sub_a32af4d0:
                        require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require stor11 * stor15 / stor14 >= 0
                        if (stor11 * stor15 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                    else:
                        if block.timestamp >= fiveReserveTimeLock:
                            return ext_call.return_data[0]
                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require stor10 * stor15 / stor14 >= 0
                        require 0 / stor14 >= 0
                        if (0 / stor14) + (stor10 * stor15 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                    return (0 / stor14)
                require stor13 * stor15 / stor15 == stor13
                require stor14
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor15:
                        return 0
                    return (stor10 * stor15 / stor14)
                if block.timestamp < sub_c98257fb:
                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (stor11 * stor15 / stor14)
                if block.timestamp < sub_a32af4d0:
                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor11 * stor15 / stor14 >= 0
                    if (stor11 * stor15 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                require stor10 * stor15 / stor14 >= 0
                require 0 / stor14 >= 0
                if (0 / stor14) + (stor10 * stor15 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                    return 0
            else:
                require stor12 * stor15 / stor15 == stor12
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        return 0
                    require ext_code.size(arg1)
                    call arg1.balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < sub_71d4975e:
                        if ext_call.return_data[0] != stor15:
                            return 0
                        return (stor10 * stor15 / stor14)
                    if block.timestamp < sub_c98257fb:
                        require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                        return (stor11 * stor15 / stor14)
                    if block.timestamp < sub_a32af4d0:
                        require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require stor11 * stor15 / stor14 >= 0
                        if (stor11 * stor15 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                            return 0
                        return (stor12 * stor15 / stor14)
                    if block.timestamp >= fiveReserveTimeLock:
                        return ext_call.return_data[0]
                    require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor10 * stor15 / stor14 >= 0
                    require stor12 * stor15 / stor14 >= 0
                    if (stor12 * stor15 / stor14) + (stor10 * stor15 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (0 / stor14)
                require stor13 * stor15 / stor15 == stor13
                require stor14
                if block.timestamp < teamTimeLock:
                    return 0
                require ext_code.size(arg1)
                call arg1.balanceOf(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < sub_71d4975e:
                    if ext_call.return_data[0] != stor15:
                        return 0
                    return (stor10 * stor15 / stor14)
                if block.timestamp < sub_c98257fb:
                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (stor11 * stor15 / stor14)
                if block.timestamp < sub_a32af4d0:
                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require stor11 * stor15 / stor14 >= 0
                    if (stor11 * stor15 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                        return 0
                    return (stor12 * stor15 / stor14)
                if block.timestamp >= fiveReserveTimeLock:
                    return ext_call.return_data[0]
                require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                require stor10 * stor15 / stor14 >= 0
                require stor12 * stor15 / stor14 >= 0
                if (stor12 * stor15 / stor14) + (stor10 * stor15 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                    return 0
    return (stor13 * stor15 / stor14)
}

function revoke(address arg1) {
    require msg.sender == owner
    require revocable
    require ext_code.size(arg1)
    call arg1.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor15:
        require stor14
        if not stor15:
            require stor14
            if not stor15:
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor18[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require 0 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require 0 / stor14 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (0 / stor14)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor14) + ext_call.return_data[0] != stor15:
                                    require 0 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require 0 / stor14 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor14)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * 0 / stor14 >= 0 / stor14
                                    if (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                        require 0 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require 0 / stor14 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (0 / stor14)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 2 * 0 / stor14 >= 0 / stor14
                                        require 3 * 0 / stor14 >= 2 * 0 / stor14
                                        if (3 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                            require 0 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require 0 / stor14 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (0 / stor14)
                else:
                    require stor13 * stor15 / stor15 == stor13
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor18[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require 0 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require 0 / stor14 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (0 / stor14)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor14) + ext_call.return_data[0] != stor15:
                                    require 0 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require 0 / stor14 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor14)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * 0 / stor14 >= 0 / stor14
                                    if (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                        require 0 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require 0 / stor14 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (0 / stor14)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 2 * 0 / stor14 >= 0 / stor14
                                        require 3 * 0 / stor14 >= 2 * 0 / stor14
                                        if (3 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                            require 0 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require stor13 * stor15 / stor14 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (stor13 * stor15 / stor14)
            else:
                require stor12 * stor15 / stor15 == stor12
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor18[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require 0 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require 0 / stor14 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (0 / stor14)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor14) + ext_call.return_data[0] != stor15:
                                    require 0 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require 0 / stor14 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor14)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * 0 / stor14 >= 0 / stor14
                                    if (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                        require 0 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require stor12 * stor15 / stor14 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (stor12 * stor15 / stor14)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 2 * 0 / stor14 >= 0 / stor14
                                        require stor12 * stor15 / stor14 >= 0
                                        if (stor12 * stor15 / stor14) + (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                            require 0 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require 0 / stor14 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (0 / stor14)
                else:
                    require stor13 * stor15 / stor15 == stor13
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor18[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require 0 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require 0 / stor14 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (0 / stor14)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor14) + ext_call.return_data[0] != stor15:
                                    require 0 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require 0 / stor14 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor14)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * 0 / stor14 >= 0 / stor14
                                    if (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                        require 0 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require stor12 * stor15 / stor14 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (stor12 * stor15 / stor14)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 2 * 0 / stor14 >= 0 / stor14
                                        require stor12 * stor15 / stor14 >= 0
                                        if (stor12 * stor15 / stor14) + (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                            require 0 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require stor13 * stor15 / stor14 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (stor13 * stor15 / stor14)
        else:
            require stor11 * stor15 / stor15 == stor11
            require stor14
            if not stor15:
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor18[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require 0 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require 0 / stor14 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (0 / stor14)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor14) + ext_call.return_data[0] != stor15:
                                    require 0 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require stor11 * stor15 / stor14 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (stor11 * stor15 / stor14)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor11 * stor15 / stor14 >= 0
                                    if (stor11 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                                        require 0 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require 0 / stor14 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (0 / stor14)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 0 / stor14 >= 0
                                        require 2 * 0 / stor14 >= 0 / stor14
                                        if (2 * 0 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require 0 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require 0 / stor14 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (0 / stor14)
                else:
                    require stor13 * stor15 / stor15 == stor13
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor18[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require 0 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require 0 / stor14 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (0 / stor14)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor14) + ext_call.return_data[0] != stor15:
                                    require 0 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require stor11 * stor15 / stor14 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (stor11 * stor15 / stor14)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor11 * stor15 / stor14 >= 0
                                    if (stor11 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                                        require 0 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require 0 / stor14 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (0 / stor14)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 0 / stor14 >= 0
                                        require 2 * 0 / stor14 >= 0 / stor14
                                        if (2 * 0 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require 0 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require stor13 * stor15 / stor14 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (stor13 * stor15 / stor14)
            else:
                require stor12 * stor15 / stor15 == stor12
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor18[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require 0 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require 0 / stor14 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (0 / stor14)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor14) + ext_call.return_data[0] != stor15:
                                    require 0 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require stor11 * stor15 / stor14 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (stor11 * stor15 / stor14)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor11 * stor15 / stor14 >= 0
                                    if (stor11 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                                        require 0 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require stor12 * stor15 / stor14 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (stor12 * stor15 / stor14)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 0 / stor14 >= 0
                                        require stor12 * stor15 / stor14 >= 0
                                        if (stor12 * stor15 / stor14) + (0 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require 0 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require 0 / stor14 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (0 / stor14)
                else:
                    require stor13 * stor15 / stor15 == stor13
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor18[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require 0 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require 0 / stor14 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (0 / stor14)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor14) + ext_call.return_data[0] != stor15:
                                    require 0 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require stor11 * stor15 / stor14 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (stor11 * stor15 / stor14)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor11 * stor15 / stor14 >= 0
                                    if (stor11 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                                        require 0 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require stor12 * stor15 / stor14 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (stor12 * stor15 / stor14)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 0 / stor14 >= 0
                                        require stor12 * stor15 / stor14 >= 0
                                        if (stor12 * stor15 / stor14) + (0 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require 0 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require stor13 * stor15 / stor14 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (stor13 * stor15 / stor14)
    else:
        require stor10 * stor15 / stor15 == stor10
        require stor14
        if not stor15:
            require stor14
            if not stor15:
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor18[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require 0 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require stor10 * stor15 / stor14 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (stor10 * stor15 / stor14)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                    require 0 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require 0 / stor14 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor14)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 0 / stor14 >= 0
                                    if (0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                        require 0 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require 0 / stor14 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (0 / stor14)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor10 * stor15 / stor14 >= 0
                                        require 2 * 0 / stor14 >= 0 / stor14
                                        if (2 * 0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require 0 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require 0 / stor14 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (0 / stor14)
                else:
                    require stor13 * stor15 / stor15 == stor13
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor18[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require 0 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require stor10 * stor15 / stor14 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (stor10 * stor15 / stor14)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                    require 0 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require 0 / stor14 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor14)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 0 / stor14 >= 0
                                    if (0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                        require 0 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require 0 / stor14 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (0 / stor14)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor10 * stor15 / stor14 >= 0
                                        require 2 * 0 / stor14 >= 0 / stor14
                                        if (2 * 0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require 0 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require stor13 * stor15 / stor14 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (stor13 * stor15 / stor14)
            else:
                require stor12 * stor15 / stor15 == stor12
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor18[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require 0 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require stor10 * stor15 / stor14 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (stor10 * stor15 / stor14)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                    require 0 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require 0 / stor14 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor14)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 0 / stor14 >= 0
                                    if (0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                        require 0 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require stor12 * stor15 / stor14 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (stor12 * stor15 / stor14)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor10 * stor15 / stor14 >= 0
                                        require stor12 * stor15 / stor14 >= 0
                                        if (stor12 * stor15 / stor14) + (stor10 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                                            require 0 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require 0 / stor14 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (0 / stor14)
                else:
                    require stor13 * stor15 / stor15 == stor13
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor18[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require 0 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require stor10 * stor15 / stor14 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (stor10 * stor15 / stor14)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                    require 0 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require 0 / stor14 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor14)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 0 / stor14 >= 0
                                    if (0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                        require 0 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require stor12 * stor15 / stor14 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (stor12 * stor15 / stor14)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor10 * stor15 / stor14 >= 0
                                        require stor12 * stor15 / stor14 >= 0
                                        if (stor12 * stor15 / stor14) + (stor10 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                                            require 0 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require stor13 * stor15 / stor14 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (stor13 * stor15 / stor14)
        else:
            require stor11 * stor15 / stor15 == stor11
            require stor14
            if not stor15:
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor18[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require 0 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require stor10 * stor15 / stor14 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (stor10 * stor15 / stor14)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                    require 0 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require stor11 * stor15 / stor14 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (stor11 * stor15 / stor14)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor11 * stor15 / stor14 >= 0
                                    if (stor11 * stor15 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                        require 0 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require 0 / stor14 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (0 / stor14)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor10 * stor15 / stor14 >= 0
                                        require 0 / stor14 >= 0
                                        if (0 / stor14) + (stor10 * stor15 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require 0 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require 0 / stor14 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (0 / stor14)
                else:
                    require stor13 * stor15 / stor15 == stor13
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor18[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require 0 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require stor10 * stor15 / stor14 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (stor10 * stor15 / stor14)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                    require 0 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require stor11 * stor15 / stor14 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (stor11 * stor15 / stor14)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor11 * stor15 / stor14 >= 0
                                    if (stor11 * stor15 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                        require 0 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require 0 / stor14 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (0 / stor14)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor10 * stor15 / stor14 >= 0
                                        require 0 / stor14 >= 0
                                        if (0 / stor14) + (stor10 * stor15 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require 0 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require stor13 * stor15 / stor14 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (stor13 * stor15 / stor14)
            else:
                require stor12 * stor15 / stor15 == stor12
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor18[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require 0 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require stor10 * stor15 / stor14 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (stor10 * stor15 / stor14)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                    require 0 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require stor11 * stor15 / stor14 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (stor11 * stor15 / stor14)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor11 * stor15 / stor14 >= 0
                                    if (stor11 * stor15 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                        require 0 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require stor12 * stor15 / stor14 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (stor12 * stor15 / stor14)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor10 * stor15 / stor14 >= 0
                                        require stor12 * stor15 / stor14 >= 0
                                        if (stor12 * stor15 / stor14) + (stor10 * stor15 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require 0 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require 0 / stor14 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (0 / stor14)
                else:
                    require stor13 * stor15 / stor15 == stor13
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require 0 <= ext_call.return_data[0]
                        stor18[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require 0 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0]
                            else:
                                require stor10 * stor15 / stor14 <= ext_call.return_data[0]
                                stor18[address(arg1)] = 1
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, ext_call.return_data[0] - (stor10 * stor15 / stor14)
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                    require 0 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0]
                                else:
                                    require stor11 * stor15 / stor14 <= ext_call.return_data[0]
                                    stor18[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (stor11 * stor15 / stor14)
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor11 * stor15 / stor14 >= 0
                                    if (stor11 * stor15 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                        require 0 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0]
                                    else:
                                        require stor12 * stor15 / stor14 <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, ext_call.return_data[0] - (stor12 * stor15 / stor14)
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] <= ext_call.return_data[0]
                                        stor18[address(arg1)] = 1
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args owner, 0
                                    else:
                                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor10 * stor15 / stor14 >= 0
                                        require stor12 * stor15 / stor14 >= 0
                                        if (stor12 * stor15 / stor14) + (stor10 * stor15 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require 0 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0]
                                        else:
                                            require stor13 * stor15 / stor14 <= ext_call.return_data[0]
                                            stor18[address(arg1)] = 1
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args owner, ext_call.return_data[0] - (stor13 * stor15 / stor14)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Revoked()
}

function release(address arg1) {
    if not stor15:
        require stor14
        if not stor15:
            require stor14
            if not stor15:
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args beneficiaryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += 0 / stor14
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0 / stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((0 / stor14));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor14) + ext_call.return_data[0] != stor15:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += 0 / stor14
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0 / stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((0 / stor14));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * 0 / stor14 >= 0 / stor14
                                    if (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += 0 / stor14
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0 / stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((0 / stor14));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 2 * 0 / stor14 >= 0 / stor14
                                        require 3 * 0 / stor14 >= 2 * 0 / stor14
                                        if (3 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += 0 / stor14
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0 / stor14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((0 / stor14));
                else:
                    require stor13 * stor15 / stor15 == stor13
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args beneficiaryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += 0 / stor14
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0 / stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((0 / stor14));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor14) + ext_call.return_data[0] != stor15:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += 0 / stor14
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0 / stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((0 / stor14));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * 0 / stor14 >= 0 / stor14
                                    if (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += 0 / stor14
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0 / stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((0 / stor14));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 2 * 0 / stor14 >= 0 / stor14
                                        require 3 * 0 / stor14 >= 2 * 0 / stor14
                                        if (3 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (stor13 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += stor13 * stor15 / stor14
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, stor13 * stor15 / stor14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((stor13 * stor15 / stor14));
            else:
                require stor12 * stor15 / stor15 == stor12
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args beneficiaryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += 0 / stor14
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0 / stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((0 / stor14));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor14) + ext_call.return_data[0] != stor15:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += 0 / stor14
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0 / stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((0 / stor14));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * 0 / stor14 >= 0 / stor14
                                    if (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (stor12 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += stor12 * stor15 / stor14
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, stor12 * stor15 / stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((stor12 * stor15 / stor14));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 2 * 0 / stor14 >= 0 / stor14
                                        require stor12 * stor15 / stor14 >= 0
                                        if (stor12 * stor15 / stor14) + (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += 0 / stor14
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0 / stor14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((0 / stor14));
                else:
                    require stor13 * stor15 / stor15 == stor13
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args beneficiaryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += 0 / stor14
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0 / stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((0 / stor14));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor14) + ext_call.return_data[0] != stor15:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += 0 / stor14
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0 / stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((0 / stor14));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 2 * 0 / stor14 >= 0 / stor14
                                    if (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (stor12 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += stor12 * stor15 / stor14
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, stor12 * stor15 / stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((stor12 * stor15 / stor14));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 2 * 0 / stor14 >= 0 / stor14
                                        require stor12 * stor15 / stor14 >= 0
                                        if (stor12 * stor15 / stor14) + (2 * 0 / stor14) + ext_call.return_data[0] != stor15:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (stor13 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += stor13 * stor15 / stor14
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, stor13 * stor15 / stor14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((stor13 * stor15 / stor14));
        else:
            require stor11 * stor15 / stor15 == stor11
            require stor14
            if not stor15:
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args beneficiaryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += 0 / stor14
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0 / stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((0 / stor14));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor14) + ext_call.return_data[0] != stor15:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (stor11 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += stor11 * stor15 / stor14
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, stor11 * stor15 / stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((stor11 * stor15 / stor14));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor11 * stor15 / stor14 >= 0
                                    if (stor11 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += 0 / stor14
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0 / stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((0 / stor14));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 0 / stor14 >= 0
                                        require 2 * 0 / stor14 >= 0 / stor14
                                        if (2 * 0 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += 0 / stor14
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0 / stor14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((0 / stor14));
                else:
                    require stor13 * stor15 / stor15 == stor13
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args beneficiaryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += 0 / stor14
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0 / stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((0 / stor14));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor14) + ext_call.return_data[0] != stor15:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (stor11 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += stor11 * stor15 / stor14
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, stor11 * stor15 / stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((stor11 * stor15 / stor14));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor11 * stor15 / stor14 >= 0
                                    if (stor11 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += 0 / stor14
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0 / stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((0 / stor14));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 0 / stor14 >= 0
                                        require 2 * 0 / stor14 >= 0 / stor14
                                        if (2 * 0 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (stor13 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += stor13 * stor15 / stor14
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, stor13 * stor15 / stor14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((stor13 * stor15 / stor14));
            else:
                require stor12 * stor15 / stor15 == stor12
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args beneficiaryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += 0 / stor14
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0 / stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((0 / stor14));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor14) + ext_call.return_data[0] != stor15:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (stor11 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += stor11 * stor15 / stor14
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, stor11 * stor15 / stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((stor11 * stor15 / stor14));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor11 * stor15 / stor14 >= 0
                                    if (stor11 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (stor12 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += stor12 * stor15 / stor14
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, stor12 * stor15 / stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((stor12 * stor15 / stor14));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 0 / stor14 >= 0
                                        require stor12 * stor15 / stor14 >= 0
                                        if (stor12 * stor15 / stor14) + (0 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += 0 / stor14
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0 / stor14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((0 / stor14));
                else:
                    require stor13 * stor15 / stor15 == stor13
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args beneficiaryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += 0 / stor14
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0 / stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((0 / stor14));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (0 / stor14) + ext_call.return_data[0] != stor15:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (stor11 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += stor11 * stor15 / stor14
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, stor11 * stor15 / stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((stor11 * stor15 / stor14));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor11 * stor15 / stor14 >= 0
                                    if (stor11 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (stor12 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += stor12 * stor15 / stor14
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, stor12 * stor15 / stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((stor12 * stor15 / stor14));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require 0 / stor14 >= 0
                                        require stor12 * stor15 / stor14 >= 0
                                        if (stor12 * stor15 / stor14) + (0 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (stor13 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += stor13 * stor15 / stor14
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, stor13 * stor15 / stor14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((stor13 * stor15 / stor14));
    else:
        require stor10 * stor15 / stor15 == stor10
        require stor14
        if not stor15:
            require stor14
            if not stor15:
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args beneficiaryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (stor10 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += stor10 * stor15 / stor14
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, stor10 * stor15 / stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((stor10 * stor15 / stor14));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += 0 / stor14
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0 / stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((0 / stor14));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 0 / stor14 >= 0
                                    if (0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += 0 / stor14
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0 / stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((0 / stor14));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor10 * stor15 / stor14 >= 0
                                        require 2 * 0 / stor14 >= 0 / stor14
                                        if (2 * 0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += 0 / stor14
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0 / stor14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((0 / stor14));
                else:
                    require stor13 * stor15 / stor15 == stor13
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args beneficiaryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (stor10 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += stor10 * stor15 / stor14
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, stor10 * stor15 / stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((stor10 * stor15 / stor14));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += 0 / stor14
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0 / stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((0 / stor14));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 0 / stor14 >= 0
                                    if (0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += 0 / stor14
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0 / stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((0 / stor14));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor10 * stor15 / stor14 >= 0
                                        require 2 * 0 / stor14 >= 0 / stor14
                                        if (2 * 0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (stor13 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += stor13 * stor15 / stor14
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, stor13 * stor15 / stor14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((stor13 * stor15 / stor14));
            else:
                require stor12 * stor15 / stor15 == stor12
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args beneficiaryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (stor10 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += stor10 * stor15 / stor14
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, stor10 * stor15 / stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((stor10 * stor15 / stor14));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += 0 / stor14
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0 / stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((0 / stor14));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 0 / stor14 >= 0
                                    if (0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (stor12 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += stor12 * stor15 / stor14
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, stor12 * stor15 / stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((stor12 * stor15 / stor14));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor10 * stor15 / stor14 >= 0
                                        require stor12 * stor15 / stor14 >= 0
                                        if (stor12 * stor15 / stor14) + (stor10 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += 0 / stor14
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0 / stor14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((0 / stor14));
                else:
                    require stor13 * stor15 / stor15 == stor13
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args beneficiaryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (stor10 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += stor10 * stor15 / stor14
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, stor10 * stor15 / stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((stor10 * stor15 / stor14));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += 0 / stor14
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0 / stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((0 / stor14));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require 0 / stor14 >= 0
                                    if (0 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (stor12 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += stor12 * stor15 / stor14
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, stor12 * stor15 / stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((stor12 * stor15 / stor14));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (0 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor10 * stor15 / stor14 >= 0
                                        require stor12 * stor15 / stor14 >= 0
                                        if (stor12 * stor15 / stor14) + (stor10 * stor15 / stor14) + (0 / stor14) + ext_call.return_data[0] != stor15:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (stor13 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += stor13 * stor15 / stor14
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, stor13 * stor15 / stor14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((stor13 * stor15 / stor14));
        else:
            require stor11 * stor15 / stor15 == stor11
            require stor14
            if not stor15:
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args beneficiaryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (stor10 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += stor10 * stor15 / stor14
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, stor10 * stor15 / stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((stor10 * stor15 / stor14));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (stor11 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += stor11 * stor15 / stor14
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, stor11 * stor15 / stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((stor11 * stor15 / stor14));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor11 * stor15 / stor14 >= 0
                                    if (stor11 * stor15 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += 0 / stor14
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0 / stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((0 / stor14));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor10 * stor15 / stor14 >= 0
                                        require 0 / stor14 >= 0
                                        if (0 / stor14) + (stor10 * stor15 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += 0 / stor14
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0 / stor14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((0 / stor14));
                else:
                    require stor13 * stor15 / stor15 == stor13
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args beneficiaryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (stor10 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += stor10 * stor15 / stor14
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, stor10 * stor15 / stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((stor10 * stor15 / stor14));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (stor11 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += stor11 * stor15 / stor14
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, stor11 * stor15 / stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((stor11 * stor15 / stor14));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor11 * stor15 / stor14 >= 0
                                    if (stor11 * stor15 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += 0 / stor14
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0 / stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((0 / stor14));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor10 * stor15 / stor14 >= 0
                                        require 0 / stor14 >= 0
                                        if (0 / stor14) + (stor10 * stor15 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (stor13 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += stor13 * stor15 / stor14
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, stor13 * stor15 / stor14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((stor13 * stor15 / stor14));
            else:
                require stor12 * stor15 / stor15 == stor12
                require stor14
                if not stor15:
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args beneficiaryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (stor10 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += stor10 * stor15 / stor14
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, stor10 * stor15 / stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((stor10 * stor15 / stor14));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (stor11 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += stor11 * stor15 / stor14
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, stor11 * stor15 / stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((stor11 * stor15 / stor14));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor11 * stor15 / stor14 >= 0
                                    if (stor11 * stor15 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (stor12 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += stor12 * stor15 / stor14
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, stor12 * stor15 / stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((stor12 * stor15 / stor14));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor10 * stor15 / stor14 >= 0
                                        require stor12 * stor15 / stor14 >= 0
                                        if (stor12 * stor15 / stor14) + (stor10 * stor15 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (0 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += 0 / stor14
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0 / stor14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((0 / stor14));
                else:
                    require stor13 * stor15 / stor15 == stor13
                    require stor14
                    if block.timestamp < teamTimeLock:
                        require released[address(arg1)] >= released[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args beneficiaryAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(0);
                    else:
                        require ext_code.size(arg1)
                        call arg1.balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp < sub_71d4975e:
                            if ext_call.return_data[0] != stor15:
                                require released[address(arg1)] >= released[address(arg1)]
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released(0);
                            else:
                                require (stor10 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                released[address(arg1)] += stor10 * stor15 / stor14
                                require ext_code.size(arg1)
                                call arg1.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, stor10 * stor15 / stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Released((stor10 * stor15 / stor14));
                        else:
                            if block.timestamp < sub_c98257fb:
                                require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                    require released[address(arg1)] >= released[address(arg1)]
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(0);
                                else:
                                    require (stor11 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                    released[address(arg1)] += stor11 * stor15 / stor14
                                    require ext_code.size(arg1)
                                    call arg1.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args beneficiaryAddress, stor11 * stor15 / stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((stor11 * stor15 / stor14));
                            else:
                                if block.timestamp < sub_a32af4d0:
                                    require (stor10 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    require stor11 * stor15 / stor14 >= 0
                                    if (stor11 * stor15 / stor14) + (stor10 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                        require released[address(arg1)] >= released[address(arg1)]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(0);
                                    else:
                                        require (stor12 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += stor12 * stor15 / stor14
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, stor12 * stor15 / stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released((stor12 * stor15 / stor14));
                                else:
                                    if block.timestamp >= fiveReserveTimeLock:
                                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                                        released[address(arg1)] += ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args beneficiaryAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Released(ext_call.return_data[0]);
                                    else:
                                        require (stor11 * stor15 / stor14) + ext_call.return_data[0] >= ext_call.return_data[0]
                                        require stor10 * stor15 / stor14 >= 0
                                        require stor12 * stor15 / stor14 >= 0
                                        if (stor12 * stor15 / stor14) + (stor10 * stor15 / stor14) + (stor11 * stor15 / stor14) + ext_call.return_data[0] != stor15:
                                            require released[address(arg1)] >= released[address(arg1)]
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released(0);
                                        else:
                                            require (stor13 * stor15 / stor14) + released[address(arg1)] >= released[address(arg1)]
                                            released[address(arg1)] += stor13 * stor15 / stor14
                                            require ext_code.size(arg1)
                                            call arg1.transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args beneficiaryAddress, stor13 * stor15 / stor14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit Released((stor13 * stor15 / stor14));
}



}
