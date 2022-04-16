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
address multisigAddress;
address sub_81f4be5eAddress;
uint8 stor21; offset 160
uint8 stor21; offset 168
address projectTokenAddress;
uint256 stor22;
uint256 stor23;

function totalVotes() {
    return totalVotes
}

function multisig() {
    return multisigAddress
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

function transferOwner(address arg1) {
    if owner == msg.sender:
        if arg1:
            owner = arg1
}

function _fallback() payable {
    require msg.value + stor23 >= stor23
    require msg.value + stor23 >= msg.value
    stor23 += msg.value
}

function releaseReward() {
    require multisigAddress
    require multisigAddress == msg.sender
    require ext_code.size(projectTokenAddress)
    call projectTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    call multisigAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(projectTokenAddress)
    call projectTokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args multisigAddress, ext_call.return_data[0]
    require ext_call.success
}

function sub_2e854433(?) {
    require 1 == bool(uint8(stor21.field_160))
    require stor18[address(msg.sender)].field_512 <= 2
    require stor18[address(msg.sender)].field_512 == 1
    require not uint8(stor21.field_168)
    uint8(stor21.field_168) = 1
    if stor6[stor18[address(msg.sender)].field_0].field_264 <= 0:
        if remainder <= 0:
            require 0 <= stor23
            stor18[address(msg.sender)].field_512 = 2
            require ext_code.size(projectTokenAddress)
            call projectTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
            require ext_call.success
            require ext_call.return_data[0]
            call msg.sender with:
                 gas 2300 wei
            require ext_call.success
            uint8(stor21.field_168) = 0
            emit 0x5bf2177e: msg.sender, 0
        else:
            require remainder >= 0
            require remainder >= remainder
            remainder = 0
            require remainder <= stor23
            stor23 -= remainder
            stor18[address(msg.sender)].field_512 = 2
            if remainder:
                require remainder
                require stor22 * remainder / remainder == stor22
            require ext_code.size(projectTokenAddress)
            call projectTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, stor22 * remainder
            require ext_call.success
            require ext_call.return_data[0]
            call msg.sender with:
               value remainder wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            uint8(stor21.field_168) = 0
            emit 0x5bf2177e: msg.sender, remainder
    else:
        if stor18[address(msg.sender)].field_256:
            require stor18[address(msg.sender)].field_256
            require stor14 * stor18[address(msg.sender)].field_256 / stor18[address(msg.sender)].field_256 == stor14
        require stor14 * stor18[address(msg.sender)].field_256 >= 0
        require stor14 * stor18[address(msg.sender)].field_256 >= stor14 * stor18[address(msg.sender)].field_256
        if stor6[stor18[address(msg.sender)].field_0].field_264 <= 1:
            if remainder <= 0:
                require stor14 * stor18[address(msg.sender)].field_256 <= stor23
                stor23 += -1 * stor14 * stor18[address(msg.sender)].field_256
                stor18[address(msg.sender)].field_512 = 2
                if stor14 * stor18[address(msg.sender)].field_256:
                    require stor14 * stor18[address(msg.sender)].field_256
                    require stor22 * stor14 * stor18[address(msg.sender)].field_256 / stor14 * stor18[address(msg.sender)].field_256 == stor22
                require ext_code.size(projectTokenAddress)
                call projectTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, stor22 * stor14 * stor18[address(msg.sender)].field_256
                require ext_call.success
                require ext_call.return_data[0]
                call msg.sender with:
                   value stor14 * stor18[address(msg.sender)].field_256 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                uint8(stor21.field_168) = 0
                emit 0x5bf2177e: msg.sender, stor14 * stor18[address(msg.sender)].field_256
            else:
                require remainder + (stor14 * stor18[address(msg.sender)].field_256) >= stor14 * stor18[address(msg.sender)].field_256
                require remainder + (stor14 * stor18[address(msg.sender)].field_256) >= remainder
                remainder = 0
                require remainder + (stor14 * stor18[address(msg.sender)].field_256) <= stor23
                stor23 = stor23 - remainder - (stor14 * stor18[address(msg.sender)].field_256)
                stor18[address(msg.sender)].field_512 = 2
                if remainder + (stor14 * stor18[address(msg.sender)].field_256):
                    require remainder + (stor14 * stor18[address(msg.sender)].field_256)
                    require (remainder * stor22) + (stor14 * stor18[address(msg.sender)].field_256 * stor22) / remainder + (stor14 * stor18[address(msg.sender)].field_256) == stor22
                require ext_code.size(projectTokenAddress)
                call projectTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (remainder * stor22) + (stor14 * stor18[address(msg.sender)].field_256 * stor22)
                require ext_call.success
                require ext_call.return_data[0]
                call msg.sender with:
                   value remainder + (stor14 * stor18[address(msg.sender)].field_256) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                uint8(stor21.field_168) = 0
                emit 0x5bf2177e: msg.sender, remainder + (stor14 * stor18[address(msg.sender)].field_256)
        else:
            if stor18[address(msg.sender)].field_256:
                require stor18[address(msg.sender)].field_256
                require stor15 * stor18[address(msg.sender)].field_256 / stor18[address(msg.sender)].field_256 == stor15
            require (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) >= stor14 * stor18[address(msg.sender)].field_256
            require (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) >= stor15 * stor18[address(msg.sender)].field_256
            if stor6[stor18[address(msg.sender)].field_0].field_264 <= 2:
                if remainder <= 0:
                    require (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) <= stor23
                    stor23 = stor23 - (stor15 * stor18[address(msg.sender)].field_256) - (stor14 * stor18[address(msg.sender)].field_256)
                    stor18[address(msg.sender)].field_512 = 2
                    if (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256):
                        require (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                        require (stor15 * stor18[address(msg.sender)].field_256 * stor22) + (stor14 * stor18[address(msg.sender)].field_256 * stor22) / (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) == stor22
                    require ext_code.size(projectTokenAddress)
                    call projectTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (stor15 * stor18[address(msg.sender)].field_256 * stor22) + (stor14 * stor18[address(msg.sender)].field_256 * stor22)
                    require ext_call.success
                    require ext_call.return_data[0]
                    call msg.sender with:
                       value (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    uint8(stor21.field_168) = 0
                    emit 0x5bf2177e: msg.sender, (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                else:
                    require remainder >= 0
                    require remainder + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) >= remainder
                    remainder = 0
                    require remainder + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) <= stor23
                    stor23 = stor23 - remainder - (stor15 * stor18[address(msg.sender)].field_256) - (stor14 * stor18[address(msg.sender)].field_256)
                    stor18[address(msg.sender)].field_512 = 2
                    if remainder + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256):
                        require remainder + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                        require (remainder * stor22) + (stor15 * stor18[address(msg.sender)].field_256 * stor22) + (stor14 * stor18[address(msg.sender)].field_256 * stor22) / remainder + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) == stor22
                    require ext_code.size(projectTokenAddress)
                    call projectTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (remainder * stor22) + (stor15 * stor18[address(msg.sender)].field_256 * stor22) + (stor14 * stor18[address(msg.sender)].field_256 * stor22)
                    require ext_call.success
                    require ext_call.return_data[0]
                    call msg.sender with:
                       value remainder + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    uint8(stor21.field_168) = 0
                    emit 0x5bf2177e: msg.sender, remainder + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
            else:
                if stor18[address(msg.sender)].field_256:
                    require stor18[address(msg.sender)].field_256
                    require stor16 * stor18[address(msg.sender)].field_256 / stor18[address(msg.sender)].field_256 == stor16
                require stor16 * stor18[address(msg.sender)].field_256 >= 0
                require (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) >= stor16 * stor18[address(msg.sender)].field_256
                if stor6[stor18[address(msg.sender)].field_0].field_264 <= 3:
                    if remainder <= 0:
                        require (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) <= stor23
                        stor23 = stor23 - (stor16 * stor18[address(msg.sender)].field_256) - (stor15 * stor18[address(msg.sender)].field_256) - (stor14 * stor18[address(msg.sender)].field_256)
                        stor18[address(msg.sender)].field_512 = 2
                        if (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256):
                            require (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                            require (stor16 * stor18[address(msg.sender)].field_256 * stor22) + (stor15 * stor18[address(msg.sender)].field_256 * stor22) + (stor14 * stor18[address(msg.sender)].field_256 * stor22) / (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) == stor22
                        require ext_code.size(projectTokenAddress)
                        call projectTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (stor16 * stor18[address(msg.sender)].field_256 * stor22) + (stor15 * stor18[address(msg.sender)].field_256 * stor22) + (stor14 * stor18[address(msg.sender)].field_256 * stor22)
                        require ext_call.success
                        require ext_call.return_data[0]
                        call msg.sender with:
                           value (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        uint8(stor21.field_168) = 0
                        emit 0x5bf2177e: msg.sender, (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                    else:
                        require remainder >= 0
                        require remainder + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) >= remainder
                        remainder = 0
                        require remainder + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) <= stor23
                        stor23 = stor23 - remainder - (stor16 * stor18[address(msg.sender)].field_256) - (stor15 * stor18[address(msg.sender)].field_256) - (stor14 * stor18[address(msg.sender)].field_256)
                        stor18[address(msg.sender)].field_512 = 2
                        if remainder + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256):
                            require remainder + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                            require (remainder * stor22) + (stor16 * stor18[address(msg.sender)].field_256 * stor22) + (stor15 * stor18[address(msg.sender)].field_256 * stor22) + (stor14 * stor18[address(msg.sender)].field_256 * stor22) / remainder + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) == stor22
                        require ext_code.size(projectTokenAddress)
                        call projectTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (remainder * stor22) + (stor16 * stor18[address(msg.sender)].field_256 * stor22) + (stor15 * stor18[address(msg.sender)].field_256 * stor22) + (stor14 * stor18[address(msg.sender)].field_256 * stor22)
                        require ext_call.success
                        require ext_call.return_data[0]
                        call msg.sender with:
                           value remainder + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        uint8(stor21.field_168) = 0
                        emit 0x5bf2177e: msg.sender, remainder + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                else:
                    if stor18[address(msg.sender)].field_256:
                        require stor18[address(msg.sender)].field_256
                        require stor17 * stor18[address(msg.sender)].field_256 / stor18[address(msg.sender)].field_256 == stor17
                    require stor17 * stor18[address(msg.sender)].field_256 >= 0
                    require (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) >= stor17 * stor18[address(msg.sender)].field_256
                    if remainder <= 0:
                        require (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) <= stor23
                        stor23 = stor23 - (stor17 * stor18[address(msg.sender)].field_256) - (stor16 * stor18[address(msg.sender)].field_256) - (stor15 * stor18[address(msg.sender)].field_256) - (stor14 * stor18[address(msg.sender)].field_256)
                        stor18[address(msg.sender)].field_512 = 2
                        if (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256):
                            require (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                            require (stor17 * stor18[address(msg.sender)].field_256 * stor22) + (stor16 * stor18[address(msg.sender)].field_256 * stor22) + (stor15 * stor18[address(msg.sender)].field_256 * stor22) + (stor14 * stor18[address(msg.sender)].field_256 * stor22) / (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) == stor22
                        require ext_code.size(projectTokenAddress)
                        call projectTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (stor17 * stor18[address(msg.sender)].field_256 * stor22) + (stor16 * stor18[address(msg.sender)].field_256 * stor22) + (stor15 * stor18[address(msg.sender)].field_256 * stor22) + (stor14 * stor18[address(msg.sender)].field_256 * stor22)
                        require ext_call.success
                        require ext_call.return_data[0]
                        call msg.sender with:
                           value (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        uint8(stor21.field_168) = 0
                        emit 0x5bf2177e: msg.sender, (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                    else:
                        require remainder >= 0
                        require remainder + (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) >= remainder
                        remainder = 0
                        require remainder + (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) <= stor23
                        stor23 = stor23 - remainder - (stor17 * stor18[address(msg.sender)].field_256) - (stor16 * stor18[address(msg.sender)].field_256) - (stor15 * stor18[address(msg.sender)].field_256) - (stor14 * stor18[address(msg.sender)].field_256)
                        stor18[address(msg.sender)].field_512 = 2
                        if remainder + (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256):
                            require remainder + (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
                            require (remainder * stor22) + (stor17 * stor18[address(msg.sender)].field_256 * stor22) + (stor16 * stor18[address(msg.sender)].field_256 * stor22) + (stor15 * stor18[address(msg.sender)].field_256 * stor22) + (stor14 * stor18[address(msg.sender)].field_256 * stor22) / remainder + (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) == stor22
                        require ext_code.size(projectTokenAddress)
                        call projectTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (remainder * stor22) + (stor17 * stor18[address(msg.sender)].field_256 * stor22) + (stor16 * stor18[address(msg.sender)].field_256 * stor22) + (stor15 * stor18[address(msg.sender)].field_256 * stor22) + (stor14 * stor18[address(msg.sender)].field_256 * stor22)
                        require ext_call.success
                        require ext_call.return_data[0]
                        call msg.sender with:
                           value remainder + (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        uint8(stor21.field_168) = 0
                        emit 0x5bf2177e: msg.sender, remainder + (stor17 * stor18[address(msg.sender)].field_256) + (stor16 * stor18[address(msg.sender)].field_256) + (stor15 * stor18[address(msg.sender)].field_256) + (stor14 * stor18[address(msg.sender)].field_256)
}

function sub_47799092(?) {
    if msg.sender == owner:
        require not uint8(stor21.field_160)
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
            require ext_call.return_data[64] >= stor4
            require ext_call.return_data[64] <= stor4 + stor5
            require (ext_call.return_data[96] / 10^18) + 100 >= ext_call.return_data[96] / 10^18
            require (ext_call.return_data[96] / 10^18) + 100 >= 100
            require stor4 <= ext_call.return_data[64]
            require ext_call.return_data[64] - stor4 <= stor5
            require (150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / 150 == stor5 - ext_call.return_data[64] + stor4
            require stor5
            require ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000 >= (150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5
            require ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000 >= 1000
            if (ext_call.return_data[96] / 10^18) + 100 / 100:
                require (ext_call.return_data[96] / 10^18) + 100 / 100
                require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (ext_call.return_data[96] / 10^18) + 100 / 100 == ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000
            emit 0xfd3605c3: ext_call.return_data[96], (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000, ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000
            require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + stor6[stor7].field_0 >= stor6[stor7].field_0
            require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + stor6[stor7].field_0 >= (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
            stor6[stor7].field_0 += (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
            require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + totalWeight >= totalWeight
            require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + totalWeight >= (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
            totalWeight += (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
            totalVotes++
            stor18[address(ext_call.return_data[192])].field_0 = stor7
            stor18[address(ext_call.return_data[192])].field_256 = (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
            stor18[address(ext_call.return_data[192])].field_512 = 1
            emit 0x9ec97c38: address(ext_call.return_data[192]), ext_call.return_data[0], stor7, (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
        else:
            if ext_call.return_data[0] > stor8:
                require stor6[stor8].field_272
                require ext_call.return_data[64] >= stor4
                require ext_call.return_data[64] <= stor4 + stor5
                require (ext_call.return_data[96] / 10^18) + 100 >= ext_call.return_data[96] / 10^18
                require (ext_call.return_data[96] / 10^18) + 100 >= 100
                require stor4 <= ext_call.return_data[64]
                require ext_call.return_data[64] - stor4 <= stor5
                require (150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / 150 == stor5 - ext_call.return_data[64] + stor4
                require stor5
                require ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000 >= (150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5
                require ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000 >= 1000
                if (ext_call.return_data[96] / 10^18) + 100 / 100:
                    require (ext_call.return_data[96] / 10^18) + 100 / 100
                    require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (ext_call.return_data[96] / 10^18) + 100 / 100 == ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000
                emit 0xfd3605c3: ext_call.return_data[96], (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000, ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000
                require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + stor6[stor8].field_0 >= stor6[stor8].field_0
                require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + stor6[stor8].field_0 >= (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                stor6[stor8].field_0 += (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + totalWeight >= totalWeight
                require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + totalWeight >= (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                totalWeight += (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                totalVotes++
                stor18[address(ext_call.return_data[192])].field_0 = stor8
                stor18[address(ext_call.return_data[192])].field_256 = (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                stor18[address(ext_call.return_data[192])].field_512 = 1
                emit 0x9ec97c38: address(ext_call.return_data[192]), ext_call.return_data[0], stor8, (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
            else:
                if not ext_call.return_data[0] % stor9:
                    require stor6[ext_call.return_data[0]].field_272
                    require ext_call.return_data[64] >= stor4
                    require ext_call.return_data[64] <= stor4 + stor5
                    require (ext_call.return_data[96] / 10^18) + 100 >= ext_call.return_data[96] / 10^18
                    require (ext_call.return_data[96] / 10^18) + 100 >= 100
                    require stor4 <= ext_call.return_data[64]
                    require ext_call.return_data[64] - stor4 <= stor5
                    require (150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / 150 == stor5 - ext_call.return_data[64] + stor4
                    require stor5
                    require ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000 >= (150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5
                    require ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000 >= 1000
                    if (ext_call.return_data[96] / 10^18) + 100 / 100:
                        require (ext_call.return_data[96] / 10^18) + 100 / 100
                        require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (ext_call.return_data[96] / 10^18) + 100 / 100 == ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000
                    emit 0xfd3605c3: ext_call.return_data[96], (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000, ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000
                    require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + stor6[ext_call.return_data[0]].field_0 >= stor6[ext_call.return_data[0]].field_0
                    require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + stor6[ext_call.return_data[0]].field_0 >= (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                    stor6[ext_call.return_data[0]].field_0 += (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                    require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + totalWeight >= totalWeight
                    require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + totalWeight >= (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                    totalWeight += (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                    totalVotes++
                    stor18[address(ext_call.return_data[192])].field_0 = ext_call.return_data[0]
                    stor18[address(ext_call.return_data[192])].field_256 = (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                    stor18[address(ext_call.return_data[192])].field_512 = 1
                    emit 0x9ec97c38: address(ext_call.return_data[192]), ext_call.return_data[0], ext_call.return_data[0], (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                else:
                    require ext_call.return_data[0] % stor9 <= ext_call.return_data[0]
                    if ext_call.return_data[0] - (ext_call.return_data[0] % stor9) >= collected:
                        require stor6[ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_272
                        require ext_call.return_data[64] >= stor4
                        require ext_call.return_data[64] <= stor4 + stor5
                        require (ext_call.return_data[96] / 10^18) + 100 >= ext_call.return_data[96] / 10^18
                        require (ext_call.return_data[96] / 10^18) + 100 >= 100
                        require stor4 <= ext_call.return_data[64]
                        require ext_call.return_data[64] - stor4 <= stor5
                        require (150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / 150 == stor5 - ext_call.return_data[64] + stor4
                        require stor5
                        require ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000 >= (150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5
                        require ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000 >= 1000
                        if (ext_call.return_data[96] / 10^18) + 100 / 100:
                            require (ext_call.return_data[96] / 10^18) + 100 / 100
                            require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (ext_call.return_data[96] / 10^18) + 100 / 100 == ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000
                        emit 0xfd3605c3: ext_call.return_data[96], (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000, ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000
                        require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + stor6[ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 >= stor6[ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0
                        require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + stor6[ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 >= (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                        stor6[ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 += (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                        require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + totalWeight >= totalWeight
                        require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + totalWeight >= (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                        totalWeight += (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                        totalVotes++
                        stor18[address(ext_call.return_data[192])].field_0 = ext_call.return_data[0] - (ext_call.return_data[0] % stor9)
                        stor18[address(ext_call.return_data[192])].field_256 = (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                        stor18[address(ext_call.return_data[192])].field_512 = 1
                        emit 0x9ec97c38: address(ext_call.return_data[192]), ext_call.return_data[0], ext_call.return_data[0] - (ext_call.return_data[0] % stor9), (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                    else:
                        require stor9 >= 0
                        require stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9) >= stor9
                        require stor6[stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_272
                        require ext_call.return_data[64] >= stor4
                        require ext_call.return_data[64] <= stor4 + stor5
                        require (ext_call.return_data[96] / 10^18) + 100 >= ext_call.return_data[96] / 10^18
                        require (ext_call.return_data[96] / 10^18) + 100 >= 100
                        require stor4 <= ext_call.return_data[64]
                        require ext_call.return_data[64] - stor4 <= stor5
                        require (150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / 150 == stor5 - ext_call.return_data[64] + stor4
                        require stor5
                        require ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000 >= (150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5
                        require ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000 >= 1000
                        if (ext_call.return_data[96] / 10^18) + 100 / 100:
                            require (ext_call.return_data[96] / 10^18) + 100 / 100
                            require (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / (ext_call.return_data[96] / 10^18) + 100 / 100 == ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000
                        emit 0xfd3605c3: ext_call.return_data[96], (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000, ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5) + 1000
                        require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + stor6[stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 >= stor6[stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0
                        require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + stor6[stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 >= (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                        stor6[stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9)].field_0 += (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                        require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + totalWeight >= totalWeight
                        require ((1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000) + totalWeight >= (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                        totalWeight += (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                        totalVotes++
                        stor18[address(ext_call.return_data[192])].field_0 = stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9)
                        stor18[address(ext_call.return_data[192])].field_256 = (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
                        stor18[address(ext_call.return_data[192])].field_512 = 1
                        emit 0x9ec97c38: address(ext_call.return_data[192]), ext_call.return_data[0], stor9 + ext_call.return_data[0] - (ext_call.return_data[0] % stor9), (1000 * (ext_call.return_data[96] / 10^18) + 100 / 100) + ((150 * stor5) - (150 * ext_call.return_data[64]) + (150 * stor4) / stor5 * (ext_call.return_data[96] / 10^18) + 100 / 100) / 1000
}

function sub_5afb6ba5(?) {
    require 1 == bool(uint8(stor21.field_160))
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



}
