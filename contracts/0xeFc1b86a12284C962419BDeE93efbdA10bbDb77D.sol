contract main {




// =====================  Runtime code  =====================


uint8 lotteryState;
uint32 stor1;
uint256 sub_c5196426;
uint256 sub_bc663743;
uint8 stor3;
address sub_54879918Address; offset 8
uint256 stor3;

function sub_54879918(?) {
    return sub_54879918Address
}

function lotteryState() {
    require lotteryState <= 3
    return lotteryState
}

function sub_bc663743(?) {
    return sub_bc663743
}

function sub_c5196426(?) {
    return uint256(sub_c5196426)
}

function sub_f50cc09f(?) {
    return bool(uint8(stor3.field_0))
}

function _fallback() payable {
  stop
}

function sub_5e829a02(?) {
    require lotteryState <= 3
    return not lotteryState
}

function sub_2d00a151(?) {
    require msg.sender == sub_54879918Address
    sub_54879918Address = arg1
}

function sub_090d7da2(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x9d6ad02e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require lotteryState <= 3
    if lotteryState != 2:
        return 0
    lotteryState = 1
    emit 0x6b2b9179: uint256(sub_c5196426)
    return 1
}

function sub_f160902e(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x9d6ad02e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require lotteryState <= 3
    if lotteryState != 1:
        return 0
    lotteryState = 2
    emit 0xebbeac24: uint256(sub_c5196426)
    return 1
}

function sub_ec7b59cb(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0xdc94964e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    uint256(stor3.field_0) = not uint8(stor3.field_0) or Mask(248, 8, uint256(stor3.field_0))
    emit 0x4db476c3: bool(uint8(not uint8(stor3.field_0)))
}

function sub_b01217f4(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x15059fba with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    if not arg2:
        return 0
    if arg2 > eth.balance(this.address):
        return 0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function sub_e13f7fec(?) {
    require msg.sender == sub_54879918Address
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0xa7ad9777 with:
             gas gas_remaining wei
            args address(cd[36])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[128] = address(cd[36])
        emit 0x3adda866: address(cd[((32 * idx) + cd[4] + 36)]), address(cd[36])
        idx = idx + 1
        s = address(cd[((32 * idx) + cd[4] + 36)])
        continue 
}

function sub_08ed7f6f(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0xac2ab114 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require lotteryState <= 3
    if not lotteryState:
        return 0
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x4d4e6ef0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa0e9cd26 with:
         gas gas_remaining wei
        args uint256(sub_c5196426)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    lotteryState = 0
    uint256(sub_c5196426)++
    emit 0x86ad078e: uint256(sub_c5196426)
    return 1
}

function finishRound() {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x9d6ad02e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require lotteryState <= 3
    if not lotteryState:
        return 0
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x4d4e6ef0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa0e9cd26 with:
         gas gas_remaining wei
        args uint256(sub_c5196426)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    lotteryState = 0
    uint256(sub_c5196426)++
    emit 0x86ad078e: uint256(sub_c5196426)
    return 1
}

function sub_af224473(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x9d6ad02e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x4d4e6ef0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xaaca3d7d with:
         gas gas_remaining wei
        args uint256(sub_c5196426)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require lotteryState <= 3
    if lotteryState:
        return 0
    if not ext_call.return_data[0]:
        return 0
    sub_bc663743 = 1
    lotteryState = 1
    emit 0x79493bab: ext_call.return_data[0], uint256(sub_c5196426)
    return 1
}

function sub_b99f884d(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x9d6ad02e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0xda803ac2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0xabaf8208 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x82fbf195 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xedae4439 with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_aacbe737(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x9d6ad02e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0xabaf8208 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x82fbf195 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + 1 >= uint256(sub_c5196426):
        return 0
    if not uint8(stor3.field_0):
        return 0
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0xfc5ab87c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x21f4f4aa with:
         gas gas_remaining wei
        args (ext_call.return_data[0] + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).start() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor3.field_0) = 0
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0xda803ac2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x867100b1 with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
        args ext_call.return_data[0] + 1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_6f2c4553(?) payable {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x9511f9f3 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xee95feaf with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x4d4e6ef0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xaaca3d7d with:
         gas gas_remaining wei
        args uint256(sub_c5196426)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require msg.value >= ext_call.return_data[0]
    require ext_call.return_data[0]
    require lotteryState <= 3
    if lotteryState != 1:
        emit 0x8f7c0a93: uint256(sub_c5196426), arg2
        if not arg1:
            if msg.value:
                call arg2 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if msg.value:
                call arg1 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    else:
        require ext_code.size(sub_54879918Address)
        call sub_54879918Address.0xba6a8715 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if msg.value / ext_call.return_data[0] <= 30:
            call address(ext_call.return_data[0]).0x5f28cf80 with:
                 gas gas_remaining wei
                args uint256(sub_c5196426), address(arg2), uint128(msg.value / ext_call.return_data[0])
        else:
            call address(ext_call.return_data[0]).0x5f28cf80 with:
                 gas gas_remaining wei
                args uint256(sub_c5196426), address(arg2), 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[16 len 16] <= 0:
            if not arg1:
                if msg.value - (ext_call.return_data[0] * ext_call.return_data[16 len 16]):
                    call arg2 with:
                       value msg.value - (ext_call.return_data[0] * ext_call.return_data[16 len 16]) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if msg.value - (ext_call.return_data[0] * ext_call.return_data[16 len 16]):
                    call arg1 with:
                       value msg.value - (ext_call.return_data[0] * ext_call.return_data[16 len 16]) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        else:
            require ext_code.size(sub_54879918Address)
            call sub_54879918Address.0xfc5ab87c with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x90894bb6 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if sub_bc663743 != 1:
                if sub_bc663743 + ext_call.return_data[16 len 16] <= block.timestamp:
                    emit 0x147d9593: uint256(sub_c5196426), arg2
                    lotteryState = 3
                    emit 0x8a6d113b: uint256(sub_c5196426)
                    if not arg1:
                        if msg.value:
                            call arg2 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        if msg.value:
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                else:
                    if ext_call.return_data[88 len 8] <= ext_call.return_data[32]:
                        emit 0x147d9593: uint256(sub_c5196426), arg2
                        lotteryState = 3
                        emit 0x8a6d113b: uint256(sub_c5196426)
                        if not arg1:
                            if msg.value:
                                call arg2 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            if msg.value:
                                call arg1 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                    else:
                        if uint128(ext_call.return_data[0]) < ext_call.return_data[88 len 8] - ext_call.return_data[32]:
                            if uint128(ext_call.return_data[0]) <= 0:
                                if not arg1:
                                    if msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])):
                                        call arg2 with:
                                           value msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    if msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])):
                                        call arg1 with:
                                           value msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                            else:
                                require ext_code.size(sub_54879918Address)
                                call sub_54879918Address.0x9511f9f3 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x9b8f36db with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * uint128(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x515fdd1f with:
                                     gas gas_remaining wei
                                    args 0, uint32(stor1), address(arg2), ext_call.return_data[0] << 128, ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg1:
                                    emit 0x6c7f50c0: ext_call.return_data[32], ext_call.return_data[32] + uint128(ext_call.return_data[0]) - 1, ext_call.return_data[0], uint256(sub_c5196426), arg1, msg.sender, arg2
                                    if msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])):
                                        call arg1 with:
                                           value msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    emit 0x54239c1e: ext_call.return_data[32], ext_call.return_data[32] + uint128(ext_call.return_data[0]) - 1, ext_call.return_data[0], uint256(sub_c5196426), msg.sender, arg2
                                    if msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])):
                                        call arg2 with:
                                           value msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                        else:
                            if uint128(ext_call.return_data[0]) > ext_call.return_data[88 len 8] - ext_call.return_data[32]:
                                emit 0xb8ad0cf2: (ext_call.return_data[88 len 8] - ext_call.return_data[32]), arg2, uint256(sub_c5196426)
                            lotteryState = 3
                            emit 0x8a6d113b: uint256(sub_c5196426)
                            if uint64(ext_call.return_data[64]) - ext_call.return_data[32] <= 0:
                                if not arg1:
                                    if msg.value - (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]):
                                        call arg2 with:
                                           value msg.value - (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    if msg.value - (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]):
                                        call arg1 with:
                                           value msg.value - (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                            else:
                                require ext_code.size(sub_54879918Address)
                                call sub_54879918Address.0x9511f9f3 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x9b8f36db with:
                                     gas gas_remaining wei
                                    args msg.sender, (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) - (ext_call.return_data[32] * ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x515fdd1f with:
                                     gas gas_remaining wei
                                    args 0, uint32(stor1), address(arg2), uint64(ext_call.return_data[64]) - ext_call.return_data[32], ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg1:
                                    emit 0x6c7f50c0: ext_call.return_data[32], uint64(ext_call.return_data[64]) - 1, ext_call.return_data[0], uint256(sub_c5196426), arg1, msg.sender, arg2
                                    if msg.value - (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]):
                                        call arg1 with:
                                           value msg.value - (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    emit 0x54239c1e: ext_call.return_data[32], uint64(ext_call.return_data[64]) - 1, ext_call.return_data[0], uint256(sub_c5196426), msg.sender, arg2
                                    if msg.value - (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]):
                                        call arg2 with:
                                           value msg.value - (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
            else:
                if ext_call.return_data[32] + uint128(ext_call.return_data[0]) < ext_call.return_data[56 len 8]:
                    if uint128(ext_call.return_data[0]) <= 0:
                        if not arg1:
                            if msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])):
                                call arg2 with:
                                   value msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            if msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])):
                                call arg1 with:
                                   value msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                    else:
                        require ext_code.size(sub_54879918Address)
                        call sub_54879918Address.0x9511f9f3 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x9b8f36db with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0] * uint128(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x515fdd1f with:
                             gas gas_remaining wei
                            args 0, uint32(stor1), address(arg2), ext_call.return_data[0] << 128, ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg1:
                            emit 0x6c7f50c0: ext_call.return_data[32], ext_call.return_data[32] + uint128(ext_call.return_data[0]) - 1, ext_call.return_data[0], uint256(sub_c5196426), arg1, msg.sender, arg2
                            if msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])):
                                call arg1 with:
                                   value msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            emit 0x54239c1e: ext_call.return_data[32], ext_call.return_data[32] + uint128(ext_call.return_data[0]) - 1, ext_call.return_data[0], uint256(sub_c5196426), msg.sender, arg2
                            if msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])):
                                call arg2 with:
                                   value msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                else:
                    sub_bc663743 = block.timestamp
                    if sub_bc663743 + ext_call.return_data[16 len 16] <= block.timestamp:
                        emit 0x147d9593: uint256(sub_c5196426), arg2
                        lotteryState = 3
                        emit 0x8a6d113b: uint256(sub_c5196426)
                        if not arg1:
                            if msg.value:
                                call arg2 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            if msg.value:
                                call arg1 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                    else:
                        if ext_call.return_data[88 len 8] <= ext_call.return_data[32]:
                            emit 0x147d9593: uint256(sub_c5196426), arg2
                            lotteryState = 3
                            emit 0x8a6d113b: uint256(sub_c5196426)
                            if not arg1:
                                if msg.value:
                                    call arg2 with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                if msg.value:
                                    call arg1 with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                        else:
                            if uint128(ext_call.return_data[0]) < ext_call.return_data[88 len 8] - ext_call.return_data[32]:
                                if uint128(ext_call.return_data[0]) <= 0:
                                    if not arg1:
                                        if msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])):
                                            call arg2 with:
                                               value msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        if msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])):
                                            call arg1 with:
                                               value msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                else:
                                    require ext_code.size(sub_54879918Address)
                                    call sub_54879918Address.0x9511f9f3 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x9b8f36db with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] * uint128(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x515fdd1f with:
                                         gas gas_remaining wei
                                        args 0, uint32(stor1), address(arg2), ext_call.return_data[0] << 128, ext_call.return_data[32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if arg1:
                                        emit 0x6c7f50c0: ext_call.return_data[32], ext_call.return_data[32] + uint128(ext_call.return_data[0]) - 1, ext_call.return_data[0], uint256(sub_c5196426), arg1, msg.sender, arg2
                                        if msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])):
                                            call arg1 with:
                                               value msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        emit 0x54239c1e: ext_call.return_data[32], ext_call.return_data[32] + uint128(ext_call.return_data[0]) - 1, ext_call.return_data[0], uint256(sub_c5196426), msg.sender, arg2
                                        if msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])):
                                            call arg2 with:
                                               value msg.value - (ext_call.return_data[0] * uint128(ext_call.return_data[0])) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                            else:
                                if uint128(ext_call.return_data[0]) > ext_call.return_data[88 len 8] - ext_call.return_data[32]:
                                    emit 0xb8ad0cf2: (ext_call.return_data[88 len 8] - ext_call.return_data[32]), arg2, uint256(sub_c5196426)
                                lotteryState = 3
                                emit 0x8a6d113b: uint256(sub_c5196426)
                                if uint64(ext_call.return_data[64]) - ext_call.return_data[32] <= 0:
                                    if not arg1:
                                        if msg.value - (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]):
                                            call arg2 with:
                                               value msg.value - (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        if msg.value - (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]):
                                            call arg1 with:
                                               value msg.value - (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                else:
                                    require ext_code.size(sub_54879918Address)
                                    call sub_54879918Address.0x9511f9f3 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x9b8f36db with:
                                         gas gas_remaining wei
                                        args msg.sender, (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) - (ext_call.return_data[32] * ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x515fdd1f with:
                                         gas gas_remaining wei
                                        args 0, uint32(stor1), address(arg2), uint64(ext_call.return_data[64]) - ext_call.return_data[32], ext_call.return_data[32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if arg1:
                                        emit 0x6c7f50c0: ext_call.return_data[32], uint64(ext_call.return_data[64]) - 1, ext_call.return_data[0], uint256(sub_c5196426), arg1, msg.sender, arg2
                                        if msg.value - (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]):
                                            call arg1 with:
                                               value msg.value - (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        emit 0x54239c1e: ext_call.return_data[32], uint64(ext_call.return_data[64]) - 1, ext_call.return_data[0], uint256(sub_c5196426), msg.sender, arg2
                                        if msg.value - (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]):
                                            call arg2 with:
                                               value msg.value - (uint64(ext_call.return_data[64]) * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
}



}
