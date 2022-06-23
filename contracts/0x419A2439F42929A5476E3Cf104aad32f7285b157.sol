contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint8 stor1;
mapping of struct sub_f4f2a780;
array of struct stor3;
address stor4;
array of struct stor5;
array of uint256 description;
uint8 sub_45adff8a; offset 160
uint16 stor7;
uint16 txCount; offset 168
address sub_6bac84abAddress;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function getTxCount() {
    return txCount
}

function sub_45adff8a(?) {
    return sub_45adff8a
}

function sub_6bac84ab(?) {
    return sub_6bac84abAddress
}

function description() {
    return description[0 len description.length]
}

function sub_f4f2a780(?) {
    require arg1 < txCount
    require stor1[msg.sender]
    mem[448] = sub_f4f2a780[arg1 << 240].field_0
    idx = 448
    s = 0
    while sub_f4f2a780[arg1 << 240].length + 448 > idx + 32:
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
    require this.address == msg.sender
    require not stor1[address(arg1)]
    if 50 <= stor5.length:
        emit 0xdc456bdc: Array(len=44, data='Cannot add a signer because of t', 'he max limit'), arg1
    else:
        stor5.length++
        stor36B6[stor5.length] = arg1
        stor1[address(arg1)] = 1
        emit SignerAdded(arg1);
}

function sub_19ca5661(?) {
    require stor1[msg.sender]
    require txCount < stor0
    txCount = uint16(txCount + 1)
    sub_f4f2a780[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_f4f2a780[stor7].field_512 = 0
    uint8(sub_f4f2a780[stor7].field_256) = 4
    uint8(sub_f4f2a780[stor7].field_264) = 0
    address(sub_f4f2a780[stor7].field_272) = arg1
    stor3[stor7].field_0++
    stor3[stor7][stor3[stor7].field_0].field_0 = msg.sender or Mask(96, 160, stor3[stor7][stor3[stor7].field_0].field_0)
    emit 0xedd193ea: stor7, Array(len=arg2.length, data=arg2[all]), msg.sender, arg1
    emit 0xa4ea6a7c: stor7, 1, msg.sender
    return txCount
}

function sub_83082374(?) {
    require stor1[msg.sender]
    require txCount < stor0
    txCount = uint16(txCount + 1)
    sub_f4f2a780[stor7][].field_0 = Array(len=arg3.length, data=arg3[all])
    sub_f4f2a780[stor7].field_512 = arg2
    uint8(sub_f4f2a780[stor7].field_256) = 0
    uint8(sub_f4f2a780[stor7].field_264) = 0
    address(sub_f4f2a780[stor7].field_272) = arg1
    stor3[stor7].field_0++
    stor3[stor7][stor3[stor7].field_0].field_0 = msg.sender or Mask(96, 160, stor3[stor7][stor3[stor7].field_0].field_0)
    emit 0x8d69c969: stor7, arg2 / 10^9, arg2 % 10^9, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1
    emit 0xa4ea6a7c: stor7, 1, msg.sender
    return txCount
}

function sub_42ae072d(?) {
    require stor1[msg.sender]
    require not stor1[address(arg1)]
    require txCount < stor0
    txCount = uint16(txCount + 1)
    sub_f4f2a780[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_f4f2a780[stor7].field_512 = 0
    uint8(sub_f4f2a780[stor7].field_256) = 1
    uint8(sub_f4f2a780[stor7].field_264) = 0
    address(sub_f4f2a780[stor7].field_272) = arg1
    stor3[stor7].field_0++
    stor3[stor7][stor3[stor7].field_0].field_0 = msg.sender or Mask(96, 160, stor3[stor7][stor3[stor7].field_0].field_0)
    emit 0x841bd24e: stor7, Array(len=arg2.length, data=arg2[all]), msg.sender, arg1
    emit 0xa4ea6a7c: stor7, 1, msg.sender
    return txCount
}

function sub_461cc065(?) {
    require stor1[msg.sender]
    require stor1[address(arg1)]
    if sub_45adff8a == uint8(stor5.length):
        emit 0x33db158b: Array(len=28, data='cannot meet no of min signs.'), arg1
        revert
    require txCount < stor0
    txCount = uint16(txCount + 1)
    sub_f4f2a780[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_f4f2a780[stor7].field_512 = 0
    uint8(sub_f4f2a780[stor7].field_256) = 2
    uint8(sub_f4f2a780[stor7].field_264) = 0
    address(sub_f4f2a780[stor7].field_272) = arg1
    stor3[stor7].field_0++
    stor3[stor7][stor3[stor7].field_0].field_0 = msg.sender or Mask(96, 160, stor3[stor7][stor3[stor7].field_0].field_0)
    emit 0x6f05fb89: stor7, Array(len=arg2.length, data=arg2[all]), msg.sender, arg1
    emit 0xa4ea6a7c: stor7, 1, msg.sender
    return txCount
}

function getSigners() {
    if not stor1[msg.sender]:
        require msg.sender == stor4
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

function sub_8bbf0d45(?) {
    mem[128 len arg2.length] = arg2[all]
    require stor1[msg.sender]
    require txCount < stor0
    txCount = uint16(txCount + 1)
    sub_f4f2a780[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_f4f2a780[stor7].field_512 = 0
    uint8(sub_f4f2a780[stor7].field_256) = 5
    uint8(sub_f4f2a780[stor7].field_264) = 0
    address(sub_f4f2a780[stor7].field_272) = arg1
    stor3[stor7].field_0++
    stor3[stor7][stor3[stor7].field_0].field_0 = msg.sender or Mask(96, 160, stor3[stor7][stor3[stor7].field_0].field_0)
    mem[ceil32(arg2.length) + 128] = txCount
    mem[ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg2.length) + 192] = arg2.length
    if 0 < arg2.length:
        mem[ceil32(arg2.length) + 224] = mem[128]
        mem[ceil32(arg2.length) + 256 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit 0x44f87542: stor7, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 224 len arg2.length]), msg.sender, arg1
    emit 0xa4ea6a7c: stor7, 1, msg.sender
    return txCount
}

function sub_ad6282fd(?) {
    mem[128 len arg2.length] = arg2[all]
    require stor1[msg.sender]
    require txCount < stor0
    txCount = uint16(txCount + 1)
    sub_f4f2a780[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_f4f2a780[stor7].field_512 = 0
    uint8(sub_f4f2a780[stor7].field_256) = 3
    uint8(sub_f4f2a780[stor7].field_264) = 0
    address(sub_f4f2a780[stor7].field_272) = arg1
    stor3[stor7].field_0++
    stor3[stor7][stor3[stor7].field_0].field_0 = msg.sender or Mask(96, 160, stor3[stor7][stor3[stor7].field_0].field_0)
    mem[ceil32(arg2.length) + 128] = txCount
    mem[ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg2.length) + 192] = arg2.length
    if 0 < arg2.length:
        mem[ceil32(arg2.length) + 224] = mem[128]
        mem[ceil32(arg2.length) + 256 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit 0xfff169e8: stor7, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 224 len arg2.length]), msg.sender, arg1
    emit 0xa4ea6a7c: stor7, 1, msg.sender
    return txCount
}

function sub_939782d5(?) {
    require arg1 < txCount
    require stor1[msg.sender]
    if not stor3[arg1 << 240].field_0:
        mem[(32 * stor3[arg1 << 240].field_0) + 128] = 32
        mem[(32 * stor3[arg1 << 240].field_0) + 160] = stor3[arg1 << 240].field_0
        mem[(32 * stor3[arg1 << 240].field_0) + 192 len floor32(stor3[arg1 << 240].field_0)] = mem[128 len floor32(stor3[arg1 << 240].field_0)]
        return memory
          from (32 * stor3[arg1 << 240].field_0) + 128
           len (96 * stor3[arg1 << 240].field_0) + 64
    mem[128] = address(stor3[arg1 << 240].field_0)
    idx = 128
    s = 0
    while (32 * stor3[arg1 << 240].field_0) + 96 > idx:
        mem[idx + 32] = address(stor3[arg1 << 240][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3[arg1 << 240].field_0) + 192 len floor32(stor3[arg1 << 240].field_0)] = mem[128 len floor32(stor3[arg1 << 240].field_0)]
    return Array(len=stor3[arg1 << 240].field_0, data=mem[128 len floor32(stor3[arg1 << 240].field_0)], mem[(32 * stor3[arg1 << 240].field_0) + floor32(stor3[arg1 << 240].field_0) + 192 len (32 * stor3[arg1 << 240].field_0) - floor32(stor3[arg1 << 240].field_0)]), 
}

function sub_4fe5bf41(?) {
    require stor1[msg.sender]
    if not arg2:
        require arg3 >= 0
        require stor1[msg.sender]
        require txCount < stor0
        txCount = uint16(txCount + 1)
        sub_f4f2a780[stor7][].field_0 = Array(len=arg4.length, data=arg4[all])
        sub_f4f2a780[stor7].field_512 = arg3
        uint8(sub_f4f2a780[stor7].field_256) = 0
        uint8(sub_f4f2a780[stor7].field_264) = 0
        address(sub_f4f2a780[stor7].field_272) = arg1
        stor3[stor7].field_0++
        stor3[stor7][stor3[stor7].field_0].field_0 = msg.sender or Mask(96, 160, stor3[stor7][stor3[stor7].field_0].field_0)
        emit 0x8d69c969: stor7, arg3 / 10^9, arg3 % 10^9, Array(len=arg4.length, data=arg4[all]), msg.sender, arg1
    else:
        require 10^9 * arg2 / arg2 == 10^9
        require arg3 + (10^9 * arg2) >= 10^9 * arg2
        require stor1[msg.sender]
        require txCount < stor0
        txCount = uint16(txCount + 1)
        sub_f4f2a780[stor7][].field_0 = Array(len=arg4.length, data=arg4[all])
        sub_f4f2a780[stor7].field_512 = arg3 + (10^9 * arg2)
        uint8(sub_f4f2a780[stor7].field_256) = 0
        uint8(sub_f4f2a780[stor7].field_264) = 0
        address(sub_f4f2a780[stor7].field_272) = arg1
        stor3[stor7].field_0++
        stor3[stor7][stor3[stor7].field_0].field_0 = msg.sender or Mask(96, 160, stor3[stor7][stor3[stor7].field_0].field_0)
        emit 0x8d69c969: stor7, arg3 + (10^9 * arg2) / 10^9, arg3 + (10^9 * arg2) % 10^9, Array(len=arg4.length, data=arg4[all]), msg.sender, arg1
    emit 0xa4ea6a7c: stor7, 1, msg.sender
    return txCount
}

function removeSigner(address arg1) {
    require this.address == msg.sender
    require stor1[address(arg1)]
    if sub_45adff8a == uint8(stor5.length):
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
            idx = stor5.length + sha3(5) - 1
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
    require arg1 < txCount
    require stor1[msg.sender]
    require uint8(sub_f4f2a780[arg1 << 240].field_264) <= 2
    require uint8(sub_f4f2a780[arg1 << 240].field_264) == 1
    uint8(sub_f4f2a780[arg1 << 240].field_264) = 2
    require stor1[msg.sender]
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
                        call sub_6bac84abAddress.setOwner(address arg1) with:
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
    require arg1 < txCount
    require stor1[msg.sender]
    require uint8(sub_f4f2a780[arg1 << 240].field_264) <= 2
    require not uint8(sub_f4f2a780[arg1 << 240].field_264)
    idx = 0
    s = 0
    while idx < stor3[arg1 << 240].field_0:
        mem[0] = sha3(arg1 << 240, 3)
        require address(stor3[arg1 << 240][idx].field_0) != msg.sender
        idx = idx + 1
        s = s + 1
        continue 
    stor3[arg1 << 240].field_0++
    stor3[arg1 << 240][stor3[arg1 << 240].field_0].field_0 = msg.sender or Mask(96, 160, stor3[arg1 << 240][stor3[arg1 << 240].field_0].field_0)
    emit 0xa4ea6a7c: arg1 << 240, uint8(stor3[arg1 << 240].field_0 + 1), msg.sender
    if uint8(stor3[arg1 << 240].field_0 + 1) >= sub_45adff8a:
        uint8(sub_f4f2a780[arg1 << 240].field_264) = 2
        require stor1[msg.sender]
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
                            call sub_6bac84abAddress.setOwner(address arg1) with:
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
    return uint8(stor3[arg1 << 240].field_0 + 1)
}



}
