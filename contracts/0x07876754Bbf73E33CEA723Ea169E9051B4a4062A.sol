contract main {


// =======================  Init code  ======================


address stor0;
uint128 stor1; offset 160
address stor1;
address stor2;
address stor3;
uint256 stor5;

function _fallback() payable {
    stor5 = 10^16
    require not msg.value
    stor0 = msg.sender
    address(stor1.field_0) = msg.sender
    Mask(96, 0, stor1.field_160) = 0
    stor2 = code.data[11291 len 20]
    stor3 = code.data[11323 len 20]
    return code.data[368 len 10911]
}



// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address stor1;
address stor2;
address stor3;
mapping of uint256 withdraws;
uint256 limit;

function withdraws(address arg1) {
    return withdraws[arg1]
}

function stopped() {
    return bool(uint8(stor1.field_160))
}

function owner() {
    return owner
}

function limit() {
    return limit
}

function sub_7813dbd9(?) {
    require msg.sender == owner
    stor2 = arg1
}

function sub_88b157ac(?) {
    require msg.sender == owner
    stor3 = arg1
}

function setLimit(uint256 arg1) {
    require msg.sender == owner
    limit = arg1
}

function sub_a2df3cb4(?) {
    require msg.sender == owner
    withdraws[address(arg1)] = arg2
}

function start() {
    require msg.sender == address(stor1.field_0)
    Mask(96, 0, stor1.field_160) = 0
}

function emergencyStop() {
    require msg.sender == address(stor1.field_0)
    Mask(96, 0, stor1.field_160) = 1
}

function _fallback() payable {
    require withdraws[stor0] + msg.value >= withdraws[stor0]
    withdraws[stor0] += msg.value
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_7c3d14ac(?) {
    require ext_code.size(stor2)
    call stor2.games(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[224]:
        return 1
    require ext_call.return_data[128] <= 4
    if ext_call.return_data[128]:
        return 2
    if arg2 < limit:
        return 3
    if owner != msg.sender:
        return 0
    return 4
}

function withdrawByOwner() {
    require not uint8(stor1.field_160)
    require msg.sender == owner
    require withdraws[address(msg.sender)] > 0
    require eth.balance(this.address) >= withdraws[address(msg.sender)]
    withdraws[address(msg.sender)] = 0
    call msg.sender with:
       value withdraws[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit UserWithdraw(msg.sender, withdraws[address(msg.sender)]);
}

function sub_06477a87(?) {
    if not withdraws[address(arg1)] / 100:
        return 1
    require withdraws[address(arg1)] / 100
    require 85 * withdraws[address(arg1)] / 100 / withdraws[address(arg1)] / 100 == 85
    if not 85 * withdraws[address(arg1)] / 100:
        return 1
    if eth.balance(this.address) < 85 * withdraws[address(arg1)] / 100:
        return 2
    if msg.sender == owner:
        return 3
    if withdraws[stor0] >= 85 * withdraws[address(arg1)] / 100:
        return 0
    return 4
}

function sub_c4d189d4(?) payable {
    require not uint8(stor1.field_160)
    require ext_code.size(stor2)
    call stor2.games(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[224]
    require ext_call.return_data[128] <= 4
    require not ext_call.return_data[128]
    require msg.value >= limit
    require owner != msg.sender
    require ext_code.size(stor2)
    call stor2.0xd22705e6 with:
         gas gas_remaining - 710 wei
        args 0, uint32(msg.sender), msg.value, arg1, 160, sha3(arg2[all]), arg2.length, arg2[all]
    require ext_call.success
    require withdraws[stor0] + msg.value >= withdraws[stor0]
    withdraws[stor0] += msg.value
    emit 0x17f50ef1: arg1, Array(len=arg2.length, data=arg2[all]), msg.sender
}

function sub_64ae6a01(?) {
    require ext_code.size(stor3)
    call stor3.0x385afd8c with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0x82b2fa7e with:
         gas gas_remaining - 710 wei
        args arg1, msg.sender
    require ext_call.success
    if not ext_call.return_data[128]:
        return 1
    if not ext_call.return_data[96]:
        return 2
    if not ext_call.return_data[160]:
        if not ext_call.return_data[0]:
            return 3
    if ext_call.return_data[64]:
        return 4
    if ext_call.return_data[224] <= 0:
        return 0
    if block.number < ext_call.return_data[224]:
        return 5
    require ext_call.return_data[224] <= block.number
    if block.number - ext_call.return_data[224] <= 160 * 3600:
        return 0
    return 6
}

function sub_28bdb1f4(?) {
    require ext_code.size(stor3)
    call stor3.0x2d4f20e3 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0x5368c8e5 with:
         gas gas_remaining - 710 wei
        args arg1, msg.sender, arg2
    require ext_call.success
    if ext_call.return_data[0] != arg2:
        return 0
    require ext_code.size(stor2)
    call stor2.0xf7cf67d1 with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.games(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[160]:
        if ext_call.return_data[32]:
            return 1, 0 / ext_call.return_data[32]
    else:
        if ext_call.return_data[160]:
            if ext_call.return_data[160] * ext_call.return_data[32] / ext_call.return_data[160] == ext_call.return_data[32]:
                if ext_call.return_data[32]:
                    return 1, ext_call.return_data[160] * ext_call.return_data[32] / ext_call.return_data[32]
    revert
}

function sub_8c74102c(?) {
    require ext_code.size(stor3)
    call stor3.0x385afd8c with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0x82b2fa7e with:
         gas gas_remaining - 710 wei
        args arg1, msg.sender
    require ext_call.success
    if not ext_call.return_data[96]:
        return 0
    if not ext_call.return_data[128]:
        return 0
    if not ext_call.return_data[0]:
        if not ext_call.return_data[160]:
            return 0
    require ext_code.size(stor2)
    call stor2.games(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[160] / 20:
        if ext_call.return_data[32]:
            return 1, 0 / ext_call.return_data[32]
    else:
        if ext_call.return_data[160] / 20:
            if ext_call.return_data[160] / 20 * ext_call.return_data[32] / ext_call.return_data[160] / 20 == ext_call.return_data[32]:
                if ext_call.return_data[32]:
                    return 1, ext_call.return_data[160] / 20 * ext_call.return_data[32] / ext_call.return_data[32]
    revert
}

function withdraw() {
    require not uint8(stor1.field_160)
    require withdraws[address(msg.sender)] / 100
    require withdraws[address(msg.sender)] / 100
    require 85 * withdraws[address(msg.sender)] / 100 / withdraws[address(msg.sender)] / 100 == 85
    require 85 * withdraws[address(msg.sender)] / 100
    require eth.balance(this.address) >= 85 * withdraws[address(msg.sender)] / 100
    require owner != msg.sender
    require withdraws[stor0] >= 85 * withdraws[address(msg.sender)] / 100
    if not withdraws[address(msg.sender)] / 100:
        call msg.sender with:
             gas 2300 wei
        require ext_call.success
        withdraws[address(msg.sender)] = 0
        require 0 <= withdraws[stor0]
        emit UserWithdraw(msg.sender, 0);
    else:
        require withdraws[address(msg.sender)] / 100
        require 85 * withdraws[address(msg.sender)] / 100 / withdraws[address(msg.sender)] / 100 == 85
        call msg.sender with:
           value 85 * withdraws[address(msg.sender)] / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        withdraws[address(msg.sender)] = 0
        require 85 * withdraws[address(msg.sender)] / 100 <= withdraws[stor0]
        withdraws[stor0] += -85 * withdraws[address(msg.sender)] / 100
        emit UserWithdraw(msg.sender, 85 * withdraws[address(msg.sender)] / 100);
}

function sub_d0ec13c4(?) {
    require ext_code.size(stor3)
    call stor3.0x385afd8c with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0x2d4f20e3 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0x5368c8e5 with:
         gas gas_remaining - 710 wei
        args arg1, msg.sender, arg2
    require ext_call.success
    if ext_call.return_data[0] != arg2:
        if not ext_call.return_data[128]:
            return 1
        if ext_call.return_data[96]:
            return 3
        return 2
    require ext_code.size(stor2)
    call stor2.0xf7cf67d1 with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.games(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[160]:
        require ext_call.return_data[160]
        require ext_call.return_data[160] * ext_call.return_data[32] / ext_call.return_data[160] == ext_call.return_data[32]
    require ext_call.return_data[32]
    if not ext_call.return_data[128]:
        return 1
    if not ext_call.return_data[96]:
        return 2
    require ext_code.size(stor2)
    call stor2.0x5368c8e5 with:
         gas gas_remaining - 710 wei
        args arg1, msg.sender, arg2
    require ext_call.success
    if ext_call.return_data[64]:
        return 4
    if ext_call.return_data[224] <= 0:
        return 0
    if block.number < ext_call.return_data[224]:
        return 5
    require ext_call.return_data[224] <= block.number
    if block.number - ext_call.return_data[224] <= 160 * 3600:
        return 0
    return 6
}

function sub_1b5bd629(?) {
    require not uint8(stor1.field_160)
    require ext_code.size(stor3)
    call stor3.0x385afd8c with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0x82b2fa7e with:
         gas gas_remaining - 710 wei
        args arg1, msg.sender
    require ext_call.success
    require ext_call.return_data[128]
    require ext_call.return_data[96]
    if not ext_call.return_data[160]:
        require ext_call.return_data[0]
    require not ext_call.return_data[64]
    if ext_call.return_data[224] > 0:
        require block.number >= ext_call.return_data[224]
        require ext_call.return_data[224] <= block.number
        require block.number - ext_call.return_data[224] <= 160 * 3600
    require ext_code.size(stor3)
    call stor3.0x82b2fa7e with:
         gas gas_remaining - 710 wei
        args arg1, msg.sender
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0x385afd8c with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0x2190a8d9 with:
         gas gas_remaining - 710 wei
        args arg1, msg.sender
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.games(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[160] / 20:
        require ext_call.return_data[32]
        require withdraws[address(msg.sender)] + (0 / ext_call.return_data[32]) >= withdraws[address(msg.sender)]
        withdraws[address(msg.sender)] += 0 / ext_call.return_data[32]
    else:
        require ext_call.return_data[160] / 20
        require ext_call.return_data[160] / 20 * ext_call.return_data[32] / ext_call.return_data[160] / 20 == ext_call.return_data[32]
        require ext_call.return_data[32]
        require withdraws[address(msg.sender)] + (ext_call.return_data[160] / 20 * ext_call.return_data[32] / ext_call.return_data[32]) >= withdraws[address(msg.sender)]
        withdraws[address(msg.sender)] += ext_call.return_data[160] / 20 * ext_call.return_data[32] / ext_call.return_data[32]
}

function claim(bytes32 arg1, bytes32 arg2) {
    require not uint8(stor1.field_160)
    require ext_code.size(stor3)
    call stor3.0x385afd8c with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0x2d4f20e3 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0x5368c8e5 with:
         gas gas_remaining - 710 wei
        args arg1, msg.sender, arg2
    require ext_call.success
    if ext_call.return_data[0] != arg2:
        require ext_call.return_data[128]
        require not ext_call.return_data[96]
        revert
    else:
        require ext_code.size(stor2)
        call stor2.0xf7cf67d1 with:
             gas gas_remaining - 710 wei
            args arg1, arg2
        require ext_call.success
        require ext_code.size(stor2)
        call stor2.games(bytes32 arg1) with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        if ext_call.return_data[160]:
            require ext_call.return_data[160]
            require ext_call.return_data[160] * ext_call.return_data[32] / ext_call.return_data[160] == ext_call.return_data[32]
            require ext_call.return_data[32]
            require ext_call.return_data[128]
            require ext_call.return_data[96]
            require ext_code.size(stor2)
            call stor2.0x5368c8e5 with:
                 gas gas_remaining - 710 wei
                args arg1, msg.sender, arg2
            require ext_call.success
            require not ext_call.return_data[64]
            if ext_call.return_data[224] <= 0:
                require ext_code.size(stor3)
                call stor3.0x2d4f20e3 with:
                     gas gas_remaining - 710 wei
                    args arg1
                require ext_call.success
                require ext_code.size(stor2)
                call stor2.0x5368c8e5 with:
                     gas gas_remaining - 710 wei
                    args arg1, msg.sender, arg2
                require ext_call.success
                if ext_call.return_data[0] != arg2:
                    require ext_code.size(stor2)
                    call stor2.0x4aa4647 with:
                         gas gas_remaining - 710 wei
                        args arg1, arg2, msg.sender
                    require ext_call.success
                    require withdraws[address(msg.sender)] >= withdraws[address(msg.sender)]
                    emit 0x34b028ab: arg1, arg2, msg.sender
                else:
                    require ext_code.size(stor2)
                    call stor2.0xf7cf67d1 with:
                         gas gas_remaining - 710 wei
                        args arg1, arg2
                    require ext_call.success
                    require ext_code.size(stor2)
                    call stor2.games(bytes32 arg1) with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require ext_call.success
                    if ext_call.return_data[160]:
                        require ext_call.return_data[160]
                        require ext_call.return_data[160] * ext_call.return_data[32] / ext_call.return_data[160] == ext_call.return_data[32]
                        require ext_call.return_data[32]
                        require ext_code.size(stor2)
                        call stor2.0x4aa4647 with:
                             gas gas_remaining - 710 wei
                            args arg1, arg2, msg.sender
                        require ext_call.success
                        require withdraws[address(msg.sender)] + (ext_call.return_data[160] * ext_call.return_data[32] / ext_call.return_data[32]) >= withdraws[address(msg.sender)]
                        withdraws[address(msg.sender)] += ext_call.return_data[160] * ext_call.return_data[32] / ext_call.return_data[32]
                        emit 0x34b028ab: arg1, arg2, msg.sender
                    else:
                        require ext_call.return_data[32]
                        require ext_code.size(stor2)
                        call stor2.0x4aa4647 with:
                             gas gas_remaining - 710 wei
                            args arg1, arg2, msg.sender
                        require ext_call.success
                        require withdraws[address(msg.sender)] + (0 / ext_call.return_data[32]) >= withdraws[address(msg.sender)]
                        withdraws[address(msg.sender)] += 0 / ext_call.return_data[32]
                        emit 0x34b028ab: arg1, arg2, msg.sender
            else:
                require block.number >= ext_call.return_data[224]
                require ext_call.return_data[224] <= block.number
                require block.number - ext_call.return_data[224] <= 160 * 3600
                require ext_code.size(stor3)
                call stor3.0x2d4f20e3 with:
                     gas gas_remaining - 710 wei
                    args arg1
                require ext_call.success
                require ext_code.size(stor2)
                call stor2.0x5368c8e5 with:
                     gas gas_remaining - 710 wei
                    args arg1, msg.sender, arg2
                require ext_call.success
                if ext_call.return_data[0] != arg2:
                    require ext_code.size(stor2)
                    call stor2.0x4aa4647 with:
                         gas gas_remaining - 710 wei
                        args arg1, arg2, msg.sender
                    require ext_call.success
                    require withdraws[address(msg.sender)] >= withdraws[address(msg.sender)]
                    emit 0x34b028ab: arg1, arg2, msg.sender
                else:
                    require ext_code.size(stor2)
                    call stor2.0xf7cf67d1 with:
                         gas gas_remaining - 710 wei
                        args arg1, arg2
                    require ext_call.success
                    require ext_code.size(stor2)
                    call stor2.games(bytes32 arg1) with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require ext_call.success
                    if ext_call.return_data[160]:
                        require ext_call.return_data[160]
                        require ext_call.return_data[160] * ext_call.return_data[32] / ext_call.return_data[160] == ext_call.return_data[32]
                        require ext_call.return_data[32]
                        require ext_code.size(stor2)
                        call stor2.0x4aa4647 with:
                             gas gas_remaining - 710 wei
                            args arg1, arg2, msg.sender
                        require ext_call.success
                        require withdraws[address(msg.sender)] + (ext_call.return_data[160] * ext_call.return_data[32] / ext_call.return_data[32]) >= withdraws[address(msg.sender)]
                        withdraws[address(msg.sender)] += ext_call.return_data[160] * ext_call.return_data[32] / ext_call.return_data[32]
                        emit 0x34b028ab: arg1, arg2, msg.sender
                    else:
                        require ext_call.return_data[32]
                        require ext_code.size(stor2)
                        call stor2.0x4aa4647 with:
                             gas gas_remaining - 710 wei
                            args arg1, arg2, msg.sender
                        require ext_call.success
                        require withdraws[address(msg.sender)] + (0 / ext_call.return_data[32]) >= withdraws[address(msg.sender)]
                        withdraws[address(msg.sender)] += 0 / ext_call.return_data[32]
                        emit 0x34b028ab: arg1, arg2, msg.sender
        else:
            require ext_call.return_data[32]
            require ext_call.return_data[128]
            require ext_call.return_data[96]
            require ext_code.size(stor2)
            call stor2.0x5368c8e5 with:
                 gas gas_remaining - 710 wei
                args arg1, msg.sender, arg2
            require ext_call.success
            require not ext_call.return_data[64]
            if ext_call.return_data[224] <= 0:
                require ext_code.size(stor3)
                call stor3.0x2d4f20e3 with:
                     gas gas_remaining - 710 wei
                    args arg1
                require ext_call.success
                require ext_code.size(stor2)
                call stor2.0x5368c8e5 with:
                     gas gas_remaining - 710 wei
                    args arg1, msg.sender, arg2
                require ext_call.success
                if ext_call.return_data[0] != arg2:
                    require ext_code.size(stor2)
                    call stor2.0x4aa4647 with:
                         gas gas_remaining - 710 wei
                        args arg1, arg2, msg.sender
                    require ext_call.success
                    require withdraws[address(msg.sender)] >= withdraws[address(msg.sender)]
                    emit 0x34b028ab: arg1, arg2, msg.sender
                else:
                    require ext_code.size(stor2)
                    call stor2.0xf7cf67d1 with:
                         gas gas_remaining - 710 wei
                        args arg1, arg2
                    require ext_call.success
                    require ext_code.size(stor2)
                    call stor2.games(bytes32 arg1) with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require ext_call.success
                    if ext_call.return_data[160]:
                        require ext_call.return_data[160]
                        require ext_call.return_data[160] * ext_call.return_data[32] / ext_call.return_data[160] == ext_call.return_data[32]
                        require ext_call.return_data[32]
                        require ext_code.size(stor2)
                        call stor2.0x4aa4647 with:
                             gas gas_remaining - 710 wei
                            args arg1, arg2, msg.sender
                        require ext_call.success
                        require withdraws[address(msg.sender)] + (ext_call.return_data[160] * ext_call.return_data[32] / ext_call.return_data[32]) >= withdraws[address(msg.sender)]
                        withdraws[address(msg.sender)] += ext_call.return_data[160] * ext_call.return_data[32] / ext_call.return_data[32]
                        emit 0x34b028ab: arg1, arg2, msg.sender
                    else:
                        require ext_call.return_data[32]
                        require ext_code.size(stor2)
                        call stor2.0x4aa4647 with:
                             gas gas_remaining - 710 wei
                            args arg1, arg2, msg.sender
                        require ext_call.success
                        require withdraws[address(msg.sender)] + (0 / ext_call.return_data[32]) >= withdraws[address(msg.sender)]
                        withdraws[address(msg.sender)] += 0 / ext_call.return_data[32]
                        emit 0x34b028ab: arg1, arg2, msg.sender
            else:
                require block.number >= ext_call.return_data[224]
                require ext_call.return_data[224] <= block.number
                require block.number - ext_call.return_data[224] <= 160 * 3600
                require ext_code.size(stor3)
                call stor3.0x2d4f20e3 with:
                     gas gas_remaining - 710 wei
                    args arg1
                require ext_call.success
                require ext_code.size(stor2)
                call stor2.0x5368c8e5 with:
                     gas gas_remaining - 710 wei
                    args arg1, msg.sender, arg2
                require ext_call.success
                if ext_call.return_data[0] != arg2:
                    require ext_code.size(stor2)
                    call stor2.0x4aa4647 with:
                         gas gas_remaining - 710 wei
                        args arg1, arg2, msg.sender
                    require ext_call.success
                    require withdraws[address(msg.sender)] >= withdraws[address(msg.sender)]
                    emit 0x34b028ab: arg1, arg2, msg.sender
                else:
                    require ext_code.size(stor2)
                    call stor2.0xf7cf67d1 with:
                         gas gas_remaining - 710 wei
                        args arg1, arg2
                    require ext_call.success
                    require ext_code.size(stor2)
                    call stor2.games(bytes32 arg1) with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require ext_call.success
                    if ext_call.return_data[160]:
                        require ext_call.return_data[160]
                        require ext_call.return_data[160] * ext_call.return_data[32] / ext_call.return_data[160] == ext_call.return_data[32]
                        require ext_call.return_data[32]
                        require ext_code.size(stor2)
                        call stor2.0x4aa4647 with:
                             gas gas_remaining - 710 wei
                            args arg1, arg2, msg.sender
                        require ext_call.success
                        require withdraws[address(msg.sender)] + (ext_call.return_data[160] * ext_call.return_data[32] / ext_call.return_data[32]) >= withdraws[address(msg.sender)]
                        withdraws[address(msg.sender)] += ext_call.return_data[160] * ext_call.return_data[32] / ext_call.return_data[32]
                        emit 0x34b028ab: arg1, arg2, msg.sender
                    else:
                        require ext_call.return_data[32]
                        require ext_code.size(stor2)
                        call stor2.0x4aa4647 with:
                             gas gas_remaining - 710 wei
                            args arg1, arg2, msg.sender
                        require ext_call.success
                        require withdraws[address(msg.sender)] + (0 / ext_call.return_data[32]) >= withdraws[address(msg.sender)]
                        withdraws[address(msg.sender)] += 0 / ext_call.return_data[32]
                        emit 0x34b028ab: arg1, arg2, msg.sender
}



}
