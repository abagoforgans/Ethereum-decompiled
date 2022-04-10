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
uint256 minReward;
uint256 stor5;
uint256 stor6;
mapping of struct stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 weiBalance;
uint256 totalVotes;
uint256 totalWeight;
uint256 totalReward;
uint256 remainder;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
mapping of struct stor20;
address sub_81f4be5eAddress;
uint8 stor22; offset 160
uint8 stor22; offset 168
address projectTokenAddress;
uint256 sub_b8837957;

function totalVotes() {
    return totalVotes
}

function weiBalance() {
    return weiBalance
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

function sub_b8837957(?) {
    return sub_b8837957
}

function minReward() {
    return minReward
}

function _fallback() payable {
    weiBalance += msg.value
}

function transferOwner(address arg1) {
    if owner == msg.sender:
        if arg1:
            owner = arg1
}

function sub_2e854433(?) {
    require 1 == bool(uint8(stor22.field_160))
    require stor20[address(msg.sender)].field_512 <= 2
    require stor20[address(msg.sender)].field_512 == 1
    require not uint8(stor22.field_168)
    uint8(stor22.field_168) = 1
    if stor7[stor20[address(msg.sender)].field_0].field_264 <= 0:
        if remainder <= 0:
            require minReward <= weiBalance
            weiBalance -= minReward
            stor20[address(msg.sender)].field_512 = 2
            if minReward:
                require minReward
                require sub_b8837957 * minReward / minReward == sub_b8837957
            require ext_code.size(projectTokenAddress)
            call projectTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, sub_b8837957 * minReward
            require ext_call.success
            require ext_call.return_data[0]
            call msg.sender with:
               value minReward wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            uint8(stor22.field_168) = 0
            emit 0x5bf2177e: msg.sender, minReward
        else:
            require remainder + minReward >= minReward
            require remainder + minReward >= remainder
            remainder = 0
            require remainder + minReward <= weiBalance
            weiBalance = weiBalance - remainder - minReward
            stor20[address(msg.sender)].field_512 = 2
            if remainder + minReward:
                require remainder + minReward
                require (remainder * sub_b8837957) + (minReward * sub_b8837957) / remainder + minReward == sub_b8837957
            require ext_code.size(projectTokenAddress)
            call projectTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (remainder * sub_b8837957) + (minReward * sub_b8837957)
            require ext_call.success
            require ext_call.return_data[0]
            call msg.sender with:
               value remainder + minReward wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            uint8(stor22.field_168) = 0
            emit 0x5bf2177e: msg.sender, remainder + minReward
    else:
        if stor20[address(msg.sender)].field_256:
            require stor20[address(msg.sender)].field_256
            require stor16 * stor20[address(msg.sender)].field_256 / stor20[address(msg.sender)].field_256 == stor16
        require (stor16 * stor20[address(msg.sender)].field_256) + minReward >= minReward
        require (stor16 * stor20[address(msg.sender)].field_256) + minReward >= stor16 * stor20[address(msg.sender)].field_256
        if stor7[stor20[address(msg.sender)].field_0].field_264 <= 1:
            if remainder <= 0:
                require (stor16 * stor20[address(msg.sender)].field_256) + minReward <= weiBalance
                weiBalance = weiBalance - (stor16 * stor20[address(msg.sender)].field_256) - minReward
                stor20[address(msg.sender)].field_512 = 2
                if (stor16 * stor20[address(msg.sender)].field_256) + minReward:
                    require (stor16 * stor20[address(msg.sender)].field_256) + minReward
                    require (stor16 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (minReward * sub_b8837957) / (stor16 * stor20[address(msg.sender)].field_256) + minReward == sub_b8837957
                require ext_code.size(projectTokenAddress)
                call projectTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (stor16 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (minReward * sub_b8837957)
                require ext_call.success
                require ext_call.return_data[0]
                call msg.sender with:
                   value (stor16 * stor20[address(msg.sender)].field_256) + minReward wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                uint8(stor22.field_168) = 0
                emit 0x5bf2177e: msg.sender, (stor16 * stor20[address(msg.sender)].field_256) + minReward
            else:
                require remainder >= 0
                require remainder + (stor16 * stor20[address(msg.sender)].field_256) + minReward >= remainder
                remainder = 0
                require remainder + (stor16 * stor20[address(msg.sender)].field_256) + minReward <= weiBalance
                weiBalance = weiBalance - remainder - (stor16 * stor20[address(msg.sender)].field_256) - minReward
                stor20[address(msg.sender)].field_512 = 2
                if remainder + (stor16 * stor20[address(msg.sender)].field_256) + minReward:
                    require remainder + (stor16 * stor20[address(msg.sender)].field_256) + minReward
                    require (remainder * sub_b8837957) + (stor16 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (minReward * sub_b8837957) / remainder + (stor16 * stor20[address(msg.sender)].field_256) + minReward == sub_b8837957
                require ext_code.size(projectTokenAddress)
                call projectTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (remainder * sub_b8837957) + (stor16 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (minReward * sub_b8837957)
                require ext_call.success
                require ext_call.return_data[0]
                call msg.sender with:
                   value remainder + (stor16 * stor20[address(msg.sender)].field_256) + minReward wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                uint8(stor22.field_168) = 0
                emit 0x5bf2177e: msg.sender, remainder + (stor16 * stor20[address(msg.sender)].field_256) + minReward
        else:
            if stor20[address(msg.sender)].field_256:
                require stor20[address(msg.sender)].field_256
                require stor17 * stor20[address(msg.sender)].field_256 / stor20[address(msg.sender)].field_256 == stor17
            require stor17 * stor20[address(msg.sender)].field_256 >= 0
            require (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward >= stor17 * stor20[address(msg.sender)].field_256
            if stor7[stor20[address(msg.sender)].field_0].field_264 <= 2:
                if remainder <= 0:
                    require (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward <= weiBalance
                    weiBalance = weiBalance - (stor17 * stor20[address(msg.sender)].field_256) - (stor16 * stor20[address(msg.sender)].field_256) - minReward
                    stor20[address(msg.sender)].field_512 = 2
                    if (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward:
                        require (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward
                        require (stor17 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor16 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (minReward * sub_b8837957) / (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward == sub_b8837957
                    require ext_code.size(projectTokenAddress)
                    call projectTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (stor17 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor16 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (minReward * sub_b8837957)
                    require ext_call.success
                    require ext_call.return_data[0]
                    call msg.sender with:
                       value (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    uint8(stor22.field_168) = 0
                    emit 0x5bf2177e: msg.sender, (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward
                else:
                    require remainder >= 0
                    require remainder + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward >= remainder
                    remainder = 0
                    require remainder + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward <= weiBalance
                    weiBalance = weiBalance - remainder - (stor17 * stor20[address(msg.sender)].field_256) - (stor16 * stor20[address(msg.sender)].field_256) - minReward
                    stor20[address(msg.sender)].field_512 = 2
                    if remainder + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward:
                        require remainder + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward
                        require (remainder * sub_b8837957) + (stor17 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor16 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (minReward * sub_b8837957) / remainder + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward == sub_b8837957
                    require ext_code.size(projectTokenAddress)
                    call projectTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (remainder * sub_b8837957) + (stor17 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor16 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (minReward * sub_b8837957)
                    require ext_call.success
                    require ext_call.return_data[0]
                    call msg.sender with:
                       value remainder + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    uint8(stor22.field_168) = 0
                    emit 0x5bf2177e: msg.sender, remainder + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward
            else:
                if stor20[address(msg.sender)].field_256:
                    require stor20[address(msg.sender)].field_256
                    require stor18 * stor20[address(msg.sender)].field_256 / stor20[address(msg.sender)].field_256 == stor18
                require stor18 * stor20[address(msg.sender)].field_256 >= 0
                require (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward >= stor18 * stor20[address(msg.sender)].field_256
                if stor7[stor20[address(msg.sender)].field_0].field_264 <= 3:
                    if remainder <= 0:
                        require (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward <= weiBalance
                        weiBalance = weiBalance - (stor18 * stor20[address(msg.sender)].field_256) - (stor17 * stor20[address(msg.sender)].field_256) - (stor16 * stor20[address(msg.sender)].field_256) - minReward
                        stor20[address(msg.sender)].field_512 = 2
                        if (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward:
                            require (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward
                            require (stor18 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor17 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor16 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (minReward * sub_b8837957) / (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward == sub_b8837957
                        require ext_code.size(projectTokenAddress)
                        call projectTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (stor18 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor17 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor16 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (minReward * sub_b8837957)
                        require ext_call.success
                        require ext_call.return_data[0]
                        call msg.sender with:
                           value (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        uint8(stor22.field_168) = 0
                        emit 0x5bf2177e: msg.sender, (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward
                    else:
                        require remainder >= 0
                        require remainder + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward >= remainder
                        remainder = 0
                        require remainder + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward <= weiBalance
                        weiBalance = weiBalance - remainder - (stor18 * stor20[address(msg.sender)].field_256) - (stor17 * stor20[address(msg.sender)].field_256) - (stor16 * stor20[address(msg.sender)].field_256) - minReward
                        stor20[address(msg.sender)].field_512 = 2
                        if remainder + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward:
                            require remainder + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward
                            require (remainder * sub_b8837957) + (stor18 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor17 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor16 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (minReward * sub_b8837957) / remainder + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward == sub_b8837957
                        require ext_code.size(projectTokenAddress)
                        call projectTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (remainder * sub_b8837957) + (stor18 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor17 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor16 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (minReward * sub_b8837957)
                        require ext_call.success
                        require ext_call.return_data[0]
                        call msg.sender with:
                           value remainder + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        uint8(stor22.field_168) = 0
                        emit 0x5bf2177e: msg.sender, remainder + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward
                else:
                    if stor20[address(msg.sender)].field_256:
                        require stor20[address(msg.sender)].field_256
                        require stor19 * stor20[address(msg.sender)].field_256 / stor20[address(msg.sender)].field_256 == stor19
                    require stor19 * stor20[address(msg.sender)].field_256 >= 0
                    require (stor19 * stor20[address(msg.sender)].field_256) + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward >= stor19 * stor20[address(msg.sender)].field_256
                    if remainder <= 0:
                        require (stor19 * stor20[address(msg.sender)].field_256) + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward <= weiBalance
                        weiBalance = weiBalance - (stor19 * stor20[address(msg.sender)].field_256) - (stor18 * stor20[address(msg.sender)].field_256) - (stor17 * stor20[address(msg.sender)].field_256) - (stor16 * stor20[address(msg.sender)].field_256) - minReward
                        stor20[address(msg.sender)].field_512 = 2
                        if (stor19 * stor20[address(msg.sender)].field_256) + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward:
                            require (stor19 * stor20[address(msg.sender)].field_256) + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward
                            require (stor19 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor18 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor17 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor16 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (minReward * sub_b8837957) / (stor19 * stor20[address(msg.sender)].field_256) + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward == sub_b8837957
                        require ext_code.size(projectTokenAddress)
                        call projectTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (stor19 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor18 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor17 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor16 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (minReward * sub_b8837957)
                        require ext_call.success
                        require ext_call.return_data[0]
                        call msg.sender with:
                           value (stor19 * stor20[address(msg.sender)].field_256) + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        uint8(stor22.field_168) = 0
                        emit 0x5bf2177e: msg.sender, (stor19 * stor20[address(msg.sender)].field_256) + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward
                    else:
                        require remainder >= 0
                        require remainder + (stor19 * stor20[address(msg.sender)].field_256) + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward >= remainder
                        remainder = 0
                        require remainder + (stor19 * stor20[address(msg.sender)].field_256) + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward <= weiBalance
                        weiBalance = weiBalance - remainder - (stor19 * stor20[address(msg.sender)].field_256) - (stor18 * stor20[address(msg.sender)].field_256) - (stor17 * stor20[address(msg.sender)].field_256) - (stor16 * stor20[address(msg.sender)].field_256) - minReward
                        stor20[address(msg.sender)].field_512 = 2
                        if remainder + (stor19 * stor20[address(msg.sender)].field_256) + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward:
                            require remainder + (stor19 * stor20[address(msg.sender)].field_256) + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward
                            require (remainder * sub_b8837957) + (stor19 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor18 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor17 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor16 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (minReward * sub_b8837957) / remainder + (stor19 * stor20[address(msg.sender)].field_256) + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward == sub_b8837957
                        require ext_code.size(projectTokenAddress)
                        call projectTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (remainder * sub_b8837957) + (stor19 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor18 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor17 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (stor16 * stor20[address(msg.sender)].field_256 * sub_b8837957) + (minReward * sub_b8837957)
                        require ext_call.success
                        require ext_call.return_data[0]
                        call msg.sender with:
                           value remainder + (stor19 * stor20[address(msg.sender)].field_256) + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        uint8(stor22.field_168) = 0
                        emit 0x5bf2177e: msg.sender, remainder + (stor19 * stor20[address(msg.sender)].field_256) + (stor18 * stor20[address(msg.sender)].field_256) + (stor17 * stor20[address(msg.sender)].field_256) + (stor16 * stor20[address(msg.sender)].field_256) + minReward
}

function sub_5afb6ba5(?) {
    require 1 == bool(uint8(stor22.field_160))
    if stor7[stor20[address(arg1)].field_0].field_264 <= 0:
        if stor20[address(arg1)].field_512 <= 2:
            return minReward, stor20[address(arg1)].field_512
    else:
        if not stor20[address(arg1)].field_256:
            require (stor16 * stor20[address(arg1)].field_256) + minReward >= minReward
            require (stor16 * stor20[address(arg1)].field_256) + minReward >= stor16 * stor20[address(arg1)].field_256
            if stor7[stor20[address(arg1)].field_0].field_264 <= 1:
                if stor20[address(arg1)].field_512 <= 2:
                    return (stor16 * stor20[address(arg1)].field_256) + minReward, stor20[address(arg1)].field_512
            else:
                if not stor20[address(arg1)].field_256:
                    require stor17 * stor20[address(arg1)].field_256 >= 0
                    require (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor17 * stor20[address(arg1)].field_256
                    if stor7[stor20[address(arg1)].field_0].field_264 <= 2:
                        if stor20[address(arg1)].field_512 <= 2:
                            return (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                   stor20[address(arg1)].field_512
                    else:
                        if not stor20[address(arg1)].field_256:
                            require stor18 * stor20[address(arg1)].field_256 >= 0
                            require (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor18 * stor20[address(arg1)].field_256
                            if stor7[stor20[address(arg1)].field_0].field_264 <= 3:
                                if stor20[address(arg1)].field_512 <= 2:
                                    return (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                           stor20[address(arg1)].field_512
                            else:
                                if not stor20[address(arg1)].field_256:
                                    require stor19 * stor20[address(arg1)].field_256 >= 0
                                    require (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor19 * stor20[address(arg1)].field_256
                                    if stor20[address(arg1)].field_512 <= 2:
                                        return (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                               stor20[address(arg1)].field_512
                                else:
                                    if stor20[address(arg1)].field_256:
                                        require stor19 * stor20[address(arg1)].field_256 / stor20[address(arg1)].field_256 == stor19
                                        require stor19 * stor20[address(arg1)].field_256 >= 0
                                        require (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor19 * stor20[address(arg1)].field_256
                                        if stor20[address(arg1)].field_512 <= 2:
                                            return (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                   stor20[address(arg1)].field_512
                        else:
                            if stor20[address(arg1)].field_256:
                                require stor18 * stor20[address(arg1)].field_256 / stor20[address(arg1)].field_256 == stor18
                                require stor18 * stor20[address(arg1)].field_256 >= 0
                                require (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor18 * stor20[address(arg1)].field_256
                                if stor7[stor20[address(arg1)].field_0].field_264 <= 3:
                                    if stor20[address(arg1)].field_512 <= 2:
                                        return (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                               stor20[address(arg1)].field_512
                                else:
                                    if not stor20[address(arg1)].field_256:
                                        require stor19 * stor20[address(arg1)].field_256 >= 0
                                        require (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor19 * stor20[address(arg1)].field_256
                                        if stor20[address(arg1)].field_512 <= 2:
                                            return (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                   stor20[address(arg1)].field_512
                                    else:
                                        if stor20[address(arg1)].field_256:
                                            require stor19 * stor20[address(arg1)].field_256 / stor20[address(arg1)].field_256 == stor19
                                            require stor19 * stor20[address(arg1)].field_256 >= 0
                                            require (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor19 * stor20[address(arg1)].field_256
                                            if stor20[address(arg1)].field_512 <= 2:
                                                return (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                       stor20[address(arg1)].field_512
                else:
                    if stor20[address(arg1)].field_256:
                        require stor17 * stor20[address(arg1)].field_256 / stor20[address(arg1)].field_256 == stor17
                        require stor17 * stor20[address(arg1)].field_256 >= 0
                        require (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor17 * stor20[address(arg1)].field_256
                        if stor7[stor20[address(arg1)].field_0].field_264 <= 2:
                            if stor20[address(arg1)].field_512 <= 2:
                                return (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                       stor20[address(arg1)].field_512
                        else:
                            if not stor20[address(arg1)].field_256:
                                require stor18 * stor20[address(arg1)].field_256 >= 0
                                require (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor18 * stor20[address(arg1)].field_256
                                if stor7[stor20[address(arg1)].field_0].field_264 <= 3:
                                    if stor20[address(arg1)].field_512 <= 2:
                                        return (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                               stor20[address(arg1)].field_512
                                else:
                                    if not stor20[address(arg1)].field_256:
                                        require stor19 * stor20[address(arg1)].field_256 >= 0
                                        require (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor19 * stor20[address(arg1)].field_256
                                        if stor20[address(arg1)].field_512 <= 2:
                                            return (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                   stor20[address(arg1)].field_512
                                    else:
                                        if stor20[address(arg1)].field_256:
                                            require stor19 * stor20[address(arg1)].field_256 / stor20[address(arg1)].field_256 == stor19
                                            require stor19 * stor20[address(arg1)].field_256 >= 0
                                            require (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor19 * stor20[address(arg1)].field_256
                                            if stor20[address(arg1)].field_512 <= 2:
                                                return (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                       stor20[address(arg1)].field_512
                            else:
                                if stor20[address(arg1)].field_256:
                                    require stor18 * stor20[address(arg1)].field_256 / stor20[address(arg1)].field_256 == stor18
                                    require stor18 * stor20[address(arg1)].field_256 >= 0
                                    require (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor18 * stor20[address(arg1)].field_256
                                    if stor7[stor20[address(arg1)].field_0].field_264 <= 3:
                                        if stor20[address(arg1)].field_512 <= 2:
                                            return (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                   stor20[address(arg1)].field_512
                                    else:
                                        if not stor20[address(arg1)].field_256:
                                            require stor19 * stor20[address(arg1)].field_256 >= 0
                                            require (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor19 * stor20[address(arg1)].field_256
                                            if stor20[address(arg1)].field_512 <= 2:
                                                return (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                       stor20[address(arg1)].field_512
                                        else:
                                            if stor20[address(arg1)].field_256:
                                                require stor19 * stor20[address(arg1)].field_256 / stor20[address(arg1)].field_256 == stor19
                                                require stor19 * stor20[address(arg1)].field_256 >= 0
                                                require (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor19 * stor20[address(arg1)].field_256
                                                if stor20[address(arg1)].field_512 <= 2:
                                                    return (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                           stor20[address(arg1)].field_512
        else:
            if stor20[address(arg1)].field_256:
                require stor16 * stor20[address(arg1)].field_256 / stor20[address(arg1)].field_256 == stor16
                require (stor16 * stor20[address(arg1)].field_256) + minReward >= minReward
                require (stor16 * stor20[address(arg1)].field_256) + minReward >= stor16 * stor20[address(arg1)].field_256
                if stor7[stor20[address(arg1)].field_0].field_264 <= 1:
                    if stor20[address(arg1)].field_512 <= 2:
                        return (stor16 * stor20[address(arg1)].field_256) + minReward, stor20[address(arg1)].field_512
                else:
                    if not stor20[address(arg1)].field_256:
                        require stor17 * stor20[address(arg1)].field_256 >= 0
                        require (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor17 * stor20[address(arg1)].field_256
                        if stor7[stor20[address(arg1)].field_0].field_264 <= 2:
                            if stor20[address(arg1)].field_512 <= 2:
                                return (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                       stor20[address(arg1)].field_512
                        else:
                            if not stor20[address(arg1)].field_256:
                                require stor18 * stor20[address(arg1)].field_256 >= 0
                                require (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor18 * stor20[address(arg1)].field_256
                                if stor7[stor20[address(arg1)].field_0].field_264 <= 3:
                                    if stor20[address(arg1)].field_512 <= 2:
                                        return (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                               stor20[address(arg1)].field_512
                                else:
                                    if not stor20[address(arg1)].field_256:
                                        require stor19 * stor20[address(arg1)].field_256 >= 0
                                        require (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor19 * stor20[address(arg1)].field_256
                                        if stor20[address(arg1)].field_512 <= 2:
                                            return (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                   stor20[address(arg1)].field_512
                                    else:
                                        if stor20[address(arg1)].field_256:
                                            require stor19 * stor20[address(arg1)].field_256 / stor20[address(arg1)].field_256 == stor19
                                            require stor19 * stor20[address(arg1)].field_256 >= 0
                                            require (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor19 * stor20[address(arg1)].field_256
                                            if stor20[address(arg1)].field_512 <= 2:
                                                return (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                       stor20[address(arg1)].field_512
                            else:
                                if stor20[address(arg1)].field_256:
                                    require stor18 * stor20[address(arg1)].field_256 / stor20[address(arg1)].field_256 == stor18
                                    require stor18 * stor20[address(arg1)].field_256 >= 0
                                    require (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor18 * stor20[address(arg1)].field_256
                                    if stor7[stor20[address(arg1)].field_0].field_264 <= 3:
                                        if stor20[address(arg1)].field_512 <= 2:
                                            return (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                   stor20[address(arg1)].field_512
                                    else:
                                        if not stor20[address(arg1)].field_256:
                                            require stor19 * stor20[address(arg1)].field_256 >= 0
                                            require (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor19 * stor20[address(arg1)].field_256
                                            if stor20[address(arg1)].field_512 <= 2:
                                                return (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                       stor20[address(arg1)].field_512
                                        else:
                                            if stor20[address(arg1)].field_256:
                                                require stor19 * stor20[address(arg1)].field_256 / stor20[address(arg1)].field_256 == stor19
                                                require stor19 * stor20[address(arg1)].field_256 >= 0
                                                require (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor19 * stor20[address(arg1)].field_256
                                                if stor20[address(arg1)].field_512 <= 2:
                                                    return (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                           stor20[address(arg1)].field_512
                    else:
                        if stor20[address(arg1)].field_256:
                            require stor17 * stor20[address(arg1)].field_256 / stor20[address(arg1)].field_256 == stor17
                            require stor17 * stor20[address(arg1)].field_256 >= 0
                            require (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor17 * stor20[address(arg1)].field_256
                            if stor7[stor20[address(arg1)].field_0].field_264 <= 2:
                                if stor20[address(arg1)].field_512 <= 2:
                                    return (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                           stor20[address(arg1)].field_512
                            else:
                                if not stor20[address(arg1)].field_256:
                                    require stor18 * stor20[address(arg1)].field_256 >= 0
                                    require (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor18 * stor20[address(arg1)].field_256
                                    if stor7[stor20[address(arg1)].field_0].field_264 <= 3:
                                        if stor20[address(arg1)].field_512 <= 2:
                                            return (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                   stor20[address(arg1)].field_512
                                    else:
                                        if not stor20[address(arg1)].field_256:
                                            require stor19 * stor20[address(arg1)].field_256 >= 0
                                            require (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor19 * stor20[address(arg1)].field_256
                                            if stor20[address(arg1)].field_512 <= 2:
                                                return (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                       stor20[address(arg1)].field_512
                                        else:
                                            if stor20[address(arg1)].field_256:
                                                require stor19 * stor20[address(arg1)].field_256 / stor20[address(arg1)].field_256 == stor19
                                                require stor19 * stor20[address(arg1)].field_256 >= 0
                                                require (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor19 * stor20[address(arg1)].field_256
                                                if stor20[address(arg1)].field_512 <= 2:
                                                    return (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                           stor20[address(arg1)].field_512
                                else:
                                    if stor20[address(arg1)].field_256:
                                        require stor18 * stor20[address(arg1)].field_256 / stor20[address(arg1)].field_256 == stor18
                                        require stor18 * stor20[address(arg1)].field_256 >= 0
                                        require (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor18 * stor20[address(arg1)].field_256
                                        if stor7[stor20[address(arg1)].field_0].field_264 <= 3:
                                            if stor20[address(arg1)].field_512 <= 2:
                                                return (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                       stor20[address(arg1)].field_512
                                        else:
                                            if not stor20[address(arg1)].field_256:
                                                require stor19 * stor20[address(arg1)].field_256 >= 0
                                                require (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor19 * stor20[address(arg1)].field_256
                                                if stor20[address(arg1)].field_512 <= 2:
                                                    return (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                           stor20[address(arg1)].field_512
                                            else:
                                                if stor20[address(arg1)].field_256:
                                                    require stor19 * stor20[address(arg1)].field_256 / stor20[address(arg1)].field_256 == stor19
                                                    require stor19 * stor20[address(arg1)].field_256 >= 0
                                                    require (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward >= stor19 * stor20[address(arg1)].field_256
                                                    if stor20[address(arg1)].field_512 <= 2:
                                                        return (stor19 * stor20[address(arg1)].field_256) + (stor18 * stor20[address(arg1)].field_256) + (stor17 * stor20[address(arg1)].field_256) + (stor16 * stor20[address(arg1)].field_256) + minReward, 
                                                               stor20[address(arg1)].field_512
    revert
}

function sub_47799092(?) {
    if msg.sender == owner:
        require not uint8(stor22.field_160)
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
        require stor20[ext_call.return_data[204 len 20]].field_512 <= 2
        require not stor20[ext_call.return_data[204 len 20]].field_512
        require stor10
        if ext_call.return_data[0] < stor8:
            require stor7[stor8].field_272
            require (ext_call.return_data[96] / 10^18) + 100 >= ext_call.return_data[96] / 10^18
            require (ext_call.return_data[96] / 10^18) + 100 >= 100
            if ext_call.return_data[64] <= stor5:
                if (ext_call.return_data[96] / 10^18) + 100 / 100:
                    require (ext_call.return_data[96] / 10^18) + 100 / 100
                    require 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / (ext_call.return_data[96] / 10^18) + 100 / 100 == 5
                if ext_call.return_data[32] == ext_call.return_data[64]:
                    require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + stor7[stor8].field_0 >= stor7[stor8].field_0
                    require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + stor7[stor8].field_0 >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                    stor7[stor8].field_0 += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                    require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + totalWeight >= totalWeight
                    require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + totalWeight >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                    totalWeight += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                    totalVotes++
                    stor20[ext_call.return_data[204 len 20]].field_0 = stor8
                    stor20[ext_call.return_data[204 len 20]].field_256 = 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                    stor20[ext_call.return_data[204 len 20]].field_510 = 0
                    stor20[ext_call.return_data[204 len 20]].field_512 = 1
                    emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor8, 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                else:
                    require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[stor8].field_0 >= stor7[stor8].field_0
                    require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[stor8].field_0 >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                    stor7[stor8].field_0 += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                    require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= totalWeight
                    require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                    totalWeight += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                    totalVotes++
                    stor20[ext_call.return_data[204 len 20]].field_0 = stor8
                    stor20[ext_call.return_data[204 len 20]].field_256 = 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                    stor20[ext_call.return_data[204 len 20]].field_509 = 0
                    stor20[ext_call.return_data[204 len 20]].field_512 = 1
                    emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor8, 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
            else:
                if ext_call.return_data[64] > stor6:
                    if ext_call.return_data[32] == ext_call.return_data[64]:
                        require ((ext_call.return_data[96] / 10^18) + 100 / 100) + stor7[stor8].field_0 >= stor7[stor8].field_0
                        require ((ext_call.return_data[96] / 10^18) + 100 / 100) + stor7[stor8].field_0 >= (ext_call.return_data[96] / 10^18) + 100 / 100
                        stor7[stor8].field_0 += (ext_call.return_data[96] / 10^18) + 100 / 100
                        require ((ext_call.return_data[96] / 10^18) + 100 / 100) + totalWeight >= totalWeight
                        require ((ext_call.return_data[96] / 10^18) + 100 / 100) + totalWeight >= (ext_call.return_data[96] / 10^18) + 100 / 100
                        totalWeight += (ext_call.return_data[96] / 10^18) + 100 / 100
                        totalVotes++
                        stor20[ext_call.return_data[204 len 20]].field_0 = stor8
                        stor20[ext_call.return_data[204 len 20]].field_256 = (ext_call.return_data[96] / 10^18) + 100 / 100
                        stor20[ext_call.return_data[204 len 20]].field_512 = 1
                        emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor8, (ext_call.return_data[96] / 10^18) + 100 / 100
                    else:
                        require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + stor7[stor8].field_0 >= stor7[stor8].field_0
                        require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + stor7[stor8].field_0 >= (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                        stor7[stor8].field_0 += (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                        require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + totalWeight >= totalWeight
                        require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + totalWeight >= (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                        totalWeight += (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                        totalVotes++
                        stor20[ext_call.return_data[204 len 20]].field_0 = stor8
                        stor20[ext_call.return_data[204 len 20]].field_256 = (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                        stor20[ext_call.return_data[204 len 20]].field_511 = 0
                        stor20[ext_call.return_data[204 len 20]].field_512 = 1
                        emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor8, (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                else:
                    if (ext_call.return_data[96] / 10^18) + 100 / 100:
                        require (ext_call.return_data[96] / 10^18) + 100 / 100
                        require 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / (ext_call.return_data[96] / 10^18) + 100 / 100 == 9
                    if ext_call.return_data[32] == ext_call.return_data[64]:
                        require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[stor8].field_0 >= stor7[stor8].field_0
                        require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[stor8].field_0 >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                        stor7[stor8].field_0 += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                        require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= totalWeight
                        require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                        totalWeight += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                        totalVotes++
                        stor20[ext_call.return_data[204 len 20]].field_0 = stor8
                        stor20[ext_call.return_data[204 len 20]].field_256 = 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                        stor20[ext_call.return_data[204 len 20]].field_509 = 0
                        stor20[ext_call.return_data[204 len 20]].field_512 = 1
                        emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor8, 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                    else:
                        require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + stor7[stor8].field_0 >= stor7[stor8].field_0
                        require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + stor7[stor8].field_0 >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                        stor7[stor8].field_0 += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                        require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + totalWeight >= totalWeight
                        require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + totalWeight >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                        totalWeight += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                        totalVotes++
                        stor20[ext_call.return_data[204 len 20]].field_0 = stor8
                        stor20[ext_call.return_data[204 len 20]].field_256 = 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                        stor20[ext_call.return_data[204 len 20]].field_508 = 0
                        stor20[ext_call.return_data[204 len 20]].field_512 = 1
                        emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor8, 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
        else:
            if ext_call.return_data[0] > stor9:
                require stor7[stor9].field_272
                require (ext_call.return_data[96] / 10^18) + 100 >= ext_call.return_data[96] / 10^18
                require (ext_call.return_data[96] / 10^18) + 100 >= 100
                if ext_call.return_data[64] <= stor5:
                    if (ext_call.return_data[96] / 10^18) + 100 / 100:
                        require (ext_call.return_data[96] / 10^18) + 100 / 100
                        require 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / (ext_call.return_data[96] / 10^18) + 100 / 100 == 5
                    if ext_call.return_data[32] == ext_call.return_data[64]:
                        require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + stor7[stor9].field_0 >= stor7[stor9].field_0
                        require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + stor7[stor9].field_0 >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                        stor7[stor9].field_0 += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                        require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + totalWeight >= totalWeight
                        require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + totalWeight >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                        totalWeight += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                        totalVotes++
                        stor20[ext_call.return_data[204 len 20]].field_0 = stor9
                        stor20[ext_call.return_data[204 len 20]].field_256 = 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                        stor20[ext_call.return_data[204 len 20]].field_510 = 0
                        stor20[ext_call.return_data[204 len 20]].field_512 = 1
                        emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor9, 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                    else:
                        require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[stor9].field_0 >= stor7[stor9].field_0
                        require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[stor9].field_0 >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                        stor7[stor9].field_0 += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                        require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= totalWeight
                        require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                        totalWeight += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                        totalVotes++
                        stor20[ext_call.return_data[204 len 20]].field_0 = stor9
                        stor20[ext_call.return_data[204 len 20]].field_256 = 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                        stor20[ext_call.return_data[204 len 20]].field_509 = 0
                        stor20[ext_call.return_data[204 len 20]].field_512 = 1
                        emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor9, 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                else:
                    if ext_call.return_data[64] > stor6:
                        if ext_call.return_data[32] == ext_call.return_data[64]:
                            require ((ext_call.return_data[96] / 10^18) + 100 / 100) + stor7[stor9].field_0 >= stor7[stor9].field_0
                            require ((ext_call.return_data[96] / 10^18) + 100 / 100) + stor7[stor9].field_0 >= (ext_call.return_data[96] / 10^18) + 100 / 100
                            stor7[stor9].field_0 += (ext_call.return_data[96] / 10^18) + 100 / 100
                            require ((ext_call.return_data[96] / 10^18) + 100 / 100) + totalWeight >= totalWeight
                            require ((ext_call.return_data[96] / 10^18) + 100 / 100) + totalWeight >= (ext_call.return_data[96] / 10^18) + 100 / 100
                            totalWeight += (ext_call.return_data[96] / 10^18) + 100 / 100
                            totalVotes++
                            stor20[ext_call.return_data[204 len 20]].field_0 = stor9
                            stor20[ext_call.return_data[204 len 20]].field_256 = (ext_call.return_data[96] / 10^18) + 100 / 100
                            stor20[ext_call.return_data[204 len 20]].field_512 = 1
                            emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor9, (ext_call.return_data[96] / 10^18) + 100 / 100
                        else:
                            require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + stor7[stor9].field_0 >= stor7[stor9].field_0
                            require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + stor7[stor9].field_0 >= (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                            stor7[stor9].field_0 += (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                            require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + totalWeight >= totalWeight
                            require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + totalWeight >= (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                            totalWeight += (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                            totalVotes++
                            stor20[ext_call.return_data[204 len 20]].field_0 = stor9
                            stor20[ext_call.return_data[204 len 20]].field_256 = (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                            stor20[ext_call.return_data[204 len 20]].field_511 = 0
                            stor20[ext_call.return_data[204 len 20]].field_512 = 1
                            emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor9, (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                    else:
                        if (ext_call.return_data[96] / 10^18) + 100 / 100:
                            require (ext_call.return_data[96] / 10^18) + 100 / 100
                            require 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / (ext_call.return_data[96] / 10^18) + 100 / 100 == 9
                        if ext_call.return_data[32] == ext_call.return_data[64]:
                            require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[stor9].field_0 >= stor7[stor9].field_0
                            require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[stor9].field_0 >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                            stor7[stor9].field_0 += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                            require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= totalWeight
                            require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                            totalWeight += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                            totalVotes++
                            stor20[ext_call.return_data[204 len 20]].field_0 = stor9
                            stor20[ext_call.return_data[204 len 20]].field_256 = 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                            stor20[ext_call.return_data[204 len 20]].field_509 = 0
                            stor20[ext_call.return_data[204 len 20]].field_512 = 1
                            emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor9, 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                        else:
                            require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + stor7[stor9].field_0 >= stor7[stor9].field_0
                            require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + stor7[stor9].field_0 >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                            stor7[stor9].field_0 += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                            require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + totalWeight >= totalWeight
                            require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + totalWeight >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                            totalWeight += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                            totalVotes++
                            stor20[ext_call.return_data[204 len 20]].field_0 = stor9
                            stor20[ext_call.return_data[204 len 20]].field_256 = 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                            stor20[ext_call.return_data[204 len 20]].field_508 = 0
                            stor20[ext_call.return_data[204 len 20]].field_512 = 1
                            emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor9, 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
            else:
                if not ext_call.return_data[0] % stor10:
                    require stor7[ext_call.return_data[0]].field_272
                    require (ext_call.return_data[96] / 10^18) + 100 >= ext_call.return_data[96] / 10^18
                    require (ext_call.return_data[96] / 10^18) + 100 >= 100
                    if ext_call.return_data[64] <= stor5:
                        if (ext_call.return_data[96] / 10^18) + 100 / 100:
                            require (ext_call.return_data[96] / 10^18) + 100 / 100
                            require 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / (ext_call.return_data[96] / 10^18) + 100 / 100 == 5
                        if ext_call.return_data[32] == ext_call.return_data[64]:
                            require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + stor7[ext_call.return_data[0]].field_0 >= stor7[ext_call.return_data[0]].field_0
                            require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + stor7[ext_call.return_data[0]].field_0 >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                            stor7[ext_call.return_data[0]].field_0 += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                            require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + totalWeight >= totalWeight
                            require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + totalWeight >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                            totalWeight += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                            totalVotes++
                            stor20[ext_call.return_data[204 len 20]].field_0 = ext_call.return_data[0]
                            stor20[ext_call.return_data[204 len 20]].field_256 = 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                            stor20[ext_call.return_data[204 len 20]].field_510 = 0
                            stor20[ext_call.return_data[204 len 20]].field_512 = 1
                            emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], ext_call.return_data[0], 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                        else:
                            require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[ext_call.return_data[0]].field_0 >= stor7[ext_call.return_data[0]].field_0
                            require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[ext_call.return_data[0]].field_0 >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                            stor7[ext_call.return_data[0]].field_0 += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                            require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= totalWeight
                            require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                            totalWeight += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                            totalVotes++
                            stor20[ext_call.return_data[204 len 20]].field_0 = ext_call.return_data[0]
                            stor20[ext_call.return_data[204 len 20]].field_256 = 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                            stor20[ext_call.return_data[204 len 20]].field_509 = 0
                            stor20[ext_call.return_data[204 len 20]].field_512 = 1
                            emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], ext_call.return_data[0], 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                    else:
                        if ext_call.return_data[64] > stor6:
                            if ext_call.return_data[32] == ext_call.return_data[64]:
                                require ((ext_call.return_data[96] / 10^18) + 100 / 100) + stor7[ext_call.return_data[0]].field_0 >= stor7[ext_call.return_data[0]].field_0
                                require ((ext_call.return_data[96] / 10^18) + 100 / 100) + stor7[ext_call.return_data[0]].field_0 >= (ext_call.return_data[96] / 10^18) + 100 / 100
                                stor7[ext_call.return_data[0]].field_0 += (ext_call.return_data[96] / 10^18) + 100 / 100
                                require ((ext_call.return_data[96] / 10^18) + 100 / 100) + totalWeight >= totalWeight
                                require ((ext_call.return_data[96] / 10^18) + 100 / 100) + totalWeight >= (ext_call.return_data[96] / 10^18) + 100 / 100
                                totalWeight += (ext_call.return_data[96] / 10^18) + 100 / 100
                                totalVotes++
                                stor20[ext_call.return_data[204 len 20]].field_0 = ext_call.return_data[0]
                                stor20[ext_call.return_data[204 len 20]].field_256 = (ext_call.return_data[96] / 10^18) + 100 / 100
                                stor20[ext_call.return_data[204 len 20]].field_512 = 1
                                emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[96] / 10^18) + 100 / 100
                            else:
                                require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + stor7[ext_call.return_data[0]].field_0 >= stor7[ext_call.return_data[0]].field_0
                                require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + stor7[ext_call.return_data[0]].field_0 >= (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                                stor7[ext_call.return_data[0]].field_0 += (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                                require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + totalWeight >= totalWeight
                                require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + totalWeight >= (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                                totalWeight += (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                                totalVotes++
                                stor20[ext_call.return_data[204 len 20]].field_0 = ext_call.return_data[0]
                                stor20[ext_call.return_data[204 len 20]].field_256 = (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                                stor20[ext_call.return_data[204 len 20]].field_511 = 0
                                stor20[ext_call.return_data[204 len 20]].field_512 = 1
                                emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                        else:
                            if (ext_call.return_data[96] / 10^18) + 100 / 100:
                                require (ext_call.return_data[96] / 10^18) + 100 / 100
                                require 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / (ext_call.return_data[96] / 10^18) + 100 / 100 == 9
                            if ext_call.return_data[32] == ext_call.return_data[64]:
                                require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[ext_call.return_data[0]].field_0 >= stor7[ext_call.return_data[0]].field_0
                                require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[ext_call.return_data[0]].field_0 >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                stor7[ext_call.return_data[0]].field_0 += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= totalWeight
                                require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                totalWeight += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                totalVotes++
                                stor20[ext_call.return_data[204 len 20]].field_0 = ext_call.return_data[0]
                                stor20[ext_call.return_data[204 len 20]].field_256 = 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                stor20[ext_call.return_data[204 len 20]].field_509 = 0
                                stor20[ext_call.return_data[204 len 20]].field_512 = 1
                                emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], ext_call.return_data[0], 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                            else:
                                require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + stor7[ext_call.return_data[0]].field_0 >= stor7[ext_call.return_data[0]].field_0
                                require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + stor7[ext_call.return_data[0]].field_0 >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                                stor7[ext_call.return_data[0]].field_0 += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                                require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + totalWeight >= totalWeight
                                require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + totalWeight >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                                totalWeight += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                                totalVotes++
                                stor20[ext_call.return_data[204 len 20]].field_0 = ext_call.return_data[0]
                                stor20[ext_call.return_data[204 len 20]].field_256 = 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                                stor20[ext_call.return_data[204 len 20]].field_508 = 0
                                stor20[ext_call.return_data[204 len 20]].field_512 = 1
                                emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], ext_call.return_data[0], 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                else:
                    require ext_call.return_data[0] % stor10 <= ext_call.return_data[0]
                    if ext_call.return_data[0] - (ext_call.return_data[0] % stor10) >= collected:
                        require stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_272
                        require (ext_call.return_data[96] / 10^18) + 100 >= ext_call.return_data[96] / 10^18
                        require (ext_call.return_data[96] / 10^18) + 100 >= 100
                        if ext_call.return_data[64] <= stor5:
                            if (ext_call.return_data[96] / 10^18) + 100 / 100:
                                require (ext_call.return_data[96] / 10^18) + 100 / 100
                                require 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / (ext_call.return_data[96] / 10^18) + 100 / 100 == 5
                            if ext_call.return_data[32] == ext_call.return_data[64]:
                                require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0
                                require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                                stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                                require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + totalWeight >= totalWeight
                                require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + totalWeight >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                                totalWeight += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                                totalVotes++
                                stor20[ext_call.return_data[204 len 20]].field_0 = ext_call.return_data[0] - (ext_call.return_data[0] % stor10)
                                stor20[ext_call.return_data[204 len 20]].field_256 = 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                                stor20[ext_call.return_data[204 len 20]].field_510 = 0
                                stor20[ext_call.return_data[204 len 20]].field_512 = 1
                                emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], ext_call.return_data[0] - (ext_call.return_data[0] % stor10), 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                            else:
                                require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0
                                require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= totalWeight
                                require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                totalWeight += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                totalVotes++
                                stor20[ext_call.return_data[204 len 20]].field_0 = ext_call.return_data[0] - (ext_call.return_data[0] % stor10)
                                stor20[ext_call.return_data[204 len 20]].field_256 = 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                stor20[ext_call.return_data[204 len 20]].field_509 = 0
                                stor20[ext_call.return_data[204 len 20]].field_512 = 1
                                emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], ext_call.return_data[0] - (ext_call.return_data[0] % stor10), 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                        else:
                            if ext_call.return_data[64] > stor6:
                                if ext_call.return_data[32] == ext_call.return_data[64]:
                                    require ((ext_call.return_data[96] / 10^18) + 100 / 100) + stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0
                                    require ((ext_call.return_data[96] / 10^18) + 100 / 100) + stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= (ext_call.return_data[96] / 10^18) + 100 / 100
                                    stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 += (ext_call.return_data[96] / 10^18) + 100 / 100
                                    require ((ext_call.return_data[96] / 10^18) + 100 / 100) + totalWeight >= totalWeight
                                    require ((ext_call.return_data[96] / 10^18) + 100 / 100) + totalWeight >= (ext_call.return_data[96] / 10^18) + 100 / 100
                                    totalWeight += (ext_call.return_data[96] / 10^18) + 100 / 100
                                    totalVotes++
                                    stor20[ext_call.return_data[204 len 20]].field_0 = ext_call.return_data[0] - (ext_call.return_data[0] % stor10)
                                    stor20[ext_call.return_data[204 len 20]].field_256 = (ext_call.return_data[96] / 10^18) + 100 / 100
                                    stor20[ext_call.return_data[204 len 20]].field_512 = 1
                                    emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], ext_call.return_data[0] - (ext_call.return_data[0] % stor10), (ext_call.return_data[96] / 10^18) + 100 / 100
                                else:
                                    require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0
                                    require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                                    stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 += (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                                    require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + totalWeight >= totalWeight
                                    require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + totalWeight >= (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                                    totalWeight += (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                                    totalVotes++
                                    stor20[ext_call.return_data[204 len 20]].field_0 = ext_call.return_data[0] - (ext_call.return_data[0] % stor10)
                                    stor20[ext_call.return_data[204 len 20]].field_256 = (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                                    stor20[ext_call.return_data[204 len 20]].field_511 = 0
                                    stor20[ext_call.return_data[204 len 20]].field_512 = 1
                                    emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], ext_call.return_data[0] - (ext_call.return_data[0] % stor10), (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                            else:
                                if (ext_call.return_data[96] / 10^18) + 100 / 100:
                                    require (ext_call.return_data[96] / 10^18) + 100 / 100
                                    require 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / (ext_call.return_data[96] / 10^18) + 100 / 100 == 9
                                if ext_call.return_data[32] == ext_call.return_data[64]:
                                    require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0
                                    require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                    stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                    require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= totalWeight
                                    require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                    totalWeight += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                    totalVotes++
                                    stor20[ext_call.return_data[204 len 20]].field_0 = ext_call.return_data[0] - (ext_call.return_data[0] % stor10)
                                    stor20[ext_call.return_data[204 len 20]].field_256 = 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                    stor20[ext_call.return_data[204 len 20]].field_509 = 0
                                    stor20[ext_call.return_data[204 len 20]].field_512 = 1
                                    emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], ext_call.return_data[0] - (ext_call.return_data[0] % stor10), 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                else:
                                    require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0
                                    require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                                    stor7[ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                                    require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + totalWeight >= totalWeight
                                    require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + totalWeight >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                                    totalWeight += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                                    totalVotes++
                                    stor20[ext_call.return_data[204 len 20]].field_0 = ext_call.return_data[0] - (ext_call.return_data[0] % stor10)
                                    stor20[ext_call.return_data[204 len 20]].field_256 = 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                                    stor20[ext_call.return_data[204 len 20]].field_508 = 0
                                    stor20[ext_call.return_data[204 len 20]].field_512 = 1
                                    emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], ext_call.return_data[0] - (ext_call.return_data[0] % stor10), 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                    else:
                        require stor10 >= 0
                        require stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10) >= stor10
                        require stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_272
                        require (ext_call.return_data[96] / 10^18) + 100 >= ext_call.return_data[96] / 10^18
                        require (ext_call.return_data[96] / 10^18) + 100 >= 100
                        if ext_call.return_data[64] <= stor5:
                            if (ext_call.return_data[96] / 10^18) + 100 / 100:
                                require (ext_call.return_data[96] / 10^18) + 100 / 100
                                require 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / (ext_call.return_data[96] / 10^18) + 100 / 100 == 5
                            if ext_call.return_data[32] == ext_call.return_data[64]:
                                require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0
                                require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                                stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                                require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + totalWeight >= totalWeight
                                require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4) + totalWeight >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                                totalWeight += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                                totalVotes++
                                stor20[ext_call.return_data[204 len 20]].field_0 = stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)
                                stor20[ext_call.return_data[204 len 20]].field_256 = 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                                stor20[ext_call.return_data[204 len 20]].field_510 = 0
                                stor20[ext_call.return_data[204 len 20]].field_512 = 1
                                emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10), 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 4
                            else:
                                require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0
                                require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= totalWeight
                                require (5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                totalWeight += 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                totalVotes++
                                stor20[ext_call.return_data[204 len 20]].field_0 = stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)
                                stor20[ext_call.return_data[204 len 20]].field_256 = 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                stor20[ext_call.return_data[204 len 20]].field_509 = 0
                                stor20[ext_call.return_data[204 len 20]].field_512 = 1
                                emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10), 5 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                        else:
                            if ext_call.return_data[64] > stor6:
                                if ext_call.return_data[32] == ext_call.return_data[64]:
                                    require ((ext_call.return_data[96] / 10^18) + 100 / 100) + stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0
                                    require ((ext_call.return_data[96] / 10^18) + 100 / 100) + stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= (ext_call.return_data[96] / 10^18) + 100 / 100
                                    stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 += (ext_call.return_data[96] / 10^18) + 100 / 100
                                    require ((ext_call.return_data[96] / 10^18) + 100 / 100) + totalWeight >= totalWeight
                                    require ((ext_call.return_data[96] / 10^18) + 100 / 100) + totalWeight >= (ext_call.return_data[96] / 10^18) + 100 / 100
                                    totalWeight += (ext_call.return_data[96] / 10^18) + 100 / 100
                                    totalVotes++
                                    stor20[ext_call.return_data[204 len 20]].field_0 = stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)
                                    stor20[ext_call.return_data[204 len 20]].field_256 = (ext_call.return_data[96] / 10^18) + 100 / 100
                                    stor20[ext_call.return_data[204 len 20]].field_512 = 1
                                    emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10), (ext_call.return_data[96] / 10^18) + 100 / 100
                                else:
                                    require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0
                                    require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                                    stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 += (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                                    require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + totalWeight >= totalWeight
                                    require ((ext_call.return_data[96] / 10^18) + 100 / 100 / 2) + totalWeight >= (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                                    totalWeight += (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                                    totalVotes++
                                    stor20[ext_call.return_data[204 len 20]].field_0 = stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)
                                    stor20[ext_call.return_data[204 len 20]].field_256 = (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                                    stor20[ext_call.return_data[204 len 20]].field_511 = 0
                                    stor20[ext_call.return_data[204 len 20]].field_512 = 1
                                    emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10), (ext_call.return_data[96] / 10^18) + 100 / 100 / 2
                            else:
                                if (ext_call.return_data[96] / 10^18) + 100 / 100:
                                    require (ext_call.return_data[96] / 10^18) + 100 / 100
                                    require 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / (ext_call.return_data[96] / 10^18) + 100 / 100 == 9
                                if ext_call.return_data[32] == ext_call.return_data[64]:
                                    require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0
                                    require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                    stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                    require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= totalWeight
                                    require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8) + totalWeight >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                    totalWeight += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                    totalVotes++
                                    stor20[ext_call.return_data[204 len 20]].field_0 = stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)
                                    stor20[ext_call.return_data[204 len 20]].field_256 = 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                    stor20[ext_call.return_data[204 len 20]].field_509 = 0
                                    stor20[ext_call.return_data[204 len 20]].field_512 = 1
                                    emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10), 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 8
                                else:
                                    require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0
                                    require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                                    stor7[stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)].field_0 += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                                    require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + totalWeight >= totalWeight
                                    require (9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16) + totalWeight >= 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                                    totalWeight += 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                                    totalVotes++
                                    stor20[ext_call.return_data[204 len 20]].field_0 = stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10)
                                    stor20[ext_call.return_data[204 len 20]].field_256 = 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
                                    stor20[ext_call.return_data[204 len 20]].field_508 = 0
                                    stor20[ext_call.return_data[204 len 20]].field_512 = 1
                                    emit 0x9ec97c38: ext_call.return_data[204 len 20], ext_call.return_data[0], stor10 + ext_call.return_data[0] - (ext_call.return_data[0] % stor10), 9 * (ext_call.return_data[96] / 10^18) + 100 / 100 / 16
}



}
