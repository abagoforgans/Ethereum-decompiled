contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - sub_2e6dbdf9(?)
#
address owner;
uint256 collected;
uint256 stor4;
uint256 stor5;
mapping of struct stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 totalVotes;
uint256 totalWeight;
uint256 totalReward;
uint256 remainder;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
mapping of struct stor18;
address sub_81f4be5eAddress;
uint8 stor20; offset 160
uint8 stor20; offset 168
address projectTokenAddress;

function totalVotes() {
    return totalVotes
}

function projectToken() {
    return projectTokenAddress
}

function totalReward() {
    return totalReward
}

function sub_81f4be5e(?) {
    return sub_81f4be5eAddress
}

function collected() {
    return collected
}

function owner() {
    return owner
}

function totalWeight() {
    return totalWeight
}

function remainder() {
    return remainder
}

function _fallback() payable {
    revert
}

function transferOwner(address arg1) {
    if owner == msg.sender:
        if arg1:
            owner = arg1
}

function sub_2e854433(?) {
    require 1 == bool(uint8(stor20.field_160))
    require stor18[address(msg.sender)].field_512 <= 2
    require stor18[address(msg.sender)].field_512 == 1
    require not uint8(stor20.field_168)
    uint8(stor20.field_168) = 1
    if stor6[stor18[address(msg.sender)].field_0].field_264 <= 0:
        if remainder <= 0:
            stor18[address(msg.sender)].field_512 = 2
            require ext_code.size(projectTokenAddress)
            call projectTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
            require ext_call.success
            require ext_call.return_data[0]
            uint8(stor20.field_168) = 0
            emit 0x5bf2177e: msg.sender, 0
        else:
            require remainder >= 0
            require remainder >= remainder
            remainder = 0
            stor18[address(msg.sender)].field_512 = 2
            require ext_code.size(projectTokenAddress)
            call projectTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, remainder
            require ext_call.success
            require ext_call.return_data[0]
            uint8(stor20.field_168) = 0
            emit 0x5bf2177e: msg.sender, remainder
    else:
        if stor18[address(msg.sender)].field_256:
            require stor18[address(msg.sender)].field_256
            require stor14 * stor18[address(msg.sender)].field_256 / stor18[address(msg.sender)].field_256 == stor14
        require stor14 * stor18[address(msg.sender)].field_256 >= 0
        require stor14 * stor18[address(msg.sender)].field_256 >= stor14 * stor18[address(msg.sender)].field_256
        if stor6[stor18[address(msg.sender)].field_0].field_264 <= 1:
            if remainder <= 0:
                stor18[address(msg.sender)].field_512 = 2
                require ext_code.size(projectTokenAddress)
                call projectTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, stor14 * stor18[address(msg.sender)].field_256
                require ext_call.success
                require ext_call.return_data[0]
                uint8(stor20.field_168) = 0
                emit 0x5bf2177e: msg.sender, stor14 * stor18[address(msg.sender)].field_256
            else:
                require remainder + (stor14 * stor18[address(msg.sender)].field_256) >= stor14 * stor18[address(msg.sender)].field_256
                require remainder + (stor14 * stor18[address(msg.sender)].field_256) >= remainder
                remainder = 0
                stor18[address(msg.sender)].field_512 = 2
                require ext_code.size(projectTokenAddress)
                call projectTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, remainder + (stor14 * stor18[address(msg.sender)].field_256)
                require ext_call.success
                require ext_call.return_data[0]
                uint8(stor20.field_168) = 0
                emit 0x5bf2177e: msg.sender, remainder + (stor14 * stor18[address(msg.sender)].field_256)
        else:
            if stor18[address(msg.sender)].field_256:
                require stor18[address(msg.sender)].field_256
                require stor15 * stor18[address(msg.sender)].field_256 / stor18[address(msg.sender)].field_256 == stor15
            require (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) >= stor14 * stor18[address(msg.sender)].field_256
            require (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) >= stor15 * stor18[address(msg.sender)].field_256
            if stor6[stor18[address(msg.sender)].field_0].field_264 <= 2:
                if remainder <= 0:
                    stor18[address(msg.sender)].field_512 = 2
                    require ext_code.size(projectTokenAddress)
                    call projectTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                    require ext_call.success
                    require ext_call.return_data[0]
                    uint8(stor20.field_168) = 0
                    emit 0x5bf2177e: msg.sender, (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                else:
                    require remainder >= 0
                    require remainder + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) >= remainder
                    remainder = 0
                    stor18[address(msg.sender)].field_512 = 2
                    require ext_code.size(projectTokenAddress)
                    call projectTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, remainder + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                    require ext_call.success
                    require ext_call.return_data[0]
                    uint8(stor20.field_168) = 0
                    emit 0x5bf2177e: msg.sender, remainder + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
            else:
                if stor18[address(msg.sender)].field_256:
                    require stor18[address(msg.sender)].field_256
                    require stor16 * stor18[address(msg.sender)].field_256 / stor18[address(msg.sender)].field_256 == stor16
                require stor16 * stor18[address(msg.sender)].field_256 >= 0
                require (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) >= stor16 * stor18[address(msg.sender)].field_256
                if stor6[stor18[address(msg.sender)].field_0].field_264 <= 3:
                    if remainder <= 0:
                        stor18[address(msg.sender)].field_512 = 2
                        require ext_code.size(projectTokenAddress)
                        call projectTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                        require ext_call.success
                        require ext_call.return_data[0]
                        uint8(stor20.field_168) = 0
                        emit 0x5bf2177e: msg.sender, (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                    else:
                        require remainder >= 0
                        require remainder + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) >= remainder
                        remainder = 0
                        stor18[address(msg.sender)].field_512 = 2
                        require ext_code.size(projectTokenAddress)
                        call projectTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, remainder + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                        require ext_call.success
                        require ext_call.return_data[0]
                        uint8(stor20.field_168) = 0
                        emit 0x5bf2177e: msg.sender, remainder + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                else:
                    if stor18[address(msg.sender)].field_256:
                        require stor18[address(msg.sender)].field_256
                        require stor17 * stor18[address(msg.sender)].field_256 / stor18[address(msg.sender)].field_256 == stor17
                    require stor17 * stor18[address(msg.sender)].field_256 >= 0
                    require (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) >= stor17 * stor18[address(msg.sender)].field_256
                    if remainder <= 0:
                        stor18[address(msg.sender)].field_512 = 2
                        require ext_code.size(projectTokenAddress)
                        call projectTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                        require ext_call.success
                        require ext_call.return_data[0]
                        uint8(stor20.field_168) = 0
                        emit 0x5bf2177e: msg.sender, (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                    else:
                        require remainder >= 0
                        require remainder + (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) >= remainder
                        remainder = 0
                        stor18[address(msg.sender)].field_512 = 2
                        require ext_code.size(projectTokenAddress)
                        call projectTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, remainder + (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                        require ext_call.success
                        require ext_call.return_data[0]
                        uint8(stor20.field_168) = 0
                        emit 0x5bf2177e: msg.sender, remainder + (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
}

function sub_5afb6ba5(?) {
    require 1 == bool(uint8(stor20.field_160))
    if stor6[stor18[address(arg1)].field_0].field_264 <= 0:
        if stor18[address(arg1)].field_512 <= 2:
            return 0, stor18[address(arg1)].field_512
    else:
        if not stor18[address(arg1)].field_256:
            require stor14 * stor18[address(arg1)].field_256 >= 0
            require stor14 * stor18[address(arg1)].field_256 >= stor14 * stor18[address(arg1)].field_256
            if stor6[stor18[address(arg1)].field_0].field_264 <= 1:
                if stor18[address(arg1)].field_512 <= 2:
                    return stor14 * stor18[address(arg1)].field_256, stor18[address(arg1)].field_512
            else:
                if not stor18[address(arg1)].field_256:
                    require (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor14 * stor18[address(arg1)].field_256
                    require (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor15 * stor18[address(arg1)].field_256
                    if stor6[stor18[address(arg1)].field_0].field_264 <= 2:
                        if stor18[address(arg1)].field_512 <= 2:
                            return (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                   stor18[address(arg1)].field_512
                    else:
                        if not stor18[address(arg1)].field_256:
                            require stor16 * stor18[address(arg1)].field_256 >= 0
                            require (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor16 * stor18[address(arg1)].field_256
                            if stor6[stor18[address(arg1)].field_0].field_264 <= 3:
                                if stor18[address(arg1)].field_512 <= 2:
                                    return (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                           stor18[address(arg1)].field_512
                            else:
                                if not stor18[address(arg1)].field_256:
                                    require stor17 * stor18[address(arg1)].field_256 >= 0
                                    require (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor17 * stor18[address(arg1)].field_256
                                    if stor18[address(arg1)].field_512 <= 2:
                                        return (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                               stor18[address(arg1)].field_512
                                else:
                                    if stor18[address(arg1)].field_256:
                                        require stor17 * stor18[address(arg1)].field_256 / stor18[address(arg1)].field_256 == stor17
                                        require stor17 * stor18[address(arg1)].field_256 >= 0
                                        require (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor17 * stor18[address(arg1)].field_256
                                        if stor18[address(arg1)].field_512 <= 2:
                                            return (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                   stor18[address(arg1)].field_512
                        else:
                            if stor18[address(arg1)].field_256:
                                require stor16 * stor18[address(arg1)].field_256 / stor18[address(arg1)].field_256 == stor16
                                require stor16 * stor18[address(arg1)].field_256 >= 0
                                require (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor16 * stor18[address(arg1)].field_256
                                if stor6[stor18[address(arg1)].field_0].field_264 <= 3:
                                    if stor18[address(arg1)].field_512 <= 2:
                                        return (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                               stor18[address(arg1)].field_512
                                else:
                                    if not stor18[address(arg1)].field_256:
                                        require stor17 * stor18[address(arg1)].field_256 >= 0
                                        require (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor17 * stor18[address(arg1)].field_256
                                        if stor18[address(arg1)].field_512 <= 2:
                                            return (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                   stor18[address(arg1)].field_512
                                    else:
                                        if stor18[address(arg1)].field_256:
                                            require stor17 * stor18[address(arg1)].field_256 / stor18[address(arg1)].field_256 == stor17
                                            require stor17 * stor18[address(arg1)].field_256 >= 0
                                            require (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor17 * stor18[address(arg1)].field_256
                                            if stor18[address(arg1)].field_512 <= 2:
                                                return (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                       stor18[address(arg1)].field_512
                else:
                    if stor18[address(arg1)].field_256:
                        require stor15 * stor18[address(arg1)].field_256 / stor18[address(arg1)].field_256 == stor15
                        require (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor14 * stor18[address(arg1)].field_256
                        require (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor15 * stor18[address(arg1)].field_256
                        if stor6[stor18[address(arg1)].field_0].field_264 <= 2:
                            if stor18[address(arg1)].field_512 <= 2:
                                return (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                       stor18[address(arg1)].field_512
                        else:
                            if not stor18[address(arg1)].field_256:
                                require stor16 * stor18[address(arg1)].field_256 >= 0
                                require (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor16 * stor18[address(arg1)].field_256
                                if stor6[stor18[address(arg1)].field_0].field_264 <= 3:
                                    if stor18[address(arg1)].field_512 <= 2:
                                        return (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                               stor18[address(arg1)].field_512
                                else:
                                    if not stor18[address(arg1)].field_256:
                                        require stor17 * stor18[address(arg1)].field_256 >= 0
                                        require (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor17 * stor18[address(arg1)].field_256
                                        if stor18[address(arg1)].field_512 <= 2:
                                            return (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                   stor18[address(arg1)].field_512
                                    else:
                                        if stor18[address(arg1)].field_256:
                                            require stor17 * stor18[address(arg1)].field_256 / stor18[address(arg1)].field_256 == stor17
                                            require stor17 * stor18[address(arg1)].field_256 >= 0
                                            require (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor17 * stor18[address(arg1)].field_256
                                            if stor18[address(arg1)].field_512 <= 2:
                                                return (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                       stor18[address(arg1)].field_512
                            else:
                                if stor18[address(arg1)].field_256:
                                    require stor16 * stor18[address(arg1)].field_256 / stor18[address(arg1)].field_256 == stor16
                                    require stor16 * stor18[address(arg1)].field_256 >= 0
                                    require (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor16 * stor18[address(arg1)].field_256
                                    if stor6[stor18[address(arg1)].field_0].field_264 <= 3:
                                        if stor18[address(arg1)].field_512 <= 2:
                                            return (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                   stor18[address(arg1)].field_512
                                    else:
                                        if not stor18[address(arg1)].field_256:
                                            require stor17 * stor18[address(arg1)].field_256 >= 0
                                            require (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor17 * stor18[address(arg1)].field_256
                                            if stor18[address(arg1)].field_512 <= 2:
                                                return (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                       stor18[address(arg1)].field_512
                                        else:
                                            if stor18[address(arg1)].field_256:
                                                require stor17 * stor18[address(arg1)].field_256 / stor18[address(arg1)].field_256 == stor17
                                                require stor17 * stor18[address(arg1)].field_256 >= 0
                                                require (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor17 * stor18[address(arg1)].field_256
                                                if stor18[address(arg1)].field_512 <= 2:
                                                    return (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                           stor18[address(arg1)].field_512
        else:
            if stor18[address(arg1)].field_256:
                require stor14 * stor18[address(arg1)].field_256 / stor18[address(arg1)].field_256 == stor14
                require stor14 * stor18[address(arg1)].field_256 >= 0
                require stor14 * stor18[address(arg1)].field_256 >= stor14 * stor18[address(arg1)].field_256
                if stor6[stor18[address(arg1)].field_0].field_264 <= 1:
                    if stor18[address(arg1)].field_512 <= 2:
                        return stor14 * stor18[address(arg1)].field_256, stor18[address(arg1)].field_512
                else:
                    if not stor18[address(arg1)].field_256:
                        require (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor14 * stor18[address(arg1)].field_256
                        require (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor15 * stor18[address(arg1)].field_256
                        if stor6[stor18[address(arg1)].field_0].field_264 <= 2:
                            if stor18[address(arg1)].field_512 <= 2:
                                return (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                       stor18[address(arg1)].field_512
                        else:
                            if not stor18[address(arg1)].field_256:
                                require stor16 * stor18[address(arg1)].field_256 >= 0
                                require (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor16 * stor18[address(arg1)].field_256
                                if stor6[stor18[address(arg1)].field_0].field_264 <= 3:
                                    if stor18[address(arg1)].field_512 <= 2:
                                        return (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                               stor18[address(arg1)].field_512
                                else:
                                    if not stor18[address(arg1)].field_256:
                                        require stor17 * stor18[address(arg1)].field_256 >= 0
                                        require (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor17 * stor18[address(arg1)].field_256
                                        if stor18[address(arg1)].field_512 <= 2:
                                            return (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                   stor18[address(arg1)].field_512
                                    else:
                                        if stor18[address(arg1)].field_256:
                                            require stor17 * stor18[address(arg1)].field_256 / stor18[address(arg1)].field_256 == stor17
                                            require stor17 * stor18[address(arg1)].field_256 >= 0
                                            require (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor17 * stor18[address(arg1)].field_256
                                            if stor18[address(arg1)].field_512 <= 2:
                                                return (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                       stor18[address(arg1)].field_512
                            else:
                                if stor18[address(arg1)].field_256:
                                    require stor16 * stor18[address(arg1)].field_256 / stor18[address(arg1)].field_256 == stor16
                                    require stor16 * stor18[address(arg1)].field_256 >= 0
                                    require (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor16 * stor18[address(arg1)].field_256
                                    if stor6[stor18[address(arg1)].field_0].field_264 <= 3:
                                        if stor18[address(arg1)].field_512 <= 2:
                                            return (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                   stor18[address(arg1)].field_512
                                    else:
                                        if not stor18[address(arg1)].field_256:
                                            require stor17 * stor18[address(arg1)].field_256 >= 0
                                            require (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor17 * stor18[address(arg1)].field_256
                                            if stor18[address(arg1)].field_512 <= 2:
                                                return (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                       stor18[address(arg1)].field_512
                                        else:
                                            if stor18[address(arg1)].field_256:
                                                require stor17 * stor18[address(arg1)].field_256 / stor18[address(arg1)].field_256 == stor17
                                                require stor17 * stor18[address(arg1)].field_256 >= 0
                                                require (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor17 * stor18[address(arg1)].field_256
                                                if stor18[address(arg1)].field_512 <= 2:
                                                    return (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                           stor18[address(arg1)].field_512
                    else:
                        if stor18[address(arg1)].field_256:
                            require stor15 * stor18[address(arg1)].field_256 / stor18[address(arg1)].field_256 == stor15
                            require (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor14 * stor18[address(arg1)].field_256
                            require (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor15 * stor18[address(arg1)].field_256
                            if stor6[stor18[address(arg1)].field_0].field_264 <= 2:
                                if stor18[address(arg1)].field_512 <= 2:
                                    return (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                           stor18[address(arg1)].field_512
                            else:
                                if not stor18[address(arg1)].field_256:
                                    require stor16 * stor18[address(arg1)].field_256 >= 0
                                    require (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor16 * stor18[address(arg1)].field_256
                                    if stor6[stor18[address(arg1)].field_0].field_264 <= 3:
                                        if stor18[address(arg1)].field_512 <= 2:
                                            return (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                   stor18[address(arg1)].field_512
                                    else:
                                        if not stor18[address(arg1)].field_256:
                                            require stor17 * stor18[address(arg1)].field_256 >= 0
                                            require (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor17 * stor18[address(arg1)].field_256
                                            if stor18[address(arg1)].field_512 <= 2:
                                                return (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                       stor18[address(arg1)].field_512
                                        else:
                                            if stor18[address(arg1)].field_256:
                                                require stor17 * stor18[address(arg1)].field_256 / stor18[address(arg1)].field_256 == stor17
                                                require stor17 * stor18[address(arg1)].field_256 >= 0
                                                require (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor17 * stor18[address(arg1)].field_256
                                                if stor18[address(arg1)].field_512 <= 2:
                                                    return (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                           stor18[address(arg1)].field_512
                                else:
                                    if stor18[address(arg1)].field_256:
                                        require stor16 * stor18[address(arg1)].field_256 / stor18[address(arg1)].field_256 == stor16
                                        require stor16 * stor18[address(arg1)].field_256 >= 0
                                        require (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor16 * stor18[address(arg1)].field_256
                                        if stor6[stor18[address(arg1)].field_0].field_264 <= 3:
                                            if stor18[address(arg1)].field_512 <= 2:
                                                return (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                       stor18[address(arg1)].field_512
                                        else:
                                            if not stor18[address(arg1)].field_256:
                                                require stor17 * stor18[address(arg1)].field_256 >= 0
                                                require (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor17 * stor18[address(arg1)].field_256
                                                if stor18[address(arg1)].field_512 <= 2:
                                                    return (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                           stor18[address(arg1)].field_512
                                            else:
                                                if stor18[address(arg1)].field_256:
                                                    require stor17 * stor18[address(arg1)].field_256 / stor18[address(arg1)].field_256 == stor17
                                                    require stor17 * stor18[address(arg1)].field_256 >= 0
                                                    require (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256) >= stor17 * stor18[address(arg1)].field_256
                                                    if stor18[address(arg1)].field_512 <= 2:
                                                        return (stor17 * stor18[address(arg1)].field_256) + (stor16 * stor18[address(arg1)].field_256) + (stor15 * stor18[address(arg1)].field_256) + (stor14 * stor18[address(arg1)].field_256), 
                                                               stor18[address(arg1)].field_512
    revert
}

function sub_47799092(?) {
    if msg.sender == owner:
        require not uint8(stor20.field_160)
        require ext_code.size(sub_81f4be5eAddress)
        call sub_81f4be5eAddress.0xa620fcc7 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require arg1 < ext_call.return_data[0]
        require totalVotes < ext_call.return_data[0]
        require ext_code.size(sub_81f4be5eAddress)
        call sub_81f4be5eAddress.get(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_call.return_data[204 len 20]
        require stor18[ext_call.return_data[204 len 20]].field_512 <= 2
        require not stor18[ext_call.return_data[204 len 20]].field_512
        require stor9
        if ext_call.return_data[0] < stor7:
            require stor6[stor7].field_272
            require ext_call.return_data[64] >= ext_call.return_data[32]
            require ext_call.return_data[64] >= stor4
            require ext_call.return_data[64] <= stor4 + stor5
            require (ext_call.return_data[96] / 10^18) + 100 >= ext_call.return_data[96] / 10^18
            require (ext_call.return_data[96] / 10^18) + 100 >= 100
            require stor4 <= ext_call.return_data[64]
            require ext_call.return_data[64] - stor4 <= stor5
            require (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / 300 == stor5 - ext_call.return_data[64] + stor4
            require stor5
            require ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000 >= (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5
            require ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000 >= 1000
            if ext_call.return_data[64] == ext_call.return_data[32]:
                if (ext_call.return_data[96] / 10^18) + 100 / 100:
                    require (ext_call.return_data[96] / 10^18) + 100 / 100
                    require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (ext_call.return_data[96] / 10^18) + 100 / 100 == ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000
                if (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100):
                    require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100)
                    require (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) == 1000
                emit 0x9436b47a: ext_call.return_data[96], (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6, ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000, 1000
                require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + stor6[stor7].field_0 >= stor6[stor7].field_0
                require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + stor6[stor7].field_0 >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                stor6[stor7].field_0 += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + totalWeight >= totalWeight
                require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + totalWeight >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                totalWeight += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                totalVotes++
                stor18[address(ext_call.return_data[192])].field_0 = stor7
                stor18[address(ext_call.return_data[192])].field_256 = (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                stor18[address(ext_call.return_data[192])].field_512 = 1
                emit 0x9ec97c38: address(ext_call.return_data[192]), ext_call.return_data[0], stor7, (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
            else:
                require ext_call.return_data[32] <= ext_call.return_data[64]
                require (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / 200 == ext_call.return_data[64] - ext_call.return_data[32]
                require stor5
                require (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5 <= 1000
                if (ext_call.return_data[96] / 10^18) + 100 / 100:
                    require (ext_call.return_data[96] / 10^18) + 100 / 100
                    require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (ext_call.return_data[96] / 10^18) + 100 / 100 == ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000
                if (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100):
                    require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100)
                    require (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) == -((200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) + 1000
                emit 0x9436b47a: ext_call.return_data[96], (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6, ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000, -((200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) + 1000
                require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + stor6[stor7].field_0 >= stor6[stor7].field_0
                require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + stor6[stor7].field_0 >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                stor6[stor7].field_0 += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + totalWeight >= totalWeight
                require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + totalWeight >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                totalWeight += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                totalVotes++
                stor18[address(ext_call.return_data[192])].field_0 = stor7
                stor18[address(ext_call.return_data[192])].field_256 = (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                stor18[address(ext_call.return_data[192])].field_512 = 1
                emit 0x9ec97c38: address(ext_call.return_data[192]), ext_call.return_data[0], stor7, (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
        else:
            if ext_call.return_data[0] > stor8:
                require stor6[stor8].field_272
                require ext_call.return_data[64] >= ext_call.return_data[32]
                require ext_call.return_data[64] >= stor4
                require ext_call.return_data[64] <= stor4 + stor5
                require (ext_call.return_data[96] / 10^18) + 100 >= ext_call.return_data[96] / 10^18
                require (ext_call.return_data[96] / 10^18) + 100 >= 100
                require stor4 <= ext_call.return_data[64]
                require ext_call.return_data[64] - stor4 <= stor5
                require (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / 300 == stor5 - ext_call.return_data[64] + stor4
                require stor5
                require ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000 >= (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5
                require ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000 >= 1000
                if ext_call.return_data[64] == ext_call.return_data[32]:
                    if (ext_call.return_data[96] / 10^18) + 100 / 100:
                        require (ext_call.return_data[96] / 10^18) + 100 / 100
                        require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (ext_call.return_data[96] / 10^18) + 100 / 100 == ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000
                    if (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100):
                        require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100)
                        require (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) == 1000
                    emit 0x9436b47a: ext_call.return_data[96], (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6, ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000, 1000
                    require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + stor6[stor8].field_0 >= stor6[stor8].field_0
                    require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + stor6[stor8].field_0 >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                    stor6[stor8].field_0 += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                    require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + totalWeight >= totalWeight
                    require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + totalWeight >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                    totalWeight += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                    totalVotes++
                    stor18[address(ext_call.return_data[192])].field_0 = stor8
                    stor18[address(ext_call.return_data[192])].field_256 = (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                    stor18[address(ext_call.return_data[192])].field_512 = 1
                    emit 0x9ec97c38: address(ext_call.return_data[192]), ext_call.return_data[0], stor8, (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                else:
                    require ext_call.return_data[32] <= ext_call.return_data[64]
                    require (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / 200 == ext_call.return_data[64] - ext_call.return_data[32]
                    require stor5
                    require (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5 <= 1000
                    if (ext_call.return_data[96] / 10^18) + 100 / 100:
                        require (ext_call.return_data[96] / 10^18) + 100 / 100
                        require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (ext_call.return_data[96] / 10^18) + 100 / 100 == ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000
                    if (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100):
                        require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100)
                        require (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) == -((200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) + 1000
                    emit 0x9436b47a: ext_call.return_data[96], (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6, ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000, -((200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) + 1000
                    require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + stor6[stor8].field_0 >= stor6[stor8].field_0
                    require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + stor6[stor8].field_0 >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                    stor6[stor8].field_0 += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                    require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + totalWeight >= totalWeight
                    require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + totalWeight >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                    totalWeight += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                    totalVotes++
                    stor18[address(ext_call.return_data[192])].field_0 = stor8
                    stor18[address(ext_call.return_data[192])].field_256 = (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                    stor18[address(ext_call.return_data[192])].field_512 = 1
                    emit 0x9ec97c38: address(ext_call.return_data[192]), ext_call.return_data[0], stor8, (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
            else:
                if not ext_call.return_data[0] % stor9:
                    require stor6[ext_call.return_data[0]].field_272
                    require ext_call.return_data[64] >= ext_call.return_data[32]
                    require ext_call.return_data[64] >= stor4
                    require ext_call.return_data[64] <= stor4 + stor5
                    require (ext_call.return_data[96] / 10^18) + 100 >= ext_call.return_data[96] / 10^18
                    require (ext_call.return_data[96] / 10^18) + 100 >= 100
                    require stor4 <= ext_call.return_data[64]
                    require ext_call.return_data[64] - stor4 <= stor5
                    require (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / 300 == stor5 - ext_call.return_data[64] + stor4
                    require stor5
                    require ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000 >= (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5
                    require ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000 >= 1000
                    if ext_call.return_data[64] == ext_call.return_data[32]:
                        if (ext_call.return_data[96] / 10^18) + 100 / 100:
                            require (ext_call.return_data[96] / 10^18) + 100 / 100
                            require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (ext_call.return_data[96] / 10^18) + 100 / 100 == ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000
                        if (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100):
                            require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100)
                            require (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) == 1000
                        emit 0x9436b47a: ext_call.return_data[96], (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6, ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000, 1000
                        require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + stor6[ext_call.return_data[0]].field_0 >= stor6[ext_call.return_data[0]].field_0
                        require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + stor6[ext_call.return_data[0]].field_0 >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                        stor6[ext_call.return_data[0]].field_0 += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                        require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + totalWeight >= totalWeight
                        require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + totalWeight >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                        totalWeight += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                        totalVotes++
                        stor18[address(ext_call.return_data[192])].field_0 = ext_call.return_data[0]
                        stor18[address(ext_call.return_data[192])].field_256 = (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                        stor18[address(ext_call.return_data[192])].field_512 = 1
                        emit 0x9ec97c38: address(ext_call.return_data[192]), ext_call.return_data[0], ext_call.return_data[0], (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                    else:
                        require ext_call.return_data[32] <= ext_call.return_data[64]
                        require (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / 200 == ext_call.return_data[64] - ext_call.return_data[32]
                        require stor5
                        require (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5 <= 1000
                        if (ext_call.return_data[96] / 10^18) + 100 / 100:
                            require (ext_call.return_data[96] / 10^18) + 100 / 100
                            require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (ext_call.return_data[96] / 10^18) + 100 / 100 == ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000
                        if (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100):
                            require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100)
                            require (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) == -((200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) + 1000
                        emit 0x9436b47a: ext_call.return_data[96], (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6, ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000, -((200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) + 1000
                        require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + stor6[ext_call.return_data[0]].field_0 >= stor6[ext_call.return_data[0]].field_0
                        require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + stor6[ext_call.return_data[0]].field_0 >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                        stor6[ext_call.return_data[0]].field_0 += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                        require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + totalWeight >= totalWeight
                        require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + totalWeight >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                        totalWeight += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                        totalVotes++
                        stor18[address(ext_call.return_data[192])].field_0 = ext_call.return_data[0]
                        stor18[address(ext_call.return_data[192])].field_256 = (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                        stor18[address(ext_call.return_data[192])].field_512 = 1
                        emit 0x9ec97c38: address(ext_call.return_data[192]), ext_call.return_data[0], ext_call.return_data[0], (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                else:
                    require ext_call.return_data[0] % stor9 <= ext_call.return_data[0]
                    if ext_call.return_data[0] - (ext_call.return_data[0] % stor9) >= collected:
                        require stor6[ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_272
                        require ext_call.return_data[64] >= ext_call.return_data[32]
                        require ext_call.return_data[64] >= stor4
                        require ext_call.return_data[64] <= stor4 + stor5
                        require (ext_call.return_data[96] / 10^18) + 100 >= ext_call.return_data[96] / 10^18
                        require (ext_call.return_data[96] / 10^18) + 100 >= 100
                        require stor4 <= ext_call.return_data[64]
                        require ext_call.return_data[64] - stor4 <= stor5
                        require (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / 300 == stor5 - ext_call.return_data[64] + stor4
                        require stor5
                        require ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000 >= (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5
                        require ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000 >= 1000
                        if ext_call.return_data[64] == ext_call.return_data[32]:
                            if (ext_call.return_data[96] / 10^18) + 100 / 100:
                                require (ext_call.return_data[96] / 10^18) + 100 / 100
                                require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (ext_call.return_data[96] / 10^18) + 100 / 100 == ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000
                            if (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100):
                                require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100)
                                require (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) == 1000
                            emit 0x9436b47a: ext_call.return_data[96], (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6, ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000, 1000
                            require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + stor6[ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 >= stor6[ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0
                            require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + stor6[ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                            stor6[ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                            require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + totalWeight >= totalWeight
                            require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + totalWeight >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                            totalWeight += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                            totalVotes++
                            stor18[address(ext_call.return_data[192])].field_0 = ext_call.return_data[0] - (ext_call.return_data[0] % stor9)
                            stor18[address(ext_call.return_data[192])].field_256 = (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                            stor18[address(ext_call.return_data[192])].field_512 = 1
                            emit 0x9ec97c38: address(ext_call.return_data[192]), ext_call.return_data[0], ext_call.return_data[0] - (ext_call.return_data[0] % stor9), (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                        else:
                            require ext_call.return_data[32] <= ext_call.return_data[64]
                            require (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / 200 == ext_call.return_data[64] - ext_call.return_data[32]
                            require stor5
                            require (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5 <= 1000
                            if (ext_call.return_data[96] / 10^18) + 100 / 100:
                                require (ext_call.return_data[96] / 10^18) + 100 / 100
                                require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (ext_call.return_data[96] / 10^18) + 100 / 100 == ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000
                            if (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100):
                                require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100)
                                require (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) == -((200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) + 1000
                            emit 0x9436b47a: ext_call.return_data[96], (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6, ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000, -((200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) + 1000
                            require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + stor6[ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 >= stor6[ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0
                            require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + stor6[ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                            stor6[ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                            require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + totalWeight >= totalWeight
                            require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + totalWeight >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                            totalWeight += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                            totalVotes++
                            stor18[address(ext_call.return_data[192])].field_0 = ext_call.return_data[0] - (ext_call.return_data[0] % stor9)
                            stor18[address(ext_call.return_data[192])].field_256 = (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                            stor18[address(ext_call.return_data[192])].field_512 = 1
                            emit 0x9ec97c38: address(ext_call.return_data[192]), ext_call.return_data[0], ext_call.return_data[0] - (ext_call.return_data[0] % stor9), (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                    else:
                        require stor9 >= 0
                        require stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9) >= stor9
                        require stor6[stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_272
                        require ext_call.return_data[64] >= ext_call.return_data[32]
                        require ext_call.return_data[64] >= stor4
                        require ext_call.return_data[64] <= stor4 + stor5
                        require (ext_call.return_data[96] / 10^18) + 100 >= ext_call.return_data[96] / 10^18
                        require (ext_call.return_data[96] / 10^18) + 100 >= 100
                        require stor4 <= ext_call.return_data[64]
                        require ext_call.return_data[64] - stor4 <= stor5
                        require (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / 300 == stor5 - ext_call.return_data[64] + stor4
                        require stor5
                        require ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000 >= (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5
                        require ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000 >= 1000
                        if ext_call.return_data[64] == ext_call.return_data[32]:
                            if (ext_call.return_data[96] / 10^18) + 100 / 100:
                                require (ext_call.return_data[96] / 10^18) + 100 / 100
                                require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (ext_call.return_data[96] / 10^18) + 100 / 100 == ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000
                            if (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100):
                                require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100)
                                require (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) == 1000
                            emit 0x9436b47a: ext_call.return_data[96], (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6, ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000, 1000
                            require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + stor6[stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 >= stor6[stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0
                            require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + stor6[stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                            stor6[stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                            require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + totalWeight >= totalWeight
                            require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6) + totalWeight >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                            totalWeight += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                            totalVotes++
                            stor18[address(ext_call.return_data[192])].field_0 = stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9)
                            stor18[address(ext_call.return_data[192])].field_256 = (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                            stor18[address(ext_call.return_data[192])].field_512 = 1
                            emit 0x9ec97c38: address(ext_call.return_data[192]), ext_call.return_data[0], stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9), (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 10^6
                        else:
                            require ext_call.return_data[32] <= ext_call.return_data[64]
                            require (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / 200 == ext_call.return_data[64] - ext_call.return_data[32]
                            require stor5
                            require (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5 <= 1000
                            if (ext_call.return_data[96] / 10^18) + 100 / 100:
                                require (ext_call.return_data[96] / 10^18) + 100 / 100
                                require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (ext_call.return_data[96] / 10^18) + 100 / 100 == ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000
                            if (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100):
                                require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100)
                                require (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) == -((200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) + 1000
                            emit 0x9436b47a: ext_call.return_data[96], (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6, ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5) + 1000, -((200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) + 1000
                            require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + stor6[stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 >= stor6[stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0
                            require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + stor6[stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                            stor6[stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                            require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + totalWeight >= totalWeight
                            require ((10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6) + totalWeight >= (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                            totalWeight += (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                            totalVotes++
                            stor18[address(ext_call.return_data[192])].field_0 = stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9)
                            stor18[address(ext_call.return_data[192])].field_256 = (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
                            stor18[address(ext_call.return_data[192])].field_512 = 1
                            emit 0x9ec97c38: address(ext_call.return_data[192]), ext_call.return_data[0], stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9), (10^6 * (ext_call.return_data[96] / 10^18) + 100 / 100) + (1000 * (300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) - (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) - ((300 * stor5) - (300 * ext_call.return_data[64]) + (300 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100 * (200 * ext_call.return_data[64]) - (200 * ext_call.return_data[32]) / stor5) / 10^6
}



}
