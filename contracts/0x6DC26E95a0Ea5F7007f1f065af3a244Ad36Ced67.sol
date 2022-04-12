contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = code.data[12312 len 20]
    return code.data[75 len 12225]
}



// =====================  Runtime code  =====================


address dbAddress;
uint256 stor0;
address sub_64beff2fAddress;

function db() {
    return address(dbAddress)
}

function sub_64beff2f(?) {
    return sub_64beff2fAddress
}

function updateContract(address arg1) {
    require sub_64beff2fAddress == msg.sender
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa6f9dae1 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xf029bd23 with:
         gas gas_remaining - 710 wei
        args address(dbAddress)
    require ext_call.success
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.admin() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    selfdestruct(ext_call.return_data[12 len 20])
}

function _fallback() {
    revert
}

function sub_9959f7c5(?) {
    require sub_64beff2fAddress == msg.sender
    sub_64beff2fAddress = arg1
}

function calculateFee(uint256 arg1, uint256 arg2) {
    require arg2 + 1000
    return (10000 * arg1 / arg2 + 1000 * arg2 / 10000)
}

function sub_1953af25(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xd414d536 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_8ed8e314(?) {
    require arg2 < 7
    require arg3 < 24
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf49e050b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0] and 2^uint8(arg3 + (24 * arg2)))
}

function sub_f029bd23(?) {
    require not address(dbAddress)
    if arg1:
        address(dbAddress) = arg1
    else:
        require ext_code.size(0xb7395c47ec901f4ce872dbeb253966d7b4f620c3)
        delegate 0xb7395c47ec901f4ce872dbeb253966d7b4f620c3.0x99bbffb1 with:
             gas gas_remaining - 710 wei
            args 
        require delegate.return_code
        uint256(stor0) = delegate.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
}

function sub_343fbcd4(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xd414d536 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x343fbcd4 with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    emit 0x44c2f2a6: arg2, arg1
}

function sub_7ca126f0(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xd414d536 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xe57bb658 with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    emit 0xf9c6b3c0: arg2, arg1
}

function sub_802c7d4e(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xd414d536 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x802c7d4e with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    emit 0xe3738dd1: arg2, arg1
}

function sub_2f13fd12(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xdbd4e021 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[12 len 20] != arg2:
        return 0
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf7a3b398 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    return 1
}

function sub_e288b01f(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xd414d536 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[12 len 20] != arg2:
        return (ext_call.return_data[12 len 20] == arg2)
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf7a3b398 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return not bool(ext_call.return_data[0])
}

function sub_0cbade0e(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa01364ab with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xa8bfd465 with:
         gas gas_remaining - 710 wei
        args uint16(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xcbade0e with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_47fa91a3(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa01364ab with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xa8bfd465 with:
         gas gas_remaining - 710 wei
        args uint16(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x47fa91a3 with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_55609ea5(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa01364ab with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xa8bfd465 with:
         gas gas_remaining - 710 wei
        args uint16(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x55609ea5 with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    return ext_call.return_data[31 len 1]
}

function sub_765dfe56(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa01364ab with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xa8bfd465 with:
         gas gas_remaining - 710 wei
        args uint16(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x62b5c1c3 with:
         gas gas_remaining - 710 wei
        args 0, uint32(arg1), address(arg2), arg3, arg4
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_06fe5431(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xd414d536 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf7a3b398 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x6fe5431 with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    emit 0xe3308085: arg2, arg1
}

function sub_377abe40(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xd414d536 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf7a3b398 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x377abe40 with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    emit 0x6b4d4a26: arg2, arg1
}

function sub_f1713d2f(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xd414d536 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf7a3b398 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf1713d2f with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    emit 0xfce67faf: arg2, arg1
}

function sub_c6005e03(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xd414d536 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[12 len 20]:
        require ext_call.return_data[12 len 20] == msg.sender
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0xf7a3b398 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require not ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf286735a with:
         gas gas_remaining - 710 wei
        args 0, 0, arg2, address(arg3), arg4 << 224, arg5, arg6 << 224, arg7 << 224, arg8 << 240, 0, 0, 0, 0, 0
    require ext_call.success
    emit 0xfe536c00: arg1
    emit 0xe3738dd1: arg7, arg1
    emit 0xf9c6b3c0: arg3, arg1
    emit 0x44c2f2a6: arg5, arg1
    emit 0xfce67faf: arg6, arg1
    emit 0xe3738dd1: arg7, arg1
    emit 0xe3308085: arg2, arg1
}

function sub_6e4b161d(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf49e050b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    s = 0
    s = 0
    idx = block.timestamp
    s = 0
    while idx < block.timestamp + arg2:
        require ext_code.size(sub_64beff2fAddress)
        call sub_64beff2fAddress.0xf2217d91 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getWeekday(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args idx
        require ext_call.success
        require ext_code.size(sub_64beff2fAddress)
        call sub_64beff2fAddress.0xf2217d91 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        mem[128] = 0
        mem[100] = idx
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getHour(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args idx
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0] or not 2^uint8(25 * ext_call.return_data[0]):
            s = ext_call.return_data[0]
            s = ext_call.return_data[0]
            idx = idx + 3600
            s = uint8(25 * ext_call.return_data[0])
            continue 
        return 1
    return 0
}

function sub_7a2ac2ce(?) payable {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xeb569346 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0x6ffddcd8 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require arg3 <= uint32(ext_call.return_data[96])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf49e050b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    s = 0
    s = 0
    idx = block.timestamp
    s = 0
    while idx < block.timestamp + arg3:
        require ext_code.size(sub_64beff2fAddress)
        call sub_64beff2fAddress.0xf2217d91 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getWeekday(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args idx
        require ext_call.success
        require ext_code.size(sub_64beff2fAddress)
        call sub_64beff2fAddress.0xf2217d91 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        mem[128] = 0
        mem[100] = idx
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getHour(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args idx
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require not ext_call.return_data[0] or not 2^uint8(25 * ext_call.return_data[0])
        s = ext_call.return_data[0]
        s = ext_call.return_data[0]
        idx = idx + 3600
        s = uint8(25 * ext_call.return_data[0])
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getWhitelist(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xa8bfd465 with:
         gas gas_remaining - 710 wei
        args uint16(ext_call.return_data[32])
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x55609ea5 with:
         gas gas_remaining - 710 wei
        args arg1, msg.sender
    require ext_call.success
    require uint8(ext_call.return_data[0])
    if 3 == uint8(ext_call.return_data[0]):
        call address(ext_call.return_data[128]) with:
           value 100000 * block.gasprice wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    if 1 == uint8(ext_call.return_data[0]):
        call address(ext_call.return_data[0]).0x62b5c1c3 with:
             gas gas_remaining - 710 wei
            args arg1, msg.sender, 0, arg3
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xdd62ed3e with:
                 gas gas_remaining - 710 wei
                args msg.sender, this.address
            require ext_call.success
            require ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x23b872dd with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0x8e5ebb8e with:
             gas gas_remaining - 710 wei
            args arg1, 0, arg3 << 224, msg.sender
        require ext_call.success
        emit 0xcb6e3b27: msg.sender, 0, arg3, arg1
    else:
        if 4 == uint8(ext_call.return_data[0]):
            call address(ext_call.return_data[0]).0x62b5c1c3 with:
                 gas gas_remaining - 710 wei
                args arg1, msg.sender, 0, arg3
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xdd62ed3e with:
                     gas gas_remaining - 710 wei
                    args msg.sender, this.address
                require ext_call.success
                require ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0x8e5ebb8e with:
                 gas gas_remaining - 710 wei
                args arg1, 0, arg3 << 224, msg.sender
            require ext_call.success
            emit 0xcb6e3b27: msg.sender, 0, arg3, arg1
        else:
            if 3 == uint8(ext_call.return_data[0]):
                call address(ext_call.return_data[0]).0x62b5c1c3 with:
                     gas gas_remaining - 710 wei
                    args arg1, msg.sender, ext_call.return_data[160] << 224, arg3
                require ext_call.success
                if ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args msg.sender, this.address
                    require ext_call.success
                    require ext_call.return_data[0] >= ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                require ext_code.size(address(dbAddress))
                call address(dbAddress).0x8e5ebb8e with:
                     gas gas_remaining - 710 wei
                    args arg1, ext_call.return_data[160] << 224, arg3 << 224, msg.sender
                require ext_call.success
                emit 0xcb6e3b27: msg.sender, ext_call.return_data[160] << 224, arg3, arg1
            else:
                if arg2 <= uint32(ext_call.return_data[160]):
                    call address(ext_call.return_data[0]).0x62b5c1c3 with:
                         gas gas_remaining - 710 wei
                        args arg1, msg.sender, arg2 << 224, arg3
                    require ext_call.success
                    if ext_call.return_data[0]:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args msg.sender, this.address
                        require ext_call.success
                        require ext_call.return_data[0] >= ext_call.return_data[0]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                    require ext_code.size(address(dbAddress))
                    call address(dbAddress).0x8e5ebb8e with:
                         gas gas_remaining - 710 wei
                        args arg1, arg2 << 224, arg3 << 224, msg.sender
                    require ext_call.success
                    emit 0xcb6e3b27: msg.sender, arg2 << 224, arg3, arg1
                else:
                    call address(ext_call.return_data[0]).0x62b5c1c3 with:
                         gas gas_remaining - 710 wei
                        args arg1, msg.sender, ext_call.return_data[160] << 224, arg3
                    require ext_call.success
                    if ext_call.return_data[0]:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args msg.sender, this.address
                        require ext_call.success
                        require ext_call.return_data[0] >= ext_call.return_data[0]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                    require ext_code.size(address(dbAddress))
                    call address(dbAddress).0x8e5ebb8e with:
                         gas gas_remaining - 710 wei
                        args arg1, ext_call.return_data[160] << 224, arg3 << 224, msg.sender
                    require ext_call.success
                    emit 0xcb6e3b27: msg.sender, ext_call.return_data[160] << 224, arg3, arg1
}

function sub_723d3605(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf7a3b398 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x3cb7a01f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if uint32(block.timestamp - ext_call.return_data[156 len 4]) > ext_call.return_data[188 len 4]:
        if ext_code.size(sub_64beff2fAddress):
            call sub_64beff2fAddress.0xa8bfd465 with:
                 gas gas_remaining - 710 wei
                args uint16(ext_call.return_data[64])
            if ext_call.success:
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).0x55609ea5 with:
                         gas gas_remaining - 710 wei
                        args arg1, address(ext_call.return_data[96])
                    if ext_call.success:
                        if uint32(ext_call.return_data[160]) >= uint32(ext_call.return_data[160]):
                            if ext_call.return_data[31 len 1] != 3:
                                if ext_code.size(address(ext_call.return_data[0])):
                                    call address(ext_call.return_data[0]).0x62b5c1c3 with:
                                         gas gas_remaining - 710 wei
                                        args 0, uint32(arg1), address(ext_call.return_data[96]), ext_call.return_data[192] << 224, uint32(ext_call.return_data[160])
                                    if ext_call.success:
                                        if ext_code.size(address(ext_call.return_data[0])):
                                            call address(ext_call.return_data[0]).0x7abaf37e with:
                                                 gas gas_remaining - 710 wei
                                                args 0, 0, 0, ext_call.return_data[192] << 224, ext_call.return_data[160] << 224, arg2
                                            if ext_call.success:
                                                if ext_code.size(sub_64beff2fAddress):
                                                    call sub_64beff2fAddress.0x6ffddcd8 with:
                                                         gas gas_remaining - 710 wei
                                                    if ext_call.success:
                                                        if ext_code.size(sub_64beff2fAddress):
                                                            call sub_64beff2fAddress.0x89997a96 with:
                                                                 gas gas_remaining - 710 wei
                                                            if ext_call.success:
                                                                if ext_code.size(address(ext_call.return_data[0])):
                                                                    call address(ext_call.return_data[0]).getFee(address rg1) with:
                                                                         gas gas_remaining - 710 wei
                                                                        args address(ext_call.return_data[0])
                                                                    if ext_call.success:
                                                                        if ext_call.return_data[28 len 4] + 1000:
                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000 <= ext_call.return_data[0]:
                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000 <= 0:
                                                                                    if ext_call.return_data[0] <= 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000:
                                                                                        emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                        if ext_code.size(address(dbAddress)):
                                                                                            call address(dbAddress).0xc5e6b2a6 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args arg1, address(ext_call.return_data[0])
                                                                                            if ext_call.success:
                                                                                    else:
                                                                                        if ext_code.size(address(ext_call.return_data[0])):
                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args address(ext_call.return_data[0]), ext_call.return_data[0] - (10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000)
                                                                                            if ext_call.success:
                                                                                                require ext_call.return_data[0]
                                                                                                emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                if ext_code.size(address(dbAddress)):
                                                                                                    call address(dbAddress).0xc5e6b2a6 with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args arg1, address(ext_call.return_data[0])
                                                                                                    if ext_call.success:
                                                                                else:
                                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args address(ext_call.return_data[32]), 10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000
                                                                                        if ext_call.success:
                                                                                            require ext_call.return_data[0]
                                                                                            if ext_call.return_data[0] <= 10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000:
                                                                                                emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                if ext_code.size(address(dbAddress)):
                                                                                                    call address(dbAddress).0xc5e6b2a6 with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args arg1, address(ext_call.return_data[0])
                                                                                                    if ext_call.success:
                                                                                            else:
                                                                                                if ext_code.size(address(ext_call.return_data[0])):
                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args address(ext_call.return_data[0]), ext_call.return_data[0] - (10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000)
                                                                                                    if ext_call.success:
                                                                                                        require ext_call.return_data[0]
                                                                                                        emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                        if ext_code.size(address(dbAddress)):
                                                                                                            call address(dbAddress).0xc5e6b2a6 with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                args arg1, address(ext_call.return_data[0])
                                                                                                            if ext_call.success:
                                                                            else:
                                                                                if ext_call.return_data[0] <= 0:
                                                                                    emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                    if ext_code.size(address(dbAddress)):
                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                        if ext_call.success:
                                                                                else:
                                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args address(ext_call.return_data[32]), ext_call.return_data[0]
                                                                                        if ext_call.success:
                                                                                            require ext_call.return_data[0]
                                                                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                                                                emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                if ext_code.size(address(dbAddress)):
                                                                                                    call address(dbAddress).0xc5e6b2a6 with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args arg1, address(ext_call.return_data[0])
                                                                                                    if ext_call.success:
                                                                                            else:
                                                                                                if ext_code.size(address(ext_call.return_data[0])):
                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args address(ext_call.return_data[0]), 0
                                                                                                    if ext_call.success:
                                                                                                        require ext_call.return_data[0]
                                                                                                        emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                        if ext_code.size(address(dbAddress)):
                                                                                                            call address(dbAddress).0xc5e6b2a6 with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                args arg1, address(ext_call.return_data[0])
                                                                                                            if ext_call.success:
                            else:
                                if msg.sender == address(ext_call.return_data[32]):
                                    if ext_code.size(address(ext_call.return_data[0])):
                                        call address(ext_call.return_data[0]).0x62b5c1c3 with:
                                             gas gas_remaining - 710 wei
                                            args 0, uint32(arg1), address(ext_call.return_data[96]), ext_call.return_data[192] << 224, uint32(ext_call.return_data[160])
                                        if ext_call.success:
                                            if ext_code.size(address(ext_call.return_data[0])):
                                                call address(ext_call.return_data[0]).0x7abaf37e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, 0, 0, ext_call.return_data[192] << 224, ext_call.return_data[160] << 224, arg2
                                                if ext_call.success:
                                                    if ext_code.size(sub_64beff2fAddress):
                                                        call sub_64beff2fAddress.0x6ffddcd8 with:
                                                             gas gas_remaining - 710 wei
                                                        if ext_call.success:
                                                            if ext_code.size(sub_64beff2fAddress):
                                                                call sub_64beff2fAddress.0x89997a96 with:
                                                                     gas gas_remaining - 710 wei
                                                                if ext_call.success:
                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                        call address(ext_call.return_data[0]).getFee(address rg1) with:
                                                                             gas gas_remaining - 710 wei
                                                                            args address(ext_call.return_data[0])
                                                                        if ext_call.success:
                                                                            if ext_call.return_data[28 len 4] + 1000:
                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000 <= ext_call.return_data[0]:
                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000 <= 0:
                                                                                        if ext_call.return_data[0] <= 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000:
                                                                                            emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                if ext_call.success:
                                                                                        else:
                                                                                            if ext_code.size(address(ext_call.return_data[0])):
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args address(ext_call.return_data[0]), ext_call.return_data[0] - (10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000)
                                                                                                if ext_call.success:
                                                                                                    require ext_call.return_data[0]
                                                                                                    emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                    if ext_code.size(address(dbAddress)):
                                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                                        if ext_call.success:
                                                                                    else:
                                                                                        if ext_code.size(address(ext_call.return_data[0])):
                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args address(ext_call.return_data[32]), 10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000
                                                                                            if ext_call.success:
                                                                                                require ext_call.return_data[0]
                                                                                                if ext_call.return_data[0] <= 10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000:
                                                                                                    emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                    if ext_code.size(address(dbAddress)):
                                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                                        if ext_call.success:
                                                                                                else:
                                                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args address(ext_call.return_data[0]), ext_call.return_data[0] - (10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000)
                                                                                                        if ext_call.success:
                                                                                                            require ext_call.return_data[0]
                                                                                                            emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                                if ext_call.success:
                                                                                else:
                                                                                    if ext_call.return_data[0] <= 0:
                                                                                        emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                        if ext_code.size(address(dbAddress)):
                                                                                            call address(dbAddress).0xc5e6b2a6 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args arg1, address(ext_call.return_data[0])
                                                                                            if ext_call.success:
                                                                                    else:
                                                                                        if ext_code.size(address(ext_call.return_data[0])):
                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args address(ext_call.return_data[32]), ext_call.return_data[0]
                                                                                            if ext_call.success:
                                                                                                require ext_call.return_data[0]
                                                                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                                                                    emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                    if ext_code.size(address(dbAddress)):
                                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                                        if ext_call.success:
                                                                                                else:
                                                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args address(ext_call.return_data[0]), 0
                                                                                                        if ext_call.success:
                                                                                                            require ext_call.return_data[0]
                                                                                                            emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                                if ext_call.success:
                                else:
                                    if ext_code.size(address(ext_call.return_data[0])):
                                        call address(ext_call.return_data[0]).0x62b5c1c3 with:
                                             gas gas_remaining - 710 wei
                                            args 0, uint32(arg1), address(ext_call.return_data[96]), ext_call.return_data[192] << 224, uint32(ext_call.return_data[160])
                                        if ext_call.success:
                                            if ext_code.size(address(ext_call.return_data[0])):
                                                call address(ext_call.return_data[0]).0x7abaf37e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, 0, 0, ext_call.return_data[192] << 224, ext_call.return_data[160] << 224, 0
                                                if ext_call.success:
                                                    if ext_code.size(sub_64beff2fAddress):
                                                        call sub_64beff2fAddress.0x6ffddcd8 with:
                                                             gas gas_remaining - 710 wei
                                                        if ext_call.success:
                                                            if ext_code.size(sub_64beff2fAddress):
                                                                call sub_64beff2fAddress.0x89997a96 with:
                                                                     gas gas_remaining - 710 wei
                                                                if ext_call.success:
                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                        call address(ext_call.return_data[0]).getFee(address rg1) with:
                                                                             gas gas_remaining - 710 wei
                                                                            args address(ext_call.return_data[0])
                                                                        if ext_call.success:
                                                                            if ext_call.return_data[28 len 4] + 1000:
                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000 <= ext_call.return_data[0]:
                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000 <= 0:
                                                                                        if ext_call.return_data[0] <= 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000:
                                                                                            emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, 0, uint8(ext_call.return_data[0]), arg1
                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                if ext_call.success:
                                                                                        else:
                                                                                            if ext_code.size(address(ext_call.return_data[0])):
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args address(ext_call.return_data[0]), ext_call.return_data[0] - (10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000)
                                                                                                if ext_call.success:
                                                                                                    require ext_call.return_data[0]
                                                                                                    emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, 0, uint8(ext_call.return_data[0]), arg1
                                                                                                    if ext_code.size(address(dbAddress)):
                                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                                        if ext_call.success:
                                                                                    else:
                                                                                        if ext_code.size(address(ext_call.return_data[0])):
                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args address(ext_call.return_data[32]), 10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000
                                                                                            if ext_call.success:
                                                                                                require ext_call.return_data[0]
                                                                                                if ext_call.return_data[0] <= 10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000:
                                                                                                    emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, 0, uint8(ext_call.return_data[0]), arg1
                                                                                                    if ext_code.size(address(dbAddress)):
                                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                                        if ext_call.success:
                                                                                                else:
                                                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args address(ext_call.return_data[0]), ext_call.return_data[0] - (10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000)
                                                                                                        if ext_call.success:
                                                                                                            require ext_call.return_data[0]
                                                                                                            emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, 0, uint8(ext_call.return_data[0]), arg1
                                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                                if ext_call.success:
                                                                                else:
                                                                                    if ext_call.return_data[0] <= 0:
                                                                                        emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, 0, uint8(ext_call.return_data[0]), arg1
                                                                                        if ext_code.size(address(dbAddress)):
                                                                                            call address(dbAddress).0xc5e6b2a6 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args arg1, address(ext_call.return_data[0])
                                                                                            if ext_call.success:
                                                                                    else:
                                                                                        if ext_code.size(address(ext_call.return_data[0])):
                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args address(ext_call.return_data[32]), ext_call.return_data[0]
                                                                                            if ext_call.success:
                                                                                                require ext_call.return_data[0]
                                                                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                                                                    emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, 0, uint8(ext_call.return_data[0]), arg1
                                                                                                    if ext_code.size(address(dbAddress)):
                                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                                        if ext_call.success:
                                                                                                else:
                                                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args address(ext_call.return_data[0]), 0
                                                                                                        if ext_call.success:
                                                                                                            require ext_call.return_data[0]
                                                                                                            emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, 0, uint8(ext_call.return_data[0]), arg1
                                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                                if ext_call.success:
                        else:
                            if ext_call.return_data[31 len 1] != 3:
                                require msg.sender == address(ext_call.return_data[96])
                            else:
                                require msg.sender == address(ext_call.return_data[32])
                                if ext_call.return_data[31 len 1] != 3:
                                    require msg.sender == address(ext_call.return_data[96])
                            if ext_code.size(address(ext_call.return_data[0])):
                                call address(ext_call.return_data[0]).0x62b5c1c3 with:
                                     gas gas_remaining - 710 wei
                                    args 0, uint32(arg1), address(ext_call.return_data[96]), ext_call.return_data[192] << 224, uint32(ext_call.return_data[160])
                                if ext_call.success:
                                    if ext_code.size(address(ext_call.return_data[0])):
                                        call address(ext_call.return_data[0]).0x7abaf37e with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, 0, ext_call.return_data[192] << 224, ext_call.return_data[160] << 224, arg2
                                        if ext_call.success:
                                            if ext_code.size(sub_64beff2fAddress):
                                                call sub_64beff2fAddress.0x6ffddcd8 with:
                                                     gas gas_remaining - 710 wei
                                                if ext_call.success:
                                                    if ext_code.size(sub_64beff2fAddress):
                                                        call sub_64beff2fAddress.0x89997a96 with:
                                                             gas gas_remaining - 710 wei
                                                        if ext_call.success:
                                                            if ext_code.size(address(ext_call.return_data[0])):
                                                                call address(ext_call.return_data[0]).getFee(address rg1) with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(ext_call.return_data[0])
                                                                if ext_call.success:
                                                                    if ext_call.return_data[28 len 4] + 1000:
                                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000 <= ext_call.return_data[0]:
                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000 <= 0:
                                                                                if ext_call.return_data[0] <= 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000:
                                                                                    emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                    if ext_code.size(address(dbAddress)):
                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                        if ext_call.success:
                                                                                else:
                                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args address(ext_call.return_data[0]), ext_call.return_data[0] - (10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000)
                                                                                        if ext_call.success:
                                                                                            require ext_call.return_data[0]
                                                                                            emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                if ext_call.success:
                                                                            else:
                                                                                if ext_code.size(address(ext_call.return_data[0])):
                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args address(ext_call.return_data[32]), 10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000
                                                                                    if ext_call.success:
                                                                                        require ext_call.return_data[0]
                                                                                        if ext_call.return_data[0] <= 10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000:
                                                                                            emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                if ext_call.success:
                                                                                        else:
                                                                                            if ext_code.size(address(ext_call.return_data[0])):
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args address(ext_call.return_data[0]), ext_call.return_data[0] - (10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000)
                                                                                                if ext_call.success:
                                                                                                    require ext_call.return_data[0]
                                                                                                    emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                    if ext_code.size(address(dbAddress)):
                                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                                        if ext_call.success:
                                                                        else:
                                                                            if ext_call.return_data[0] <= 0:
                                                                                emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                if ext_code.size(address(dbAddress)):
                                                                                    call address(dbAddress).0xc5e6b2a6 with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args arg1, address(ext_call.return_data[0])
                                                                                    if ext_call.success:
                                                                            else:
                                                                                if ext_code.size(address(ext_call.return_data[0])):
                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args address(ext_call.return_data[32]), ext_call.return_data[0]
                                                                                    if ext_call.success:
                                                                                        require ext_call.return_data[0]
                                                                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                                                            emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                if ext_call.success:
                                                                                        else:
                                                                                            if ext_code.size(address(ext_call.return_data[0])):
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args address(ext_call.return_data[0]), 0
                                                                                                if ext_call.success:
                                                                                                    require ext_call.return_data[0]
                                                                                                    emit 0x8faa71ea: ext_call.return_data[0], ext_call.return_data[160] << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                    if ext_code.size(address(dbAddress)):
                                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                                        if ext_call.success:
    else:
        if ext_code.size(sub_64beff2fAddress):
            call sub_64beff2fAddress.0xa8bfd465 with:
                 gas gas_remaining - 710 wei
                args uint16(ext_call.return_data[64])
            if ext_call.success:
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).0x55609ea5 with:
                         gas gas_remaining - 710 wei
                        args arg1, address(ext_call.return_data[96])
                    if ext_call.success:
                        if uint32(block.timestamp - uint32(ext_call.return_data[128])) >= uint32(ext_call.return_data[160]):
                            if ext_call.return_data[31 len 1] != 3:
                                if ext_code.size(address(ext_call.return_data[0])):
                                    call address(ext_call.return_data[0]).0x62b5c1c3 with:
                                         gas gas_remaining - 710 wei
                                        args 0, uint32(arg1), address(ext_call.return_data[96]), ext_call.return_data[192] << 224, uint32(ext_call.return_data[160])
                                    if ext_call.success:
                                        if ext_code.size(address(ext_call.return_data[0])):
                                            call address(ext_call.return_data[0]).0x7abaf37e with:
                                                 gas gas_remaining - 710 wei
                                                args 0, 0, 0, ext_call.return_data[192] << 224, block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2
                                            if ext_call.success:
                                                if ext_code.size(sub_64beff2fAddress):
                                                    call sub_64beff2fAddress.0x6ffddcd8 with:
                                                         gas gas_remaining - 710 wei
                                                    if ext_call.success:
                                                        if ext_code.size(sub_64beff2fAddress):
                                                            call sub_64beff2fAddress.0x89997a96 with:
                                                                 gas gas_remaining - 710 wei
                                                            if ext_call.success:
                                                                if ext_code.size(address(ext_call.return_data[0])):
                                                                    call address(ext_call.return_data[0]).getFee(address rg1) with:
                                                                         gas gas_remaining - 710 wei
                                                                        args address(ext_call.return_data[0])
                                                                    if ext_call.success:
                                                                        if ext_call.return_data[28 len 4] + 1000:
                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000 <= ext_call.return_data[0]:
                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000 <= 0:
                                                                                    if ext_call.return_data[0] <= 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000:
                                                                                        emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                        if ext_code.size(address(dbAddress)):
                                                                                            call address(dbAddress).0xc5e6b2a6 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args arg1, address(ext_call.return_data[0])
                                                                                            if ext_call.success:
                                                                                    else:
                                                                                        if ext_code.size(address(ext_call.return_data[0])):
                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args address(ext_call.return_data[0]), ext_call.return_data[0] - (10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000)
                                                                                            if ext_call.success:
                                                                                                require ext_call.return_data[0]
                                                                                                emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                if ext_code.size(address(dbAddress)):
                                                                                                    call address(dbAddress).0xc5e6b2a6 with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args arg1, address(ext_call.return_data[0])
                                                                                                    if ext_call.success:
                                                                                else:
                                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args address(ext_call.return_data[32]), 10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000
                                                                                        if ext_call.success:
                                                                                            require ext_call.return_data[0]
                                                                                            if ext_call.return_data[0] <= 10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000:
                                                                                                emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                if ext_code.size(address(dbAddress)):
                                                                                                    call address(dbAddress).0xc5e6b2a6 with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args arg1, address(ext_call.return_data[0])
                                                                                                    if ext_call.success:
                                                                                            else:
                                                                                                if ext_code.size(address(ext_call.return_data[0])):
                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args address(ext_call.return_data[0]), ext_call.return_data[0] - (10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000)
                                                                                                    if ext_call.success:
                                                                                                        require ext_call.return_data[0]
                                                                                                        emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                        if ext_code.size(address(dbAddress)):
                                                                                                            call address(dbAddress).0xc5e6b2a6 with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                args arg1, address(ext_call.return_data[0])
                                                                                                            if ext_call.success:
                                                                            else:
                                                                                if ext_call.return_data[0] <= 0:
                                                                                    emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                    if ext_code.size(address(dbAddress)):
                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                        if ext_call.success:
                                                                                else:
                                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args address(ext_call.return_data[32]), ext_call.return_data[0]
                                                                                        if ext_call.success:
                                                                                            require ext_call.return_data[0]
                                                                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                                                                emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                if ext_code.size(address(dbAddress)):
                                                                                                    call address(dbAddress).0xc5e6b2a6 with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args arg1, address(ext_call.return_data[0])
                                                                                                    if ext_call.success:
                                                                                            else:
                                                                                                if ext_code.size(address(ext_call.return_data[0])):
                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args address(ext_call.return_data[0]), 0
                                                                                                    if ext_call.success:
                                                                                                        require ext_call.return_data[0]
                                                                                                        emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                        if ext_code.size(address(dbAddress)):
                                                                                                            call address(dbAddress).0xc5e6b2a6 with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                args arg1, address(ext_call.return_data[0])
                                                                                                            if ext_call.success:
                            else:
                                if msg.sender == address(ext_call.return_data[32]):
                                    if ext_code.size(address(ext_call.return_data[0])):
                                        call address(ext_call.return_data[0]).0x62b5c1c3 with:
                                             gas gas_remaining - 710 wei
                                            args 0, uint32(arg1), address(ext_call.return_data[96]), ext_call.return_data[192] << 224, uint32(ext_call.return_data[160])
                                        if ext_call.success:
                                            if ext_code.size(address(ext_call.return_data[0])):
                                                call address(ext_call.return_data[0]).0x7abaf37e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, 0, 0, ext_call.return_data[192] << 224, block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2
                                                if ext_call.success:
                                                    if ext_code.size(sub_64beff2fAddress):
                                                        call sub_64beff2fAddress.0x6ffddcd8 with:
                                                             gas gas_remaining - 710 wei
                                                        if ext_call.success:
                                                            if ext_code.size(sub_64beff2fAddress):
                                                                call sub_64beff2fAddress.0x89997a96 with:
                                                                     gas gas_remaining - 710 wei
                                                                if ext_call.success:
                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                        call address(ext_call.return_data[0]).getFee(address rg1) with:
                                                                             gas gas_remaining - 710 wei
                                                                            args address(ext_call.return_data[0])
                                                                        if ext_call.success:
                                                                            if ext_call.return_data[28 len 4] + 1000:
                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000 <= ext_call.return_data[0]:
                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000 <= 0:
                                                                                        if ext_call.return_data[0] <= 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000:
                                                                                            emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                if ext_call.success:
                                                                                        else:
                                                                                            if ext_code.size(address(ext_call.return_data[0])):
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args address(ext_call.return_data[0]), ext_call.return_data[0] - (10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000)
                                                                                                if ext_call.success:
                                                                                                    require ext_call.return_data[0]
                                                                                                    emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                    if ext_code.size(address(dbAddress)):
                                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                                        if ext_call.success:
                                                                                    else:
                                                                                        if ext_code.size(address(ext_call.return_data[0])):
                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args address(ext_call.return_data[32]), 10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000
                                                                                            if ext_call.success:
                                                                                                require ext_call.return_data[0]
                                                                                                if ext_call.return_data[0] <= 10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000:
                                                                                                    emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                    if ext_code.size(address(dbAddress)):
                                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                                        if ext_call.success:
                                                                                                else:
                                                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args address(ext_call.return_data[0]), ext_call.return_data[0] - (10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000)
                                                                                                        if ext_call.success:
                                                                                                            require ext_call.return_data[0]
                                                                                                            emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                                if ext_call.success:
                                                                                else:
                                                                                    if ext_call.return_data[0] <= 0:
                                                                                        emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                        if ext_code.size(address(dbAddress)):
                                                                                            call address(dbAddress).0xc5e6b2a6 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args arg1, address(ext_call.return_data[0])
                                                                                            if ext_call.success:
                                                                                    else:
                                                                                        if ext_code.size(address(ext_call.return_data[0])):
                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args address(ext_call.return_data[32]), ext_call.return_data[0]
                                                                                            if ext_call.success:
                                                                                                require ext_call.return_data[0]
                                                                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                                                                    emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                    if ext_code.size(address(dbAddress)):
                                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                                        if ext_call.success:
                                                                                                else:
                                                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args address(ext_call.return_data[0]), 0
                                                                                                        if ext_call.success:
                                                                                                            require ext_call.return_data[0]
                                                                                                            emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                                if ext_call.success:
                                else:
                                    if ext_code.size(address(ext_call.return_data[0])):
                                        call address(ext_call.return_data[0]).0x62b5c1c3 with:
                                             gas gas_remaining - 710 wei
                                            args 0, uint32(arg1), address(ext_call.return_data[96]), ext_call.return_data[192] << 224, uint32(ext_call.return_data[160])
                                        if ext_call.success:
                                            if ext_code.size(address(ext_call.return_data[0])):
                                                call address(ext_call.return_data[0]).0x7abaf37e with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, 0, 0, ext_call.return_data[192] << 224, block.timestamp - uint32(ext_call.return_data[128]) << 224, 0
                                                if ext_call.success:
                                                    if ext_code.size(sub_64beff2fAddress):
                                                        call sub_64beff2fAddress.0x6ffddcd8 with:
                                                             gas gas_remaining - 710 wei
                                                        if ext_call.success:
                                                            if ext_code.size(sub_64beff2fAddress):
                                                                call sub_64beff2fAddress.0x89997a96 with:
                                                                     gas gas_remaining - 710 wei
                                                                if ext_call.success:
                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                        call address(ext_call.return_data[0]).getFee(address rg1) with:
                                                                             gas gas_remaining - 710 wei
                                                                            args address(ext_call.return_data[0])
                                                                        if ext_call.success:
                                                                            if ext_call.return_data[28 len 4] + 1000:
                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000 <= ext_call.return_data[0]:
                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000 <= 0:
                                                                                        if ext_call.return_data[0] <= 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000:
                                                                                            emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, 0, uint8(ext_call.return_data[0]), arg1
                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                if ext_call.success:
                                                                                        else:
                                                                                            if ext_code.size(address(ext_call.return_data[0])):
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args address(ext_call.return_data[0]), ext_call.return_data[0] - (10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000)
                                                                                                if ext_call.success:
                                                                                                    require ext_call.return_data[0]
                                                                                                    emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, 0, uint8(ext_call.return_data[0]), arg1
                                                                                                    if ext_code.size(address(dbAddress)):
                                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                                        if ext_call.success:
                                                                                    else:
                                                                                        if ext_code.size(address(ext_call.return_data[0])):
                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args address(ext_call.return_data[32]), 10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000
                                                                                            if ext_call.success:
                                                                                                require ext_call.return_data[0]
                                                                                                if ext_call.return_data[0] <= 10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000:
                                                                                                    emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, 0, uint8(ext_call.return_data[0]), arg1
                                                                                                    if ext_code.size(address(dbAddress)):
                                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                                        if ext_call.success:
                                                                                                else:
                                                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args address(ext_call.return_data[0]), ext_call.return_data[0] - (10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000)
                                                                                                        if ext_call.success:
                                                                                                            require ext_call.return_data[0]
                                                                                                            emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, 0, uint8(ext_call.return_data[0]), arg1
                                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                                if ext_call.success:
                                                                                else:
                                                                                    if ext_call.return_data[0] <= 0:
                                                                                        emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, 0, uint8(ext_call.return_data[0]), arg1
                                                                                        if ext_code.size(address(dbAddress)):
                                                                                            call address(dbAddress).0xc5e6b2a6 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args arg1, address(ext_call.return_data[0])
                                                                                            if ext_call.success:
                                                                                    else:
                                                                                        if ext_code.size(address(ext_call.return_data[0])):
                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args address(ext_call.return_data[32]), ext_call.return_data[0]
                                                                                            if ext_call.success:
                                                                                                require ext_call.return_data[0]
                                                                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                                                                    emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, 0, uint8(ext_call.return_data[0]), arg1
                                                                                                    if ext_code.size(address(dbAddress)):
                                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                                        if ext_call.success:
                                                                                                else:
                                                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args address(ext_call.return_data[0]), 0
                                                                                                        if ext_call.success:
                                                                                                            require ext_call.return_data[0]
                                                                                                            emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, 0, uint8(ext_call.return_data[0]), arg1
                                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                                if ext_call.success:
                        else:
                            if ext_call.return_data[31 len 1] != 3:
                                require msg.sender == address(ext_call.return_data[96])
                            else:
                                require msg.sender == address(ext_call.return_data[32])
                                if ext_call.return_data[31 len 1] != 3:
                                    require msg.sender == address(ext_call.return_data[96])
                            if ext_code.size(address(ext_call.return_data[0])):
                                call address(ext_call.return_data[0]).0x62b5c1c3 with:
                                     gas gas_remaining - 710 wei
                                    args 0, uint32(arg1), address(ext_call.return_data[96]), ext_call.return_data[192] << 224, uint32(ext_call.return_data[160])
                                if ext_call.success:
                                    if ext_code.size(address(ext_call.return_data[0])):
                                        call address(ext_call.return_data[0]).0x7abaf37e with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, 0, ext_call.return_data[192] << 224, block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2
                                        if ext_call.success:
                                            if ext_code.size(sub_64beff2fAddress):
                                                call sub_64beff2fAddress.0x6ffddcd8 with:
                                                     gas gas_remaining - 710 wei
                                                if ext_call.success:
                                                    if ext_code.size(sub_64beff2fAddress):
                                                        call sub_64beff2fAddress.0x89997a96 with:
                                                             gas gas_remaining - 710 wei
                                                        if ext_call.success:
                                                            if ext_code.size(address(ext_call.return_data[0])):
                                                                call address(ext_call.return_data[0]).getFee(address rg1) with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(ext_call.return_data[0])
                                                                if ext_call.success:
                                                                    if ext_call.return_data[28 len 4] + 1000:
                                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000 <= ext_call.return_data[0]:
                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000 <= 0:
                                                                                if ext_call.return_data[0] <= 10000 * ext_call.return_data[0] / ext_call.return_data[28 len 4] + 1000 * ext_call.return_data[28 len 4] / 10000:
                                                                                    emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                    if ext_code.size(address(dbAddress)):
                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                        if ext_call.success:
                                                                                else:
                                                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args address(ext_call.return_data[0]), ext_call.return_data[0] - (10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000)
                                                                                        if ext_call.success:
                                                                                            require ext_call.return_data[0]
                                                                                            emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                if ext_call.success:
                                                                            else:
                                                                                if ext_code.size(address(ext_call.return_data[0])):
                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args address(ext_call.return_data[32]), 10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000
                                                                                    if ext_call.success:
                                                                                        require ext_call.return_data[0]
                                                                                        if ext_call.return_data[0] <= 10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000:
                                                                                            emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                if ext_call.success:
                                                                                        else:
                                                                                            if ext_code.size(address(ext_call.return_data[0])):
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args address(ext_call.return_data[0]), ext_call.return_data[0] - (10000 * ext_call.return_data[0] / uint32(ext_call.return_data[0]) + 1000 * uint32(ext_call.return_data[0]) / 10000)
                                                                                                if ext_call.success:
                                                                                                    require ext_call.return_data[0]
                                                                                                    emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                    if ext_code.size(address(dbAddress)):
                                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                                        if ext_call.success:
                                                                        else:
                                                                            if ext_call.return_data[0] <= 0:
                                                                                emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                if ext_code.size(address(dbAddress)):
                                                                                    call address(dbAddress).0xc5e6b2a6 with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args arg1, address(ext_call.return_data[0])
                                                                                    if ext_call.success:
                                                                            else:
                                                                                if ext_code.size(address(ext_call.return_data[0])):
                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args address(ext_call.return_data[32]), ext_call.return_data[0]
                                                                                    if ext_call.success:
                                                                                        require ext_call.return_data[0]
                                                                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                                                            emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                            if ext_code.size(address(dbAddress)):
                                                                                                call address(dbAddress).0xc5e6b2a6 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args arg1, address(ext_call.return_data[0])
                                                                                                if ext_call.success:
                                                                                        else:
                                                                                            if ext_code.size(address(ext_call.return_data[0])):
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args address(ext_call.return_data[0]), 0
                                                                                                if ext_call.success:
                                                                                                    require ext_call.return_data[0]
                                                                                                    emit 0x8faa71ea: ext_call.return_data[0], block.timestamp - uint32(ext_call.return_data[128]) << 224, arg2 << 224, uint8(ext_call.return_data[0]), arg1
                                                                                                    if ext_code.size(address(dbAddress)):
                                                                                                        call address(dbAddress).0xc5e6b2a6 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args arg1, address(ext_call.return_data[0])
                                                                                                        if ext_call.success:
    revert
}



}
