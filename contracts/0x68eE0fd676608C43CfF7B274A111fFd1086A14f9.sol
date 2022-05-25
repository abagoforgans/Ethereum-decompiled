contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint8 stor1;
mapping of struct sub_f4f2a780;
array of struct sub_4d9879c5;
address stor4;
array of struct stor5;
array of uint256 description;
uint8 sub_45adff8a; offset 160
uint16 stor7;
uint16 sub_d74be9bf; offset 168
address sub_6bac84abAddress;

function sub_08ffed5c(?) {
    mem[128] = sub_f4f2a780[arg1].field_0
    idx = 128
    s = 0
    while sub_f4f2a780[arg1].length + 96 > idx:
        mem[idx + 32] = sub_f4f2a780[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if uint8(sub_f4f2a780[arg1].field_256) <= 5:
        if uint8(sub_f4f2a780[arg1].field_264) <= 2:
            return Array(len=sub_f4f2a780[arg1].length, data=mem[128 len sub_f4f2a780[arg1].length]), 
                   uint8(sub_f4f2a780[arg1].field_256),
                   uint8(sub_f4f2a780[arg1].field_256),
                   address(sub_f4f2a780[arg1].field_256),
                   sub_f4f2a780[arg1].field_512
    revert
}

function getTxCount() {
    return sub_d74be9bf
}

function sub_45adff8a(?) {
    return sub_45adff8a
}

function sub_4d9879c5(?) {
    require arg2 < sub_4d9879c5[arg1].field_0
    return address(sub_4d9879c5[arg1][arg2].field_0)
}

function sub_63dbf79e(?) {
    return bool(stor1[arg1])
}

function sub_6bac84ab(?) {
    return sub_6bac84abAddress
}

function description() {
    return description[0 len description.length]
}

function sub_d74be9bf(?) {
    return sub_d74be9bf
}

function sub_f4f2a780(?) {
    require arg1 < sub_d74be9bf
    require stor1[address(msg.sender)]
    mem[448] = sub_f4f2a780[arg1 << 240].field_0
    idx = 448
    s = 0
    while sub_f4f2a780[arg1 << 240].length + 416 > idx:
        mem[idx + 32] = sub_f4f2a780[arg1 << 240][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if uint8(sub_f4f2a780[arg1 << 240].field_256) <= 5:
        if uint8(sub_f4f2a780[arg1 << 240].field_264) <= 2:
            if uint8(sub_f4f2a780[arg1 << 240].field_256) <= 5:
                if uint8(sub_f4f2a780[arg1 << 240].field_264) <= 2:
                    return Array(len=sub_f4f2a780[arg1 << 240].length, data=mem[448 len sub_f4f2a780[arg1 << 240].length]), 
                           uint8(sub_f4f2a780[arg1 << 240].field_256),
                           uint8(sub_f4f2a780[arg1 << 240].field_256),
                           address(sub_f4f2a780[arg1 << 240].field_256),
                           sub_f4f2a780[arg1 << 240].field_512 / 10^9,
                           sub_f4f2a780[arg1 << 240].field_512 % 10^9
    revert
}

function _fallback() payable {
    emit EthReceived(msg.value, msg.sender);
}

function addSigner(address arg1) {
    require msg.sender == this.address
    require not stor1[address(arg1)]
    if stor5.length >= 50:
        emit 0xdc456bdc: Array(len=44, data='Cannot add a signer because of t', 'he max limit'), arg1
    else:
        stor5.length++
        address(stor5[stor5.length].field_0) = arg1
        stor1[address(arg1)] = 1
        emit SignerAdded(arg1);
}

function sub_19ca5661(?) {
    require stor1[address(msg.sender)]
    require sub_d74be9bf < stor0
    sub_d74be9bf = uint16(sub_d74be9bf + 1)
    sub_f4f2a780[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_f4f2a780[stor7].field_512 = 0
    uint8(sub_f4f2a780[stor7].field_256) = 4
    uint8(sub_f4f2a780[stor7].field_264) = 0
    address(sub_f4f2a780[stor7].field_272) = arg1
    sub_4d9879c5[stor7].field_0++
    address(sub_4d9879c5[stor7][sub_4d9879c5[stor7].field_0].field_0) = msg.sender
    emit 0xedd193ea: stor7, Array(len=arg2.length, data=arg2[all]), msg.sender, arg1
    emit 0xa4ea6a7c: stor7, 1, msg.sender
    return sub_d74be9bf
}

function sub_8bbf0d45(?) {
    require stor1[address(msg.sender)]
    require sub_d74be9bf < stor0
    sub_d74be9bf = uint16(sub_d74be9bf + 1)
    sub_f4f2a780[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_f4f2a780[stor7].field_512 = 0
    uint8(sub_f4f2a780[stor7].field_256) = 5
    uint8(sub_f4f2a780[stor7].field_264) = 0
    address(sub_f4f2a780[stor7].field_272) = arg1
    sub_4d9879c5[stor7].field_0++
    address(sub_4d9879c5[stor7][sub_4d9879c5[stor7].field_0].field_0) = msg.sender
    emit 0x44f87542: stor7, Array(len=arg2.length, data=arg2[all]), msg.sender, arg1
    emit 0xa4ea6a7c: stor7, 1, msg.sender
    return sub_d74be9bf
}

function sub_ad6282fd(?) {
    require stor1[address(msg.sender)]
    require sub_d74be9bf < stor0
    sub_d74be9bf = uint16(sub_d74be9bf + 1)
    sub_f4f2a780[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_f4f2a780[stor7].field_512 = 0
    uint8(sub_f4f2a780[stor7].field_256) = 3
    uint8(sub_f4f2a780[stor7].field_264) = 0
    address(sub_f4f2a780[stor7].field_272) = arg1
    sub_4d9879c5[stor7].field_0++
    address(sub_4d9879c5[stor7][sub_4d9879c5[stor7].field_0].field_0) = msg.sender
    emit 0xfff169e8: stor7, Array(len=arg2.length, data=arg2[all]), msg.sender, arg1
    emit 0xa4ea6a7c: stor7, 1, msg.sender
    return sub_d74be9bf
}

function sub_83082374(?) {
    require stor1[address(msg.sender)]
    require sub_d74be9bf < stor0
    sub_d74be9bf = uint16(sub_d74be9bf + 1)
    sub_f4f2a780[stor7][].field_0 = Array(len=arg3.length, data=arg3[all])
    sub_f4f2a780[stor7].field_512 = arg2
    uint8(sub_f4f2a780[stor7].field_256) = 0
    uint8(sub_f4f2a780[stor7].field_264) = 0
    address(sub_f4f2a780[stor7].field_272) = arg1
    sub_4d9879c5[stor7].field_0++
    address(sub_4d9879c5[stor7][sub_4d9879c5[stor7].field_0].field_0) = msg.sender
    emit 0x8d69c969: stor7, arg2 / 10^9, arg2 % 10^9, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1
    emit 0xa4ea6a7c: stor7, 1, msg.sender
    return sub_d74be9bf
}

function sub_42ae072d(?) {
    require stor1[address(msg.sender)]
    require not stor1[address(arg1)]
    require sub_d74be9bf < stor0
    sub_d74be9bf = uint16(sub_d74be9bf + 1)
    sub_f4f2a780[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_f4f2a780[stor7].field_512 = 0
    uint8(sub_f4f2a780[stor7].field_256) = 1
    uint8(sub_f4f2a780[stor7].field_264) = 0
    address(sub_f4f2a780[stor7].field_272) = arg1
    sub_4d9879c5[stor7].field_0++
    address(sub_4d9879c5[stor7][sub_4d9879c5[stor7].field_0].field_0) = msg.sender
    emit 0x841bd24e: stor7, Array(len=arg2.length, data=arg2[all]), msg.sender, arg1
    emit 0xa4ea6a7c: stor7, 1, msg.sender
    return sub_d74be9bf
}

function sub_461cc065(?) {
    require stor1[address(msg.sender)]
    require stor1[address(arg1)]
    if uint8(stor5.length) == sub_45adff8a:
        emit 0x33db158b: Array(len=28, data='cannot meet no of min signs.'), arg1
        revert
    require sub_d74be9bf < stor0
    sub_d74be9bf = uint16(sub_d74be9bf + 1)
    sub_f4f2a780[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_f4f2a780[stor7].field_512 = 0
    uint8(sub_f4f2a780[stor7].field_256) = 2
    uint8(sub_f4f2a780[stor7].field_264) = 0
    address(sub_f4f2a780[stor7].field_272) = arg1
    sub_4d9879c5[stor7].field_0++
    address(sub_4d9879c5[stor7][sub_4d9879c5[stor7].field_0].field_0) = msg.sender
    emit 0x6f05fb89: stor7, Array(len=arg2.length, data=arg2[all]), msg.sender, arg1
    emit 0xa4ea6a7c: stor7, 1, msg.sender
    return sub_d74be9bf
}

function getSigners() {
    if not stor1[address(msg.sender)]:
        require stor4 == msg.sender
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = address(stor5[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return Array(len=stor5.length, data=mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 192 len (32 * stor5.length) - floor32(stor5.length)]), 
}

function sub_939782d5(?) {
    require arg1 < sub_d74be9bf
    require stor1[address(msg.sender)]
    if not sub_4d9879c5[arg1 << 240].field_0:
        mem[(32 * sub_4d9879c5[arg1 << 240].field_0) + 128] = 32
        mem[(32 * sub_4d9879c5[arg1 << 240].field_0) + 160] = sub_4d9879c5[arg1 << 240].field_0
        mem[(32 * sub_4d9879c5[arg1 << 240].field_0) + 192 len floor32(sub_4d9879c5[arg1 << 240].field_0)] = mem[128 len floor32(sub_4d9879c5[arg1 << 240].field_0)]
        return memory
          from (32 * sub_4d9879c5[arg1 << 240].field_0) + 128
           len (96 * sub_4d9879c5[arg1 << 240].field_0) + 64
    mem[128] = address(sub_4d9879c5[arg1 << 240].field_0)
    idx = 128
    s = 0
    while (32 * sub_4d9879c5[arg1 << 240].field_0) + 96 > idx:
        mem[idx + 32] = address(sub_4d9879c5[arg1 << 240][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_4d9879c5[arg1 << 240].field_0) + 192 len floor32(sub_4d9879c5[arg1 << 240].field_0)] = mem[128 len floor32(sub_4d9879c5[arg1 << 240].field_0)]
    return Array(len=sub_4d9879c5[arg1 << 240].field_0, data=mem[128 len floor32(sub_4d9879c5[arg1 << 240].field_0)], mem[(32 * sub_4d9879c5[arg1 << 240].field_0) + floor32(sub_4d9879c5[arg1 << 240].field_0) + 192 len (32 * sub_4d9879c5[arg1 << 240].field_0) - floor32(sub_4d9879c5[arg1 << 240].field_0)]), 
}

function sub_4fe5bf41(?) {
    require stor1[address(msg.sender)]
    if not arg2:
        require arg3 >= 0
        require stor1[address(msg.sender)]
        require sub_d74be9bf < stor0
        sub_d74be9bf = uint16(sub_d74be9bf + 1)
        sub_f4f2a780[stor7][].field_0 = Array(len=arg4.length, data=arg4[all])
        sub_f4f2a780[stor7].field_512 = arg3
        uint8(sub_f4f2a780[stor7].field_256) = 0
        uint8(sub_f4f2a780[stor7].field_264) = 0
        address(sub_f4f2a780[stor7].field_272) = arg1
        sub_4d9879c5[stor7].field_0++
        address(sub_4d9879c5[stor7][sub_4d9879c5[stor7].field_0].field_0) = msg.sender
        emit 0x8d69c969: stor7, arg3 / 10^9, arg3 % 10^9, Array(len=arg4.length, data=arg4[all]), msg.sender, arg1
    else:
        require arg2
        require 10^9 * arg2 / arg2 == 10^9
        require (10^9 * arg2) + arg3 >= 10^9 * arg2
        require stor1[address(msg.sender)]
        require sub_d74be9bf < stor0
        sub_d74be9bf = uint16(sub_d74be9bf + 1)
        sub_f4f2a780[stor7][].field_0 = Array(len=arg4.length, data=arg4[all])
        sub_f4f2a780[stor7].field_512 = (10^9 * arg2) + arg3
        uint8(sub_f4f2a780[stor7].field_256) = 0
        uint8(sub_f4f2a780[stor7].field_264) = 0
        address(sub_f4f2a780[stor7].field_272) = arg1
        sub_4d9879c5[stor7].field_0++
        address(sub_4d9879c5[stor7][sub_4d9879c5[stor7].field_0].field_0) = msg.sender
        emit 0x8d69c969: stor7, (10^9 * arg2) + arg3 / 10^9, (10^9 * arg2) + arg3 % 10^9, Array(len=arg4.length, data=arg4[all]), msg.sender, arg1
    emit 0xa4ea6a7c: stor7, 1, msg.sender
    return sub_d74be9bf
}

function removeSigner(address arg1) {
    require msg.sender == this.address
    require stor1[address(arg1)]
    if uint8(stor5.length) == sub_45adff8a:
        emit 0x33db158b: Array(len=28, data='cannot meet no of min signs.'), arg1
        return 0
    idx = 0
    while uint16(idx) < uint8(stor5.length):
        require uint16(idx) < stor5.length
        mem[0] = 5
        if address(stor5[uint16(idx)].field_0) != arg1:
            idx = idx + 1
            continue 
        require 1 <= uint8(stor5.length)
        if uint16(idx) < uint8(uint8(stor5.length) - 1):
            s = idx + 1
            while uint16(s) < uint8(stor5.length):
                require uint16(s) < stor5.length
                require uint16(s - 1) < stor5.length
                mem[0] = 5
                address(stor5[uint16(s - 1)].field_0) = address(stor5[uint16(s)].field_0)
                s = s + 1
                continue 
        stor5.length--
        if stor5.length > stor5.length - 1:
            idx = sha3(5) + stor5.length - 1
            while sha3(5) + stor5.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        stor1[address(arg1)] = 0
        emit SignerRemoved(arg1);
        return 1
    require 1 <= uint8(stor5.length)
    if uint16(idx) < uint8(uint8(stor5.length) - 1):
        s = idx + 1
        while uint16(s) < uint8(stor5.length):
            require uint16(s) < stor5.length
            require uint16(s - 1) < stor5.length
            mem[0] = 5
            address(stor5[uint16(s - 1)].field_0) = address(stor5[uint16(s)].field_0)
            s = s + 1
            continue 
    stor5.length--
    if stor5.length > stor5.length - 1:
        idx = stor5.length - 1
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor1[address(arg1)] = 0
    emit SignerRemoved(arg1);
    return 1
}

function sub_be5ff169(?) {
    require arg1 < sub_d74be9bf
    require stor1[address(msg.sender)]
    require uint8(sub_f4f2a780[arg1 << 240].field_264) <= 2
    require uint8(sub_f4f2a780[arg1 << 240].field_264) == 1
    uint8(sub_f4f2a780[arg1 << 240].field_264) = 2
    require stor1[address(msg.sender)]
    require uint8(sub_f4f2a780[arg1 << 240].field_256) <= 5
    if not uint8(sub_f4f2a780[arg1 << 240].field_256):
        require ext_code.size(sub_6bac84abAddress)
        call sub_6bac84abAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(sub_f4f2a780[arg1 << 240].field_256), sub_f4f2a780[arg1 << 240].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        require uint8(sub_f4f2a780[arg1 << 240].field_256) <= 5
        if uint8(sub_f4f2a780[arg1 << 240].field_256) == 1:
            require ext_code.size(this.address)
            call this.address.0xeb12d61e with:
                 gas gas_remaining wei
                args address(sub_f4f2a780[arg1 << 240].field_272)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require uint8(sub_f4f2a780[arg1 << 240].field_256) <= 5
            if uint8(sub_f4f2a780[arg1 << 240].field_256) == 2:
                require ext_code.size(this.address)
                call this.address.removeSigner(address arg1) with:
                     gas gas_remaining wei
                    args address(sub_f4f2a780[arg1 << 240].field_272)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                require uint8(sub_f4f2a780[arg1 << 240].field_256) <= 5
                if uint8(sub_f4f2a780[arg1 << 240].field_256) == 3:
                    require ext_code.size(sub_6bac84abAddress)
                    call sub_6bac84abAddress.setAdmin(address arg1) with:
                         gas gas_remaining wei
                        args address(sub_f4f2a780[arg1 << 240].field_272)
                else:
                    require uint8(sub_f4f2a780[arg1 << 240].field_256) <= 5
                    if uint8(sub_f4f2a780[arg1 << 240].field_256) == 5:
                        require ext_code.size(sub_6bac84abAddress)
                        call sub_6bac84abAddress.0x13af4035 with:
                             gas gas_remaining wei
                            args address(sub_f4f2a780[arg1 << 240].field_272)
                    else:
                        require uint8(sub_f4f2a780[arg1 << 240].field_256) <= 5
                        if uint8(sub_f4f2a780[arg1 << 240].field_256) != 4:
                            uint8(sub_f4f2a780[arg1 << 240].field_264) = 1
                            emit 0x8f906bbd: arg1
                            return 0
                        require ext_code.size(sub_6bac84abAddress)
                        call sub_6bac84abAddress.setVault(address arg1) with:
                             gas gas_remaining wei
                            args address(sub_f4f2a780[arg1 << 240].field_272)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    emit 0x29eae58e: arg1
    return 1
}

function sub_4a812832(?) {
    require arg1 < sub_d74be9bf
    require stor1[address(msg.sender)]
    require uint8(sub_f4f2a780[arg1 << 240].field_264) <= 2
    require not uint8(sub_f4f2a780[arg1 << 240].field_264)
    idx = 0
    s = 0
    while idx < sub_4d9879c5[arg1 << 240].field_0:
        mem[0] = sha3(arg1 << 240, 3)
        require address(sub_4d9879c5[arg1 << 240][idx].field_0) != msg.sender
        idx = idx + 1
        s = s + 1
        continue 
    sub_4d9879c5[arg1 << 240].field_0++
    address(sub_4d9879c5[arg1 << 240][sub_4d9879c5[arg1 << 240].field_0].field_0) = msg.sender
    emit 0xa4ea6a7c: arg1 << 240, uint8(sub_4d9879c5[arg1 << 240].field_0 + 1), msg.sender
    if uint8(sub_4d9879c5[arg1 << 240].field_0 + 1) >= sub_45adff8a:
        uint8(sub_f4f2a780[arg1 << 240].field_264) = 2
        require stor1[address(msg.sender)]
        require uint8(sub_f4f2a780[arg1 << 240].field_256) <= 5
        if not uint8(sub_f4f2a780[arg1 << 240].field_256):
            require ext_code.size(sub_6bac84abAddress)
            call sub_6bac84abAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(sub_f4f2a780[arg1 << 240].field_256), sub_f4f2a780[arg1 << 240].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x29eae58e: arg1
        else:
            require uint8(sub_f4f2a780[arg1 << 240].field_256) <= 5
            if uint8(sub_f4f2a780[arg1 << 240].field_256) == 1:
                require ext_code.size(this.address)
                call this.address.0xeb12d61e with:
                     gas gas_remaining wei
                    args address(sub_f4f2a780[arg1 << 240].field_272)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x29eae58e: arg1
            else:
                require uint8(sub_f4f2a780[arg1 << 240].field_256) <= 5
                if uint8(sub_f4f2a780[arg1 << 240].field_256) == 2:
                    require ext_code.size(this.address)
                    call this.address.removeSigner(address arg1) with:
                         gas gas_remaining wei
                        args address(sub_f4f2a780[arg1 << 240].field_272)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0x29eae58e: arg1
                else:
                    require uint8(sub_f4f2a780[arg1 << 240].field_256) <= 5
                    if uint8(sub_f4f2a780[arg1 << 240].field_256) == 3:
                        require ext_code.size(sub_6bac84abAddress)
                        call sub_6bac84abAddress.setAdmin(address arg1) with:
                             gas gas_remaining wei
                            args address(sub_f4f2a780[arg1 << 240].field_272)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x29eae58e: arg1
                    else:
                        require uint8(sub_f4f2a780[arg1 << 240].field_256) <= 5
                        if uint8(sub_f4f2a780[arg1 << 240].field_256) == 5:
                            require ext_code.size(sub_6bac84abAddress)
                            call sub_6bac84abAddress.0x13af4035 with:
                                 gas gas_remaining wei
                                args address(sub_f4f2a780[arg1 << 240].field_272)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x29eae58e: arg1
                        else:
                            require uint8(sub_f4f2a780[arg1 << 240].field_256) <= 5
                            if uint8(sub_f4f2a780[arg1 << 240].field_256) != 4:
                                emit 0x8f906bbd: arg1
                                uint8(sub_f4f2a780[arg1 << 240].field_264) = 1
                            else:
                                require ext_code.size(sub_6bac84abAddress)
                                call sub_6bac84abAddress.setVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(sub_f4f2a780[arg1 << 240].field_272)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0x29eae58e: arg1
    return uint8(sub_4d9879c5[arg1 << 240].field_0 + 1)
}



}
