contract main {




// =====================  Runtime code  =====================


address configAddress;
address DBAddress;
mapping of struct stor2;
uint8 stor3;
uint8 stor3; offset 168
uint128 stor3; offset 168
address sub_21c9a7dfAddress; offset 8
uint256 stor3;

function sub_21c9a7df(?) {
    return sub_21c9a7dfAddress
}

function DB() {
    return DBAddress
}

function locked() {
    return bool(uint8(stor3.field_168))
}

function sub_d9d74ecb(?) {
    return bool(uint8(stor3.field_0))
}

function Config() {
    return configAddress
}

function _fallback() payable {
  stop
}

function sub_aa7cff9e(?) {
    require ext_code.size(configAddress)
    call configAddress.0x5f9fa9d0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    sub_21c9a7dfAddress = arg1
}

function setConfig(address arg1, address arg2) {
    require ext_code.size(configAddress)
    call configAddress.0x5f9fa9d0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    configAddress = arg1
    DBAddress = arg2
}

function sub_5ac83790(?) {
    require ext_code.size(configAddress)
    call configAddress.0x5f9fa9d0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    Mask(88, 0, stor3.field_168) = Mask(88, 0, not uint8(stor3.field_168))
}

function sub_b6bd83ef(?) {
    require ext_code.size(configAddress)
    call configAddress.0x5f9fa9d0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    uint256(stor3.field_0) = not uint8(stor3.field_0) or Mask(248, 8, uint256(stor3.field_0))
}

function withdrawBounty(uint256 arg1) {
    require ext_code.size(configAddress)
    call configAddress.0x5f9fa9d0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require not uint8(stor3.field_168)
    require ext_code.size(DBAddress)
    call DBAddress.0x1a957e5d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[96]
    require block.number >= ext_call.return_data[32] + ext_call.return_data[64]
    require ext_call.return_data[32]
    require ext_call.return_data[64]
    if stor2[arg1].field_1024:
        call msg.sender with:
           value stor2[arg1].field_1024 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit 0xc223fb16: stor2[arg1].field_1024, arg1, ext_call.return_data[0]
}

function withdrawAllFund(uint256 arg1) {
    require ext_code.size(configAddress)
    call configAddress.0x5f9fa9d0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(DBAddress)
    call DBAddress.0x1a957e5d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not uint8(stor3.field_168):
        Mask(88, 0, stor3.field_168) = Mask(88, 0, not uint8(stor3.field_168))
    require ext_call.return_data[96]
    require block.number >= ext_call.return_data[32] + ext_call.return_data[64]
    require ext_call.return_data[32]
    require ext_call.return_data[64]
    call sub_21c9a7dfAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    Mask(88, 0, stor3.field_168) = Mask(88, 0, not uint8(stor3.field_168))
}

function sub_867100b1(?) payable {
    require ext_code.size(configAddress)
    call configAddress.0x3beedf6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    if msg.value <= 0:
        emit 0x7d3e7b38: 1, arg1
    else:
        if not arg2:
            emit 0x7d3e7b38: 2, arg1
        else:
            if arg2 == sha3(0):
                emit 0x7d3e7b38: 2, arg1
            else:
                if stor2[arg1].field_0:
                    emit 0x7d3e7b38: 3, arg1
                else:
                    require ext_code.size(DBAddress)
                    call DBAddress.0xd036643c with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor2[arg1].field_0 = arg2
                    stor2[arg1].field_1024 = msg.value
                    emit 0x462acda3: arg2, msg.value, arg1, 0
}

function sub_edae4439(?) {
    require ext_code.size(configAddress)
    call configAddress.0x3beedf6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(DBAddress)
    call DBAddress.0x3ac095d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require stor2[arg1].field_0 == sha3(arg2)
    require block.number >= ext_call.return_data[32] + ext_call.return_data[64]
    require block.number <= ext_call.return_data[32] + ext_call.return_data[96]
    require ext_call.return_data[32]
    require ext_call.return_data[64]
    require ext_call.return_data[96]
    stor2[arg1].field_512 = arg2
    require ext_code.size(DBAddress)
    call DBAddress.0xc3ae1a95 with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xafdad71b: arg2, block.number, arg1, ext_call.return_data[0]
}

function stop() {
    require ext_code.size(configAddress)
    call configAddress.0x3c8410a2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(DBAddress)
    call DBAddress.0xe013ca26 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require block.number >= ext_call.return_data[96] + ext_call.return_data[128]
    require ext_call.return_data[96]
    require ext_call.return_data[128]
    require not ext_call.return_data[64]
    require not ext_call.return_data[160]
    require ext_code.size(DBAddress)
    call DBAddress.0x526367d6 with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(DBAddress)
    call DBAddress.0x82da40f with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[32], 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4b25e93a(?) {
    require ext_code.size(configAddress)
    call configAddress.0x75bf9f6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(DBAddress)
    call DBAddress.0x3ac095d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require stor2[arg1].field_256 == sha3(arg2)
    require block.number >= ext_call.return_data[32] + ext_call.return_data[64]
    require block.number <= ext_call.return_data[32] + ext_call.return_data[96]
    require ext_call.return_data[32]
    require ext_call.return_data[64]
    require ext_call.return_data[96]
    stor2[arg1].field_768 = arg2
    require ext_code.size(DBAddress)
    call DBAddress.0x9a2d5c20 with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x60fd534d: arg2, block.number, arg1, ext_call.return_data[0]
    require ext_code.size(DBAddress)
    call DBAddress.0xbe346fc8 with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 == ext_call.return_data[0]:
        require ext_code.size(DBAddress)
        call DBAddress.0xc6d27b8b with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[0]:
            require ext_code.size(DBAddress)
            if not ext_call.return_data[32]:
                call DBAddress.0x82da40f with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0], 2
            else:
                if ext_call.return_data[32] >= ext_call.return_data[64]:
                    call DBAddress.0xfae6c904 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0]
                else:
                    call DBAddress.0x82da40f with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], 3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_f5b938e2(?) payable {
    require ext_code.size(configAddress)
    call configAddress.0x75bf9f6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    if not arg2:
        emit 0xd5d3ab07: 1, arg1, 0
    else:
        if arg2 == sha3(0):
            emit 0xd5d3ab07: 1, arg1, 0
        else:
            if not stor2[arg1].field_0:
                emit 0xd5d3ab07: 2, arg1, 0
            else:
                if not stor2[arg1].field_0:
                    if eth.balance(this.address) + msg.value < stor2[arg1].field_1024:
                        emit 0xd5d3ab07: 4, arg1, 0
                    else:
                        stor2[arg1].field_256 = arg2
                        require ext_code.size(configAddress)
                        call configAddress.0xd81c8e52 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(DBAddress)
                        call DBAddress.0x8d5f62dc with:
                             gas gas_remaining wei
                            args 0, uint32(arg1), stor2[arg1].field_0, arg2, stor2[arg1].field_1024, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(configAddress)
                        call configAddress.0x95805dad with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(configAddress)
                        call configAddress.0xb38e40ba with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(configAddress)
                        call configAddress.0x6b954bef with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(configAddress)
                        call configAddress.0xd149dde8 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(configAddress)
                        call configAddress.0xd81c8e52 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(configAddress)
                        call configAddress.0x3a984bc5 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(configAddress)
                        call configAddress.0x2c78a525 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xcb740605: block.number, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], stor2[arg1].field_1024, arg2, ext_call.return_data[0], ext_call.return_data[0], arg1, 0
                else:
                    if not stor2[arg1].field_256:
                        if eth.balance(this.address) + msg.value < stor2[arg1].field_1024:
                            emit 0xd5d3ab07: 4, arg1, 0
                        else:
                            stor2[arg1].field_256 = arg2
                            require ext_code.size(configAddress)
                            call configAddress.0xd81c8e52 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(DBAddress)
                            call DBAddress.0x8d5f62dc with:
                                 gas gas_remaining wei
                                args 0, uint32(arg1), stor2[arg1].field_0, arg2, stor2[arg1].field_1024, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(configAddress)
                            call configAddress.0x95805dad with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(configAddress)
                            call configAddress.0xb38e40ba with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(configAddress)
                            call configAddress.0x6b954bef with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(configAddress)
                            call configAddress.0xd149dde8 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(configAddress)
                            call configAddress.0xd81c8e52 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(configAddress)
                            call configAddress.0x3a984bc5 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(configAddress)
                            call configAddress.0x2c78a525 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0xcb740605: block.number, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], stor2[arg1].field_1024, arg2, ext_call.return_data[0], ext_call.return_data[0], arg1, 0
                    else:
                        require ext_code.size(DBAddress)
                        call DBAddress.0x5e966049 with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(DBAddress)
                        call DBAddress.0x7955b450 with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(DBAddress)
                        call DBAddress.0xbe55e97 with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if eth.balance(this.address) + msg.value < stor2[arg1].field_1024:
                                emit 0xd5d3ab07: 4, arg1, ext_call.return_data[0] + 1
                            else:
                                stor2[arg1].field_256 = arg2
                                require ext_code.size(configAddress)
                                call configAddress.0xd81c8e52 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(DBAddress)
                                call DBAddress.0x8d5f62dc with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[32], stor2[arg1].field_0, arg2, stor2[arg1].field_1024, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(configAddress)
                                call configAddress.0x95805dad with:
                                     gas gas_remaining wei
                                    args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(configAddress)
                                call configAddress.0xb38e40ba with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(configAddress)
                                call configAddress.0x6b954bef with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(configAddress)
                                call configAddress.0xd149dde8 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(configAddress)
                                call configAddress.0xd81c8e52 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(configAddress)
                                call configAddress.0x3a984bc5 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(configAddress)
                                call configAddress.0x2c78a525 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xcb740605: block.number, ext_call.return_data[32], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], stor2[arg1].field_1024, arg2, ext_call.return_data[0], ext_call.return_data[0], arg1, ext_call.return_data[0] + 1
                        else:
                            if ext_call.return_data[0] > 0:
                                emit 0xd5d3ab07: 3, arg1, 0
                            else:
                                if bool(ext_call.return_data[32]) == 1:
                                    emit 0xd5d3ab07: 3, arg1, 0
                                else:
                                    if eth.balance(this.address) + msg.value < stor2[arg1].field_1024:
                                        emit 0xd5d3ab07: 4, arg1, ext_call.return_data[0] + 1
                                    else:
                                        stor2[arg1].field_256 = arg2
                                        require ext_code.size(configAddress)
                                        call configAddress.0xd81c8e52 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0x8d5f62dc with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[32], stor2[arg1].field_0, arg2, stor2[arg1].field_1024, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(configAddress)
                                        call configAddress.0x95805dad with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(configAddress)
                                        call configAddress.0xb38e40ba with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(configAddress)
                                        call configAddress.0x6b954bef with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(configAddress)
                                        call configAddress.0xd149dde8 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(configAddress)
                                        call configAddress.0xd81c8e52 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(configAddress)
                                        call configAddress.0x3a984bc5 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(configAddress)
                                        call configAddress.0x2c78a525 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit 0xcb740605: block.number, ext_call.return_data[32], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], stor2[arg1].field_1024, arg2, ext_call.return_data[0], ext_call.return_data[0], arg1, ext_call.return_data[0] + 1
}

function sub_9dedb284(?) {
    require uint8(stor3.field_0)
    require not uint8(stor3.field_168)
    require ext_code.size(DBAddress)
    call DBAddress.0x1b414341 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require block.number >= ext_call.return_data[0] + ext_call.return_data[32]
    require ext_call.return_data[0]
    require ext_call.return_data[32]
    require ext_code.size(DBAddress)
    call DBAddress.0x580ef94b with:
         gas gas_remaining wei
        args arg1, arg2, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(DBAddress)
        call DBAddress.0xbe346fc8 with:
             gas gas_remaining wei
            args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != 2:
            require ext_code.size(DBAddress)
            call DBAddress.0xfa313ef9 with:
                 gas gas_remaining wei
                args arg1, arg2, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(DBAddress)
                if ext_call.return_data[160]:
                    call DBAddress.0xcfd71542 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 1 == ext_call.return_data[0]:
                        require ext_code.size(DBAddress)
                        call DBAddress.0x6fe4a6f8 with:
                             gas gas_remaining wei
                            args 0, uint32(arg1), arg2, 0, 1, address(msg.sender)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[64] wei
                             gas 2300 * is_zero(value) wei
                        emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                    else:
                        if 2 == ext_call.return_data[0]:
                            require ext_code.size(DBAddress)
                            call DBAddress.0x6fe4a6f8 with:
                                 gas gas_remaining wei
                                args 0, uint32(arg1), arg2, 0, 1, address(msg.sender)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[64] wei
                                 gas 2300 * is_zero(value) wei
                            emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                        else:
                            if 3 == ext_call.return_data[0]:
                                require ext_code.size(DBAddress)
                                call DBAddress.0x38d4a611 with:
                                     gas gas_remaining wei
                                    args arg1, arg2, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require ext_code.size(configAddress)
                                    call configAddress.0xe141f10f with:
                                         gas gas_remaining wei
                                        args arg1, arg2, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(DBAddress)
                                    call DBAddress.0x7955b450 with:
                                         gas gas_remaining wei
                                        args arg1, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    if ext_call.return_data[96] <= 0:
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0x6fe4a6f8 with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[32], uint32(arg2), 0, 1, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call msg.sender with:
                                           value ext_call.return_data[64] wei
                                             gas 2300 * is_zero(value) wei
                                        emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                    else:
                                        if ext_call.return_data[32]:
                                            require ext_call.return_data[96]
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0x6fe4a6f8 with:
                                                 gas gas_remaining wei
                                                args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96], 1, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            call msg.sender with:
                                               value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96]) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96]:
                                                emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                            else:
                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                                        else:
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0xfdedd49b with:
                                                 gas gas_remaining wei
                                                args arg1, arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0x77e30167 with:
                                                 gas gas_remaining wei
                                                args arg1, arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0xbe346fc8 with:
                                                 gas gas_remaining wei
                                                args arg1, arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] >= 2:
                                                if ext_call.return_data[96] >= ext_call.return_data[0]:
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x6fe4a6f8 with:
                                                         gas gas_remaining wei
                                                        args 0, ext_call.return_data[32], uint32(arg2), 0, 1, msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call msg.sender with:
                                                       value ext_call.return_data[64] wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                else:
                                                    require ext_call.return_data[96]
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x6fe4a6f8 with:
                                                         gas gas_remaining wei
                                                        args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], 1, msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call msg.sender with:
                                                       value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]:
                                                        emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                    else:
                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                                            else:
                                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                                    if ext_call.return_data[96] >= ext_call.return_data[0]:
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args 0, ext_call.return_data[32], uint32(arg2), 0, 1, msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call msg.sender with:
                                                           value ext_call.return_data[64] wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                    else:
                                                        require ext_call.return_data[96]
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], 1, msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call msg.sender with:
                                                           value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]:
                                                            emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                        else:
                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                                                else:
                                                    require ext_call.return_data[96]
                                                    require ext_code.size(DBAddress)
                                                    if ext_call.return_data[96] < ext_call.return_data[0]:
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], 1, msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call msg.sender with:
                                                           value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]:
                                                            emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                        else:
                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                                                    else:
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96], 1, msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call msg.sender with:
                                                           value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96]) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96]:
                                                            emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                        else:
                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                            else:
                                if 4 == ext_call.return_data[0]:
                                    require ext_code.size(DBAddress)
                                    call DBAddress.0x38d4a611 with:
                                         gas gas_remaining wei
                                        args arg1, arg2, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(configAddress)
                                        call configAddress.0xe141f10f with:
                                             gas gas_remaining wei
                                            args arg1, arg2, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0x7955b450 with:
                                             gas gas_remaining wei
                                            args arg1, arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        if ext_call.return_data[96] <= 0:
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0x6fe4a6f8 with:
                                                 gas gas_remaining wei
                                                args 0, ext_call.return_data[32], uint32(arg2), 0, 1, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            call msg.sender with:
                                               value ext_call.return_data[64] wei
                                                 gas 2300 * is_zero(value) wei
                                            emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                        else:
                                            if ext_call.return_data[32]:
                                                require ext_call.return_data[96]
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0x6fe4a6f8 with:
                                                     gas gas_remaining wei
                                                    args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96], 1, msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call msg.sender with:
                                                   value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96]) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96]:
                                                    emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                else:
                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                                            else:
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0xfdedd49b with:
                                                     gas gas_remaining wei
                                                    args arg1, arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0x77e30167 with:
                                                     gas gas_remaining wei
                                                    args arg1, arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0xbe346fc8 with:
                                                     gas gas_remaining wei
                                                    args arg1, arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] >= 2:
                                                    if ext_call.return_data[96] >= ext_call.return_data[0]:
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args 0, ext_call.return_data[32], uint32(arg2), 0, 1, msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call msg.sender with:
                                                           value ext_call.return_data[64] wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                    else:
                                                        require ext_call.return_data[96]
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], 1, msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call msg.sender with:
                                                           value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]:
                                                            emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                        else:
                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                                                else:
                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                        if ext_call.return_data[96] >= ext_call.return_data[0]:
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args 0, ext_call.return_data[32], uint32(arg2), 0, 1, msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call msg.sender with:
                                                               value ext_call.return_data[64] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                        else:
                                                            require ext_call.return_data[96]
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], 1, msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call msg.sender with:
                                                               value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]:
                                                                emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                            else:
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                                                    else:
                                                        require ext_call.return_data[96]
                                                        require ext_code.size(DBAddress)
                                                        if ext_call.return_data[96] < ext_call.return_data[0]:
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], 1, msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call msg.sender with:
                                                               value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]:
                                                                emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                            else:
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                                                        else:
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96], 1, msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call msg.sender with:
                                                               value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96]:
                                                                emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                            else:
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                else:
                    call DBAddress.0x77e30167 with:
                         gas gas_remaining wei
                        args arg1, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(DBAddress)
                    if ext_call.return_data[128] < ext_call.return_data[0]:
                        call DBAddress.0x82da40f with:
                             gas gas_remaining wei
                            args arg1, arg2, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(DBAddress)
                        call DBAddress.0x6fe4a6f8 with:
                             gas gas_remaining wei
                            args 0, uint32(arg1), arg2, 0, 1, address(msg.sender)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[64] wei
                             gas 2300 * is_zero(value) wei
                        emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                    else:
                        if not ext_call.return_data[96]:
                            call DBAddress.0x82da40f with:
                                 gas gas_remaining wei
                                args arg1, arg2, 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(DBAddress)
                            call DBAddress.0x6fe4a6f8 with:
                                 gas gas_remaining wei
                                args 0, uint32(arg1), arg2, 0, 1, address(msg.sender)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[64] wei
                                 gas 2300 * is_zero(value) wei
                            emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                        else:
                            call DBAddress.0xbe346fc8 with:
                                 gas gas_remaining wei
                                args arg1, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(DBAddress)
                            if ext_call.return_data[0] != 2:
                                call DBAddress.0x82da40f with:
                                     gas gas_remaining wei
                                    args arg1, arg2, 4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(DBAddress)
                                call DBAddress.0x38d4a611 with:
                                     gas gas_remaining wei
                                    args arg1, arg2, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require ext_code.size(configAddress)
                                    call configAddress.0xe141f10f with:
                                         gas gas_remaining wei
                                        args arg1, arg2, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(DBAddress)
                                    call DBAddress.0x7955b450 with:
                                         gas gas_remaining wei
                                        args arg1, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    if ext_call.return_data[96] <= 0:
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0x6fe4a6f8 with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[32], uint32(arg2), 0, 1, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call msg.sender with:
                                           value ext_call.return_data[64] wei
                                             gas 2300 * is_zero(value) wei
                                        emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                    else:
                                        if ext_call.return_data[32]:
                                            require ext_call.return_data[96]
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0x6fe4a6f8 with:
                                                 gas gas_remaining wei
                                                args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96], 1, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            call msg.sender with:
                                               value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96]) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96]:
                                                emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                            else:
                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                                        else:
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0xfdedd49b with:
                                                 gas gas_remaining wei
                                                args arg1, arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0x77e30167 with:
                                                 gas gas_remaining wei
                                                args arg1, arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0xbe346fc8 with:
                                                 gas gas_remaining wei
                                                args arg1, arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] >= 2:
                                                if ext_call.return_data[96] >= ext_call.return_data[0]:
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x6fe4a6f8 with:
                                                         gas gas_remaining wei
                                                        args 0, ext_call.return_data[32], uint32(arg2), 0, 1, msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call msg.sender with:
                                                       value ext_call.return_data[64] wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                else:
                                                    require ext_call.return_data[96]
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x6fe4a6f8 with:
                                                         gas gas_remaining wei
                                                        args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], 1, msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call msg.sender with:
                                                       value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]:
                                                        emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                    else:
                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                                            else:
                                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                                    if ext_call.return_data[96] >= ext_call.return_data[0]:
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args 0, ext_call.return_data[32], uint32(arg2), 0, 1, msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call msg.sender with:
                                                           value ext_call.return_data[64] wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                    else:
                                                        require ext_call.return_data[96]
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], 1, msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call msg.sender with:
                                                           value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]:
                                                            emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                        else:
                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                                                else:
                                                    require ext_call.return_data[96]
                                                    require ext_code.size(DBAddress)
                                                    if ext_call.return_data[96] < ext_call.return_data[0]:
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], 1, msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call msg.sender with:
                                                           value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]:
                                                            emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                        else:
                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                                                    else:
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96], 1, msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call msg.sender with:
                                                           value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96]) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96]:
                                                            emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                        else:
                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                            else:
                                call DBAddress.0xfdedd49b with:
                                     gas gas_remaining wei
                                    args arg1, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[96] < ext_call.return_data[0]:
                                    require ext_code.size(DBAddress)
                                    call DBAddress.0x82da40f with:
                                         gas gas_remaining wei
                                        args arg1, arg2, 3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(DBAddress)
                                    call DBAddress.0x38d4a611 with:
                                         gas gas_remaining wei
                                        args arg1, arg2, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(configAddress)
                                        call configAddress.0xe141f10f with:
                                             gas gas_remaining wei
                                            args arg1, arg2, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0x7955b450 with:
                                             gas gas_remaining wei
                                            args arg1, arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        if ext_call.return_data[96] <= 0:
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0x6fe4a6f8 with:
                                                 gas gas_remaining wei
                                                args 0, ext_call.return_data[32], uint32(arg2), 0, 1, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            call msg.sender with:
                                               value ext_call.return_data[64] wei
                                                 gas 2300 * is_zero(value) wei
                                            emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                        else:
                                            if ext_call.return_data[32]:
                                                require ext_call.return_data[96]
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0x6fe4a6f8 with:
                                                     gas gas_remaining wei
                                                    args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96], 1, msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call msg.sender with:
                                                   value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96]) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96]:
                                                    emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                else:
                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                                            else:
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0xfdedd49b with:
                                                     gas gas_remaining wei
                                                    args arg1, arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0x77e30167 with:
                                                     gas gas_remaining wei
                                                    args arg1, arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0xbe346fc8 with:
                                                     gas gas_remaining wei
                                                    args arg1, arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] >= 2:
                                                    if ext_call.return_data[96] >= ext_call.return_data[0]:
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args 0, ext_call.return_data[32], uint32(arg2), 0, 1, msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call msg.sender with:
                                                           value ext_call.return_data[64] wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                    else:
                                                        require ext_call.return_data[96]
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], 1, msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call msg.sender with:
                                                           value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]:
                                                            emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                        else:
                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                                                else:
                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                        if ext_call.return_data[96] >= ext_call.return_data[0]:
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args 0, ext_call.return_data[32], uint32(arg2), 0, 1, msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call msg.sender with:
                                                               value ext_call.return_data[64] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                        else:
                                                            require ext_call.return_data[96]
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], 1, msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call msg.sender with:
                                                               value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]:
                                                                emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                            else:
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                                                    else:
                                                        require ext_call.return_data[96]
                                                        require ext_code.size(DBAddress)
                                                        if ext_call.return_data[96] < ext_call.return_data[0]:
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], 1, msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call msg.sender with:
                                                               value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96]:
                                                                emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                            else:
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
                                                        else:
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args 0, ext_call.return_data[32], uint32(arg2), (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96], 1, msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call msg.sender with:
                                                               value ext_call.return_data[64] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96]:
                                                                emit 0xedbaae4d: ext_call.return_data[64], arg1, arg2, msg.sender
                                                            else:
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[96] * ext_call.return_data[64]) + stor2[arg1].field_1024 / ext_call.return_data[96], ext_call.return_data[64], arg1, arg2, msg.sender
}

function refund(uint256 arg1) {
    require ext_code.size(configAddress)
    call configAddress.0x3c8410a2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require not uint8(stor3.field_168)
    require ext_code.size(DBAddress)
    call DBAddress.0xcfd71542 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == 1:
        require ext_code.size(DBAddress)
        call DBAddress.0x39138a82 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        require block.number >= ext_call.return_data[32] + ext_call.return_data[64]
        require ext_call.return_data[32]
        require ext_call.return_data[64]
        if ext_call.return_data[160]:
            if ext_call.return_data[160] <= ext_call.return_data[128]:
                emit 0x6178c300: ext_call.return_data[128], ext_call.return_data[160], arg1, ext_call.return_data[0]
            else:
                if ext_call.return_data[160] - ext_call.return_data[128] <= 5:
                    s = 0
                    s = 0
                    idx = 0
                    while uint8(idx) < ext_call.return_data[160] - ext_call.return_data[128]:
                        mem[132] = ext_call.return_data[0]
                        require ext_code.size(DBAddress)
                        call DBAddress.0xb56f0028 with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0]
                        mem[96 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if not ext_call.return_data[32]:
                            mem[100] = arg1
                            mem[132] = ext_call.return_data[0]
                            mem[164] = address(ext_call.return_data[0])
                            mem[196] = 1
                            require ext_code.size(DBAddress)
                            call DBAddress.0xfd97b07e with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0]), 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call address(ext_call.return_data[0]) with:
                               value ext_call.return_data[96] wei
                                 gas 2300 * is_zero(value) wei
                            mem[96] = ext_call.return_data[96]
                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                        s = ext_call.return_data[32]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    emit 0x6178c300: ext_call.return_data[160], ext_call.return_data[160], arg1, ext_call.return_data[0]
                else:
                    s = 0
                    s = 0
                    idx = 0
                    while uint8(idx) < 5:
                        mem[132] = ext_call.return_data[0]
                        require ext_code.size(DBAddress)
                        call DBAddress.0xb56f0028 with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0]
                        mem[96 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if not ext_call.return_data[32]:
                            mem[100] = arg1
                            mem[132] = ext_call.return_data[0]
                            mem[164] = address(ext_call.return_data[0])
                            mem[196] = 1
                            require ext_code.size(DBAddress)
                            call DBAddress.0xfd97b07e with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0]), 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call address(ext_call.return_data[0]) with:
                               value ext_call.return_data[96] wei
                                 gas 2300 * is_zero(value) wei
                            mem[96] = ext_call.return_data[96]
                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                        s = ext_call.return_data[32]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    emit 0x6178c300: ext_call.return_data[128] + 5, ext_call.return_data[160], arg1, ext_call.return_data[0]
    else:
        if 2 == ext_call.return_data[0]:
            require ext_code.size(DBAddress)
            call DBAddress.0x39138a82 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            require block.number >= ext_call.return_data[32] + ext_call.return_data[64]
            require ext_call.return_data[32]
            require ext_call.return_data[64]
            if ext_call.return_data[160]:
                if ext_call.return_data[160] <= ext_call.return_data[128]:
                    emit 0x6178c300: ext_call.return_data[128], ext_call.return_data[160], arg1, ext_call.return_data[0]
                else:
                    if ext_call.return_data[160] - ext_call.return_data[128] <= 5:
                        s = 0
                        s = 0
                        idx = 0
                        while uint8(idx) < ext_call.return_data[160] - ext_call.return_data[128]:
                            mem[132] = ext_call.return_data[0]
                            require ext_code.size(DBAddress)
                            call DBAddress.0xb56f0028 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0]
                            mem[96 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if not ext_call.return_data[32]:
                                mem[100] = arg1
                                mem[132] = ext_call.return_data[0]
                                mem[164] = address(ext_call.return_data[0])
                                mem[196] = 1
                                require ext_code.size(DBAddress)
                                call DBAddress.0xfd97b07e with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0]), 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call address(ext_call.return_data[0]) with:
                                   value ext_call.return_data[96] wei
                                     gas 2300 * is_zero(value) wei
                                mem[96] = ext_call.return_data[96]
                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                            s = ext_call.return_data[32]
                            s = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        emit 0x6178c300: ext_call.return_data[160], ext_call.return_data[160], arg1, ext_call.return_data[0]
                    else:
                        s = 0
                        s = 0
                        idx = 0
                        while uint8(idx) < 5:
                            mem[132] = ext_call.return_data[0]
                            require ext_code.size(DBAddress)
                            call DBAddress.0xb56f0028 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0]
                            mem[96 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if not ext_call.return_data[32]:
                                mem[100] = arg1
                                mem[132] = ext_call.return_data[0]
                                mem[164] = address(ext_call.return_data[0])
                                mem[196] = 1
                                require ext_code.size(DBAddress)
                                call DBAddress.0xfd97b07e with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0]), 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call address(ext_call.return_data[0]) with:
                                   value ext_call.return_data[96] wei
                                     gas 2300 * is_zero(value) wei
                                mem[96] = ext_call.return_data[96]
                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                            s = ext_call.return_data[32]
                            s = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        emit 0x6178c300: ext_call.return_data[128] + 5, ext_call.return_data[160], arg1, ext_call.return_data[0]
        else:
            if not ext_call.return_data[0]:
                require ext_code.size(DBAddress)
                call DBAddress.0x6a9477d0 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 224
                require block.number >= ext_call.return_data[32] + ext_call.return_data[64]
                require ext_call.return_data[32]
                require ext_call.return_data[64]
                if ext_call.return_data[192]:
                    require ext_code.size(DBAddress)
                    call DBAddress.0x7955b450 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[192] <= ext_call.return_data[160]:
                        if ext_call.return_data[128] > 0:
                            if ext_call.return_data[32]:
                                require ext_call.return_data[128]
                            else:
                                require ext_code.size(DBAddress)
                                call DBAddress.0xfdedd49b with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(DBAddress)
                                call DBAddress.0x77e30167 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(DBAddress)
                                call DBAddress.0xbe346fc8 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 2:
                                    if ext_call.return_data[128] < ext_call.return_data[0]:
                                        require ext_call.return_data[128]
                                else:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        if ext_call.return_data[128] < ext_call.return_data[0]:
                                            require ext_call.return_data[128]
                                    else:
                                        require ext_call.return_data[128]
                        emit 0x388ebf61: ext_call.return_data[160], ext_call.return_data[192], arg1, ext_call.return_data[0]
                    else:
                        if ext_call.return_data[192] - ext_call.return_data[160] <= 5:
                            if ext_call.return_data[128] <= 0:
                                s = 0
                                s = 0
                                s = 0
                                idx = 0
                                while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                    require ext_code.size(DBAddress)
                                    call DBAddress.0x9ea423a3 with:
                                         gas gas_remaining wei
                                        args arg1, ext_call.return_data[0]
                                    mem[96 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[64]:
                                            if not ext_call.return_data[32]:
                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                mem[100] = arg1
                                                mem[132] = ext_call.return_data[0]
                                                mem[164] = address(ext_call.return_data[0])
                                                require ext_code.size(configAddress)
                                                call configAddress.0xe141f10f with:
                                                     gas gas_remaining wei
                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[100] = arg1
                                            mem[132] = ext_call.return_data[0]
                                            mem[164] = 0
                                            mem[196] = 1
                                            mem[228] = address(ext_call.return_data[0])
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0x6fe4a6f8 with:
                                                 gas gas_remaining wei
                                                args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[96] wei
                                                 gas 2300 * is_zero(value) wei
                                            mem[96] = ext_call.return_data[96]
                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                    else:
                                        if ext_call.return_data[128]:
                                            if not ext_call.return_data[32]:
                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                mem[100] = arg1
                                                mem[132] = ext_call.return_data[0]
                                                mem[164] = address(ext_call.return_data[0])
                                                require ext_code.size(configAddress)
                                                call configAddress.0xe141f10f with:
                                                     gas gas_remaining wei
                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if ext_call.return_data[64]:
                                                if not ext_call.return_data[32]:
                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = address(ext_call.return_data[0])
                                                    require ext_code.size(configAddress)
                                                    call configAddress.0xe141f10f with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[100] = arg1
                                                mem[132] = ext_call.return_data[0]
                                                mem[164] = 0
                                                mem[196] = 1
                                                mem[228] = address(ext_call.return_data[0])
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0x6fe4a6f8 with:
                                                     gas gas_remaining wei
                                                    args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[96] wei
                                                     gas 2300 * is_zero(value) wei
                                                mem[96] = ext_call.return_data[96]
                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                    s = ext_call.return_data[64]
                                    s = ext_call.return_data[32]
                                    s = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                            else:
                                if ext_call.return_data[32]:
                                    require ext_call.return_data[128]
                                    s = 0
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0x9ea423a3 with:
                                             gas gas_remaining wei
                                            args arg1, ext_call.return_data[0]
                                        mem[96 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[64]:
                                                if not ext_call.return_data[32]:
                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = address(ext_call.return_data[0])
                                                    require ext_code.size(configAddress)
                                                    call configAddress.0xe141f10f with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[100] = arg1
                                                mem[132] = ext_call.return_data[0]
                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                mem[196] = 1
                                                mem[228] = address(ext_call.return_data[0])
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0x6fe4a6f8 with:
                                                     gas gas_remaining wei
                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                    mem[96] = ext_call.return_data[96]
                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                else:
                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                    mem[128] = ext_call.return_data[96]
                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                        else:
                                            if ext_call.return_data[128]:
                                                if not ext_call.return_data[32]:
                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = address(ext_call.return_data[0])
                                                    require ext_code.size(configAddress)
                                                    call configAddress.0xe141f10f with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if ext_call.return_data[64]:
                                                    if not ext_call.return_data[32]:
                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = address(ext_call.return_data[0])
                                                        require ext_code.size(configAddress)
                                                        call configAddress.0xe141f10f with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                    mem[196] = 1
                                                    mem[228] = address(ext_call.return_data[0])
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x6fe4a6f8 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call address(ext_call.return_data[0]) with:
                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                        mem[96] = ext_call.return_data[96]
                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    else:
                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                        mem[128] = ext_call.return_data[96]
                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                        s = ext_call.return_data[64]
                                        s = ext_call.return_data[32]
                                        s = ext_call.return_data[0]
                                        idx = idx + 1
                                        continue 
                                else:
                                    require ext_code.size(DBAddress)
                                    call DBAddress.0xfdedd49b with:
                                         gas gas_remaining wei
                                        args arg1, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(DBAddress)
                                    call DBAddress.0x77e30167 with:
                                         gas gas_remaining wei
                                        args arg1, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(DBAddress)
                                    call DBAddress.0xbe346fc8 with:
                                         gas gas_remaining wei
                                        args arg1, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= 2:
                                        if ext_call.return_data[128] >= ext_call.return_data[0]:
                                            s = 0
                                            s = 0
                                            s = 0
                                            idx = 0
                                            while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0x9ea423a3 with:
                                                     gas gas_remaining wei
                                                    args arg1, ext_call.return_data[0]
                                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    if ext_call.return_data[64]:
                                                        if not ext_call.return_data[32]:
                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = address(ext_call.return_data[0])
                                                            require ext_code.size(configAddress)
                                                            call configAddress.0xe141f10f with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = 0
                                                        mem[196] = 1
                                                        mem[228] = address(ext_call.return_data[0])
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call address(ext_call.return_data[0]) with:
                                                           value ext_call.return_data[96] wei
                                                             gas 2300 * is_zero(value) wei
                                                        mem[96] = ext_call.return_data[96]
                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                else:
                                                    if ext_call.return_data[128]:
                                                        if not ext_call.return_data[32]:
                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = address(ext_call.return_data[0])
                                                            require ext_code.size(configAddress)
                                                            call configAddress.0xe141f10f with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = 0
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            mem[96] = ext_call.return_data[96]
                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                s = ext_call.return_data[64]
                                                s = ext_call.return_data[32]
                                                s = ext_call.return_data[0]
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require ext_call.return_data[128]
                                            s = 0
                                            s = 0
                                            s = 0
                                            idx = 0
                                            while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0x9ea423a3 with:
                                                     gas gas_remaining wei
                                                    args arg1, ext_call.return_data[0]
                                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    if ext_call.return_data[64]:
                                                        if not ext_call.return_data[32]:
                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = address(ext_call.return_data[0])
                                                            require ext_code.size(configAddress)
                                                            call configAddress.0xe141f10f with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                        mem[196] = 1
                                                        mem[228] = address(ext_call.return_data[0])
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call address(ext_call.return_data[0]) with:
                                                           value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                            mem[96] = ext_call.return_data[96]
                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                            mem[128] = ext_call.return_data[96]
                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                else:
                                                    if ext_call.return_data[128]:
                                                        if not ext_call.return_data[32]:
                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = address(ext_call.return_data[0])
                                                            require ext_code.size(configAddress)
                                                            call configAddress.0xe141f10f with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[128] = ext_call.return_data[96]
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                s = ext_call.return_data[64]
                                                s = ext_call.return_data[32]
                                                s = ext_call.return_data[0]
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            if ext_call.return_data[128] >= ext_call.return_data[0]:
                                                s = 0
                                                s = 0
                                                s = 0
                                                idx = 0
                                                while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x9ea423a3 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0]
                                                    mem[96 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = 0
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            mem[96] = ext_call.return_data[96]
                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    else:
                                                        if ext_call.return_data[128]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = 0
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    s = ext_call.return_data[64]
                                                    s = ext_call.return_data[32]
                                                    s = ext_call.return_data[0]
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                require ext_call.return_data[128]
                                                s = 0
                                                s = 0
                                                s = 0
                                                idx = 0
                                                while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x9ea423a3 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0]
                                                    mem[96 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[128] = ext_call.return_data[96]
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    else:
                                                        if ext_call.return_data[128]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                else:
                                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[128] = ext_call.return_data[96]
                                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    s = ext_call.return_data[64]
                                                    s = ext_call.return_data[32]
                                                    s = ext_call.return_data[0]
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            require ext_call.return_data[128]
                                            if ext_call.return_data[128] < ext_call.return_data[0]:
                                                s = 0
                                                s = 0
                                                s = 0
                                                idx = 0
                                                while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x9ea423a3 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0]
                                                    mem[96 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[128] = ext_call.return_data[96]
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    else:
                                                        if ext_call.return_data[128]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                else:
                                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[128] = ext_call.return_data[96]
                                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    s = ext_call.return_data[64]
                                                    s = ext_call.return_data[32]
                                                    s = ext_call.return_data[0]
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                s = 0
                                                s = 0
                                                idx = 0
                                                while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x9ea423a3 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0]
                                                    mem[96 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                mem[128] = ext_call.return_data[96]
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    else:
                                                        if ext_call.return_data[128]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                else:
                                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                    mem[128] = ext_call.return_data[96]
                                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    s = ext_call.return_data[64]
                                                    s = ext_call.return_data[32]
                                                    s = ext_call.return_data[0]
                                                    idx = idx + 1
                                                    continue 
                            emit 0x388ebf61: ext_call.return_data[192], ext_call.return_data[192], arg1, ext_call.return_data[0]
                        else:
                            if ext_call.return_data[128] <= 0:
                                s = 0
                                s = 0
                                s = 0
                                idx = 0
                                while uint8(idx) < 5:
                                    require ext_code.size(DBAddress)
                                    call DBAddress.0x9ea423a3 with:
                                         gas gas_remaining wei
                                        args arg1, ext_call.return_data[0]
                                    mem[96 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[64]:
                                            if not ext_call.return_data[32]:
                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                mem[100] = arg1
                                                mem[132] = ext_call.return_data[0]
                                                mem[164] = address(ext_call.return_data[0])
                                                require ext_code.size(configAddress)
                                                call configAddress.0xe141f10f with:
                                                     gas gas_remaining wei
                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[100] = arg1
                                            mem[132] = ext_call.return_data[0]
                                            mem[164] = 0
                                            mem[196] = 1
                                            mem[228] = address(ext_call.return_data[0])
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0x6fe4a6f8 with:
                                                 gas gas_remaining wei
                                                args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[96] wei
                                                 gas 2300 * is_zero(value) wei
                                            mem[96] = ext_call.return_data[96]
                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                    else:
                                        if ext_call.return_data[128]:
                                            if not ext_call.return_data[32]:
                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                mem[100] = arg1
                                                mem[132] = ext_call.return_data[0]
                                                mem[164] = address(ext_call.return_data[0])
                                                require ext_code.size(configAddress)
                                                call configAddress.0xe141f10f with:
                                                     gas gas_remaining wei
                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if ext_call.return_data[64]:
                                                if not ext_call.return_data[32]:
                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = address(ext_call.return_data[0])
                                                    require ext_code.size(configAddress)
                                                    call configAddress.0xe141f10f with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[100] = arg1
                                                mem[132] = ext_call.return_data[0]
                                                mem[164] = 0
                                                mem[196] = 1
                                                mem[228] = address(ext_call.return_data[0])
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0x6fe4a6f8 with:
                                                     gas gas_remaining wei
                                                    args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[96] wei
                                                     gas 2300 * is_zero(value) wei
                                                mem[96] = ext_call.return_data[96]
                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                    s = ext_call.return_data[64]
                                    s = ext_call.return_data[32]
                                    s = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                            else:
                                if ext_call.return_data[32]:
                                    require ext_call.return_data[128]
                                    s = 0
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while uint8(idx) < 5:
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0x9ea423a3 with:
                                             gas gas_remaining wei
                                            args arg1, ext_call.return_data[0]
                                        mem[96 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[64]:
                                                if not ext_call.return_data[32]:
                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = address(ext_call.return_data[0])
                                                    require ext_code.size(configAddress)
                                                    call configAddress.0xe141f10f with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[100] = arg1
                                                mem[132] = ext_call.return_data[0]
                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                mem[196] = 1
                                                mem[228] = address(ext_call.return_data[0])
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0x6fe4a6f8 with:
                                                     gas gas_remaining wei
                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                    mem[96] = ext_call.return_data[96]
                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                else:
                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                    mem[128] = ext_call.return_data[96]
                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                        else:
                                            if ext_call.return_data[128]:
                                                if not ext_call.return_data[32]:
                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = address(ext_call.return_data[0])
                                                    require ext_code.size(configAddress)
                                                    call configAddress.0xe141f10f with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if ext_call.return_data[64]:
                                                    if not ext_call.return_data[32]:
                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = address(ext_call.return_data[0])
                                                        require ext_code.size(configAddress)
                                                        call configAddress.0xe141f10f with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                    mem[196] = 1
                                                    mem[228] = address(ext_call.return_data[0])
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x6fe4a6f8 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call address(ext_call.return_data[0]) with:
                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                        mem[96] = ext_call.return_data[96]
                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    else:
                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                        mem[128] = ext_call.return_data[96]
                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                        s = ext_call.return_data[64]
                                        s = ext_call.return_data[32]
                                        s = ext_call.return_data[0]
                                        idx = idx + 1
                                        continue 
                                else:
                                    require ext_code.size(DBAddress)
                                    call DBAddress.0xfdedd49b with:
                                         gas gas_remaining wei
                                        args arg1, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(DBAddress)
                                    call DBAddress.0x77e30167 with:
                                         gas gas_remaining wei
                                        args arg1, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(DBAddress)
                                    call DBAddress.0xbe346fc8 with:
                                         gas gas_remaining wei
                                        args arg1, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= 2:
                                        if ext_call.return_data[128] >= ext_call.return_data[0]:
                                            s = 0
                                            s = 0
                                            s = 0
                                            idx = 0
                                            while uint8(idx) < 5:
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0x9ea423a3 with:
                                                     gas gas_remaining wei
                                                    args arg1, ext_call.return_data[0]
                                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    if ext_call.return_data[64]:
                                                        if not ext_call.return_data[32]:
                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = address(ext_call.return_data[0])
                                                            require ext_code.size(configAddress)
                                                            call configAddress.0xe141f10f with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = 0
                                                        mem[196] = 1
                                                        mem[228] = address(ext_call.return_data[0])
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call address(ext_call.return_data[0]) with:
                                                           value ext_call.return_data[96] wei
                                                             gas 2300 * is_zero(value) wei
                                                        mem[96] = ext_call.return_data[96]
                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                else:
                                                    if ext_call.return_data[128]:
                                                        if not ext_call.return_data[32]:
                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = address(ext_call.return_data[0])
                                                            require ext_code.size(configAddress)
                                                            call configAddress.0xe141f10f with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = 0
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            mem[96] = ext_call.return_data[96]
                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                s = ext_call.return_data[64]
                                                s = ext_call.return_data[32]
                                                s = ext_call.return_data[0]
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require ext_call.return_data[128]
                                            s = 0
                                            s = 0
                                            s = 0
                                            idx = 0
                                            while uint8(idx) < 5:
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0x9ea423a3 with:
                                                     gas gas_remaining wei
                                                    args arg1, ext_call.return_data[0]
                                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    if ext_call.return_data[64]:
                                                        if not ext_call.return_data[32]:
                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = address(ext_call.return_data[0])
                                                            require ext_code.size(configAddress)
                                                            call configAddress.0xe141f10f with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                        mem[196] = 1
                                                        mem[228] = address(ext_call.return_data[0])
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call address(ext_call.return_data[0]) with:
                                                           value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                            mem[96] = ext_call.return_data[96]
                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                            mem[128] = ext_call.return_data[96]
                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                else:
                                                    if ext_call.return_data[128]:
                                                        if not ext_call.return_data[32]:
                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = address(ext_call.return_data[0])
                                                            require ext_code.size(configAddress)
                                                            call configAddress.0xe141f10f with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[128] = ext_call.return_data[96]
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                s = ext_call.return_data[64]
                                                s = ext_call.return_data[32]
                                                s = ext_call.return_data[0]
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            if ext_call.return_data[128] >= ext_call.return_data[0]:
                                                s = 0
                                                s = 0
                                                s = 0
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x9ea423a3 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0]
                                                    mem[96 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = 0
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            mem[96] = ext_call.return_data[96]
                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    else:
                                                        if ext_call.return_data[128]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = 0
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    s = ext_call.return_data[64]
                                                    s = ext_call.return_data[32]
                                                    s = ext_call.return_data[0]
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                require ext_call.return_data[128]
                                                s = 0
                                                s = 0
                                                s = 0
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x9ea423a3 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0]
                                                    mem[96 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[128] = ext_call.return_data[96]
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    else:
                                                        if ext_call.return_data[128]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                else:
                                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[128] = ext_call.return_data[96]
                                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    s = ext_call.return_data[64]
                                                    s = ext_call.return_data[32]
                                                    s = ext_call.return_data[0]
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            require ext_call.return_data[128]
                                            if ext_call.return_data[128] < ext_call.return_data[0]:
                                                s = 0
                                                s = 0
                                                s = 0
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x9ea423a3 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0]
                                                    mem[96 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[128] = ext_call.return_data[96]
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    else:
                                                        if ext_call.return_data[128]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                else:
                                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[128] = ext_call.return_data[96]
                                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    s = ext_call.return_data[64]
                                                    s = ext_call.return_data[32]
                                                    s = ext_call.return_data[0]
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                s = 0
                                                s = 0
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x9ea423a3 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0]
                                                    mem[96 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                mem[128] = ext_call.return_data[96]
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    else:
                                                        if ext_call.return_data[128]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                else:
                                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                    mem[128] = ext_call.return_data[96]
                                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    s = ext_call.return_data[64]
                                                    s = ext_call.return_data[32]
                                                    s = ext_call.return_data[0]
                                                    idx = idx + 1
                                                    continue 
                            emit 0x388ebf61: ext_call.return_data[160] + 5, ext_call.return_data[192], arg1, ext_call.return_data[0]
            else:
                if 3 == ext_call.return_data[0]:
                    require ext_code.size(DBAddress)
                    call DBAddress.0x6a9477d0 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 224
                    require block.number >= ext_call.return_data[32] + ext_call.return_data[64]
                    require ext_call.return_data[32]
                    require ext_call.return_data[64]
                    if ext_call.return_data[192]:
                        require ext_code.size(DBAddress)
                        call DBAddress.0x7955b450 with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[192] <= ext_call.return_data[160]:
                            if ext_call.return_data[128] > 0:
                                if ext_call.return_data[32]:
                                    require ext_call.return_data[128]
                                else:
                                    require ext_code.size(DBAddress)
                                    call DBAddress.0xfdedd49b with:
                                         gas gas_remaining wei
                                        args arg1, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(DBAddress)
                                    call DBAddress.0x77e30167 with:
                                         gas gas_remaining wei
                                        args arg1, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(DBAddress)
                                    call DBAddress.0xbe346fc8 with:
                                         gas gas_remaining wei
                                        args arg1, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= 2:
                                        if ext_call.return_data[128] < ext_call.return_data[0]:
                                            require ext_call.return_data[128]
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            if ext_call.return_data[128] < ext_call.return_data[0]:
                                                require ext_call.return_data[128]
                                        else:
                                            require ext_call.return_data[128]
                            emit 0x388ebf61: ext_call.return_data[160], ext_call.return_data[192], arg1, ext_call.return_data[0]
                        else:
                            if ext_call.return_data[192] - ext_call.return_data[160] <= 5:
                                if ext_call.return_data[128] <= 0:
                                    s = 0
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0x9ea423a3 with:
                                             gas gas_remaining wei
                                            args arg1, ext_call.return_data[0]
                                        mem[96 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[64]:
                                                if not ext_call.return_data[32]:
                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = address(ext_call.return_data[0])
                                                    require ext_code.size(configAddress)
                                                    call configAddress.0xe141f10f with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[100] = arg1
                                                mem[132] = ext_call.return_data[0]
                                                mem[164] = 0
                                                mem[196] = 1
                                                mem[228] = address(ext_call.return_data[0])
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0x6fe4a6f8 with:
                                                     gas gas_remaining wei
                                                    args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[96] wei
                                                     gas 2300 * is_zero(value) wei
                                                mem[96] = ext_call.return_data[96]
                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                        else:
                                            if ext_call.return_data[128]:
                                                if not ext_call.return_data[32]:
                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = address(ext_call.return_data[0])
                                                    require ext_code.size(configAddress)
                                                    call configAddress.0xe141f10f with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if ext_call.return_data[64]:
                                                    if not ext_call.return_data[32]:
                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = address(ext_call.return_data[0])
                                                        require ext_code.size(configAddress)
                                                        call configAddress.0xe141f10f with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = 0
                                                    mem[196] = 1
                                                    mem[228] = address(ext_call.return_data[0])
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x6fe4a6f8 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call address(ext_call.return_data[0]) with:
                                                       value ext_call.return_data[96] wei
                                                         gas 2300 * is_zero(value) wei
                                                    mem[96] = ext_call.return_data[96]
                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                        s = ext_call.return_data[64]
                                        s = ext_call.return_data[32]
                                        s = ext_call.return_data[0]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if ext_call.return_data[32]:
                                        require ext_call.return_data[128]
                                        s = 0
                                        s = 0
                                        s = 0
                                        idx = 0
                                        while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0x9ea423a3 with:
                                                 gas gas_remaining wei
                                                args arg1, ext_call.return_data[0]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[64]:
                                                    if not ext_call.return_data[32]:
                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = address(ext_call.return_data[0])
                                                        require ext_code.size(configAddress)
                                                        call configAddress.0xe141f10f with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                    mem[196] = 1
                                                    mem[228] = address(ext_call.return_data[0])
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x6fe4a6f8 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call address(ext_call.return_data[0]) with:
                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                        mem[96] = ext_call.return_data[96]
                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    else:
                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                        mem[128] = ext_call.return_data[96]
                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                            else:
                                                if ext_call.return_data[128]:
                                                    if not ext_call.return_data[32]:
                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = address(ext_call.return_data[0])
                                                        require ext_code.size(configAddress)
                                                        call configAddress.0xe141f10f with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if ext_call.return_data[64]:
                                                        if not ext_call.return_data[32]:
                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = address(ext_call.return_data[0])
                                                            require ext_code.size(configAddress)
                                                            call configAddress.0xe141f10f with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                        mem[196] = 1
                                                        mem[228] = address(ext_call.return_data[0])
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call address(ext_call.return_data[0]) with:
                                                           value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                            mem[96] = ext_call.return_data[96]
                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                            mem[128] = ext_call.return_data[96]
                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                            s = ext_call.return_data[64]
                                            s = ext_call.return_data[32]
                                            s = ext_call.return_data[0]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0xfdedd49b with:
                                             gas gas_remaining wei
                                            args arg1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0x77e30167 with:
                                             gas gas_remaining wei
                                            args arg1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0xbe346fc8 with:
                                             gas gas_remaining wei
                                            args arg1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] >= 2:
                                            if ext_call.return_data[128] >= ext_call.return_data[0]:
                                                s = 0
                                                s = 0
                                                s = 0
                                                idx = 0
                                                while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x9ea423a3 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0]
                                                    mem[96 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = 0
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            mem[96] = ext_call.return_data[96]
                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    else:
                                                        if ext_call.return_data[128]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = 0
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    s = ext_call.return_data[64]
                                                    s = ext_call.return_data[32]
                                                    s = ext_call.return_data[0]
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                require ext_call.return_data[128]
                                                s = 0
                                                s = 0
                                                s = 0
                                                idx = 0
                                                while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x9ea423a3 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0]
                                                    mem[96 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[128] = ext_call.return_data[96]
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    else:
                                                        if ext_call.return_data[128]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                else:
                                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[128] = ext_call.return_data[96]
                                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    s = ext_call.return_data[64]
                                                    s = ext_call.return_data[32]
                                                    s = ext_call.return_data[0]
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                if ext_call.return_data[128] >= ext_call.return_data[0]:
                                                    s = 0
                                                    s = 0
                                                    s = 0
                                                    idx = 0
                                                    while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x9ea423a3 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0]
                                                        mem[96 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        if ext_call.return_data[32]:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = 0
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            if ext_call.return_data[128]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = 0
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        s = ext_call.return_data[64]
                                                        s = ext_call.return_data[32]
                                                        s = ext_call.return_data[0]
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    require ext_call.return_data[128]
                                                    s = 0
                                                    s = 0
                                                    s = 0
                                                    idx = 0
                                                    while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x9ea423a3 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0]
                                                        mem[96 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        if ext_call.return_data[32]:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                else:
                                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[128] = ext_call.return_data[96]
                                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            if ext_call.return_data[128]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                        mem[96] = ext_call.return_data[96]
                                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    else:
                                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                        mem[128] = ext_call.return_data[96]
                                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        s = ext_call.return_data[64]
                                                        s = ext_call.return_data[32]
                                                        s = ext_call.return_data[0]
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                require ext_call.return_data[128]
                                                if ext_call.return_data[128] < ext_call.return_data[0]:
                                                    s = 0
                                                    s = 0
                                                    s = 0
                                                    idx = 0
                                                    while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x9ea423a3 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0]
                                                        mem[96 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        if ext_call.return_data[32]:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                else:
                                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[128] = ext_call.return_data[96]
                                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            if ext_call.return_data[128]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                        mem[96] = ext_call.return_data[96]
                                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    else:
                                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                        mem[128] = ext_call.return_data[96]
                                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        s = ext_call.return_data[64]
                                                        s = ext_call.return_data[32]
                                                        s = ext_call.return_data[0]
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    s = 0
                                                    s = 0
                                                    idx = 0
                                                    while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x9ea423a3 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0]
                                                        mem[96 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        if ext_call.return_data[32]:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                else:
                                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                    mem[128] = ext_call.return_data[96]
                                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            if ext_call.return_data[128]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                                        mem[96] = ext_call.return_data[96]
                                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    else:
                                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                        mem[128] = ext_call.return_data[96]
                                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        s = ext_call.return_data[64]
                                                        s = ext_call.return_data[32]
                                                        s = ext_call.return_data[0]
                                                        idx = idx + 1
                                                        continue 
                                emit 0x388ebf61: ext_call.return_data[192], ext_call.return_data[192], arg1, ext_call.return_data[0]
                            else:
                                if ext_call.return_data[128] <= 0:
                                    s = 0
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while uint8(idx) < 5:
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0x9ea423a3 with:
                                             gas gas_remaining wei
                                            args arg1, ext_call.return_data[0]
                                        mem[96 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[64]:
                                                if not ext_call.return_data[32]:
                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = address(ext_call.return_data[0])
                                                    require ext_code.size(configAddress)
                                                    call configAddress.0xe141f10f with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[100] = arg1
                                                mem[132] = ext_call.return_data[0]
                                                mem[164] = 0
                                                mem[196] = 1
                                                mem[228] = address(ext_call.return_data[0])
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0x6fe4a6f8 with:
                                                     gas gas_remaining wei
                                                    args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[96] wei
                                                     gas 2300 * is_zero(value) wei
                                                mem[96] = ext_call.return_data[96]
                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                        else:
                                            if ext_call.return_data[128]:
                                                if not ext_call.return_data[32]:
                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = address(ext_call.return_data[0])
                                                    require ext_code.size(configAddress)
                                                    call configAddress.0xe141f10f with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if ext_call.return_data[64]:
                                                    if not ext_call.return_data[32]:
                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = address(ext_call.return_data[0])
                                                        require ext_code.size(configAddress)
                                                        call configAddress.0xe141f10f with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = 0
                                                    mem[196] = 1
                                                    mem[228] = address(ext_call.return_data[0])
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x6fe4a6f8 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call address(ext_call.return_data[0]) with:
                                                       value ext_call.return_data[96] wei
                                                         gas 2300 * is_zero(value) wei
                                                    mem[96] = ext_call.return_data[96]
                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                        s = ext_call.return_data[64]
                                        s = ext_call.return_data[32]
                                        s = ext_call.return_data[0]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if ext_call.return_data[32]:
                                        require ext_call.return_data[128]
                                        s = 0
                                        s = 0
                                        s = 0
                                        idx = 0
                                        while uint8(idx) < 5:
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0x9ea423a3 with:
                                                 gas gas_remaining wei
                                                args arg1, ext_call.return_data[0]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[64]:
                                                    if not ext_call.return_data[32]:
                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = address(ext_call.return_data[0])
                                                        require ext_code.size(configAddress)
                                                        call configAddress.0xe141f10f with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                    mem[196] = 1
                                                    mem[228] = address(ext_call.return_data[0])
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x6fe4a6f8 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call address(ext_call.return_data[0]) with:
                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                        mem[96] = ext_call.return_data[96]
                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    else:
                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                        mem[128] = ext_call.return_data[96]
                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                            else:
                                                if ext_call.return_data[128]:
                                                    if not ext_call.return_data[32]:
                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = address(ext_call.return_data[0])
                                                        require ext_code.size(configAddress)
                                                        call configAddress.0xe141f10f with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if ext_call.return_data[64]:
                                                        if not ext_call.return_data[32]:
                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = address(ext_call.return_data[0])
                                                            require ext_code.size(configAddress)
                                                            call configAddress.0xe141f10f with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                        mem[196] = 1
                                                        mem[228] = address(ext_call.return_data[0])
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call address(ext_call.return_data[0]) with:
                                                           value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                            mem[96] = ext_call.return_data[96]
                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                            mem[128] = ext_call.return_data[96]
                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                            s = ext_call.return_data[64]
                                            s = ext_call.return_data[32]
                                            s = ext_call.return_data[0]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0xfdedd49b with:
                                             gas gas_remaining wei
                                            args arg1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0x77e30167 with:
                                             gas gas_remaining wei
                                            args arg1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0xbe346fc8 with:
                                             gas gas_remaining wei
                                            args arg1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] >= 2:
                                            if ext_call.return_data[128] >= ext_call.return_data[0]:
                                                s = 0
                                                s = 0
                                                s = 0
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x9ea423a3 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0]
                                                    mem[96 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = 0
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            mem[96] = ext_call.return_data[96]
                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    else:
                                                        if ext_call.return_data[128]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = 0
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    s = ext_call.return_data[64]
                                                    s = ext_call.return_data[32]
                                                    s = ext_call.return_data[0]
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                require ext_call.return_data[128]
                                                s = 0
                                                s = 0
                                                s = 0
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x9ea423a3 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0]
                                                    mem[96 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[128] = ext_call.return_data[96]
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    else:
                                                        if ext_call.return_data[128]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                else:
                                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[128] = ext_call.return_data[96]
                                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                    s = ext_call.return_data[64]
                                                    s = ext_call.return_data[32]
                                                    s = ext_call.return_data[0]
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                if ext_call.return_data[128] >= ext_call.return_data[0]:
                                                    s = 0
                                                    s = 0
                                                    s = 0
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x9ea423a3 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0]
                                                        mem[96 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        if ext_call.return_data[32]:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = 0
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            if ext_call.return_data[128]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = 0
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        s = ext_call.return_data[64]
                                                        s = ext_call.return_data[32]
                                                        s = ext_call.return_data[0]
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    require ext_call.return_data[128]
                                                    s = 0
                                                    s = 0
                                                    s = 0
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x9ea423a3 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0]
                                                        mem[96 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        if ext_call.return_data[32]:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                else:
                                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[128] = ext_call.return_data[96]
                                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            if ext_call.return_data[128]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                        mem[96] = ext_call.return_data[96]
                                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    else:
                                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                        mem[128] = ext_call.return_data[96]
                                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        s = ext_call.return_data[64]
                                                        s = ext_call.return_data[32]
                                                        s = ext_call.return_data[0]
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                require ext_call.return_data[128]
                                                if ext_call.return_data[128] < ext_call.return_data[0]:
                                                    s = 0
                                                    s = 0
                                                    s = 0
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x9ea423a3 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0]
                                                        mem[96 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        if ext_call.return_data[32]:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                else:
                                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[128] = ext_call.return_data[96]
                                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            if ext_call.return_data[128]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                        mem[96] = ext_call.return_data[96]
                                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    else:
                                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                        mem[128] = ext_call.return_data[96]
                                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        s = ext_call.return_data[64]
                                                        s = ext_call.return_data[32]
                                                        s = ext_call.return_data[0]
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    s = 0
                                                    s = 0
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x9ea423a3 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0]
                                                        mem[96 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        if ext_call.return_data[32]:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                else:
                                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                    mem[128] = ext_call.return_data[96]
                                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            if ext_call.return_data[128]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                                        mem[96] = ext_call.return_data[96]
                                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    else:
                                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                        mem[128] = ext_call.return_data[96]
                                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        s = ext_call.return_data[64]
                                                        s = ext_call.return_data[32]
                                                        s = ext_call.return_data[0]
                                                        idx = idx + 1
                                                        continue 
                                emit 0x388ebf61: ext_call.return_data[160] + 5, ext_call.return_data[192], arg1, ext_call.return_data[0]
                else:
                    if 4 == ext_call.return_data[0]:
                        require ext_code.size(DBAddress)
                        call DBAddress.0x6a9477d0 with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 224
                        require block.number >= ext_call.return_data[32] + ext_call.return_data[64]
                        require ext_call.return_data[32]
                        require ext_call.return_data[64]
                        if ext_call.return_data[192]:
                            require ext_code.size(DBAddress)
                            call DBAddress.0x7955b450 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[192] <= ext_call.return_data[160]:
                                if ext_call.return_data[128] > 0:
                                    if ext_call.return_data[32]:
                                        require ext_call.return_data[128]
                                    else:
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0xfdedd49b with:
                                             gas gas_remaining wei
                                            args arg1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0x77e30167 with:
                                             gas gas_remaining wei
                                            args arg1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0xbe346fc8 with:
                                             gas gas_remaining wei
                                            args arg1, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] >= 2:
                                            if ext_call.return_data[128] < ext_call.return_data[0]:
                                                require ext_call.return_data[128]
                                        else:
                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                if ext_call.return_data[128] < ext_call.return_data[0]:
                                                    require ext_call.return_data[128]
                                            else:
                                                require ext_call.return_data[128]
                                emit 0x388ebf61: ext_call.return_data[160], ext_call.return_data[192], arg1, ext_call.return_data[0]
                            else:
                                if ext_call.return_data[192] - ext_call.return_data[160] <= 5:
                                    if ext_call.return_data[128] <= 0:
                                        s = 0
                                        s = 0
                                        s = 0
                                        idx = 0
                                        while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0x9ea423a3 with:
                                                 gas gas_remaining wei
                                                args arg1, ext_call.return_data[0]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[64]:
                                                    if not ext_call.return_data[32]:
                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = address(ext_call.return_data[0])
                                                        require ext_code.size(configAddress)
                                                        call configAddress.0xe141f10f with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = 0
                                                    mem[196] = 1
                                                    mem[228] = address(ext_call.return_data[0])
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x6fe4a6f8 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call address(ext_call.return_data[0]) with:
                                                       value ext_call.return_data[96] wei
                                                         gas 2300 * is_zero(value) wei
                                                    mem[96] = ext_call.return_data[96]
                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                            else:
                                                if ext_call.return_data[128]:
                                                    if not ext_call.return_data[32]:
                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = address(ext_call.return_data[0])
                                                        require ext_code.size(configAddress)
                                                        call configAddress.0xe141f10f with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if ext_call.return_data[64]:
                                                        if not ext_call.return_data[32]:
                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = address(ext_call.return_data[0])
                                                            require ext_code.size(configAddress)
                                                            call configAddress.0xe141f10f with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = 0
                                                        mem[196] = 1
                                                        mem[228] = address(ext_call.return_data[0])
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call address(ext_call.return_data[0]) with:
                                                           value ext_call.return_data[96] wei
                                                             gas 2300 * is_zero(value) wei
                                                        mem[96] = ext_call.return_data[96]
                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                            s = ext_call.return_data[64]
                                            s = ext_call.return_data[32]
                                            s = ext_call.return_data[0]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if ext_call.return_data[32]:
                                            require ext_call.return_data[128]
                                            s = 0
                                            s = 0
                                            s = 0
                                            idx = 0
                                            while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0x9ea423a3 with:
                                                     gas gas_remaining wei
                                                    args arg1, ext_call.return_data[0]
                                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    if ext_call.return_data[64]:
                                                        if not ext_call.return_data[32]:
                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = address(ext_call.return_data[0])
                                                            require ext_code.size(configAddress)
                                                            call configAddress.0xe141f10f with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                        mem[196] = 1
                                                        mem[228] = address(ext_call.return_data[0])
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call address(ext_call.return_data[0]) with:
                                                           value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                            mem[96] = ext_call.return_data[96]
                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                            mem[128] = ext_call.return_data[96]
                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                else:
                                                    if ext_call.return_data[128]:
                                                        if not ext_call.return_data[32]:
                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = address(ext_call.return_data[0])
                                                            require ext_code.size(configAddress)
                                                            call configAddress.0xe141f10f with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                mem[128] = ext_call.return_data[96]
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                s = ext_call.return_data[64]
                                                s = ext_call.return_data[32]
                                                s = ext_call.return_data[0]
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0xfdedd49b with:
                                                 gas gas_remaining wei
                                                args arg1, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0x77e30167 with:
                                                 gas gas_remaining wei
                                                args arg1, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0xbe346fc8 with:
                                                 gas gas_remaining wei
                                                args arg1, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] >= 2:
                                                if ext_call.return_data[128] >= ext_call.return_data[0]:
                                                    s = 0
                                                    s = 0
                                                    s = 0
                                                    idx = 0
                                                    while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x9ea423a3 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0]
                                                        mem[96 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        if ext_call.return_data[32]:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = 0
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            if ext_call.return_data[128]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = 0
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        s = ext_call.return_data[64]
                                                        s = ext_call.return_data[32]
                                                        s = ext_call.return_data[0]
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    require ext_call.return_data[128]
                                                    s = 0
                                                    s = 0
                                                    s = 0
                                                    idx = 0
                                                    while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x9ea423a3 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0]
                                                        mem[96 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        if ext_call.return_data[32]:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                else:
                                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[128] = ext_call.return_data[96]
                                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            if ext_call.return_data[128]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                        mem[96] = ext_call.return_data[96]
                                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    else:
                                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                        mem[128] = ext_call.return_data[96]
                                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        s = ext_call.return_data[64]
                                                        s = ext_call.return_data[32]
                                                        s = ext_call.return_data[0]
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                                    if ext_call.return_data[128] >= ext_call.return_data[0]:
                                                        s = 0
                                                        s = 0
                                                        s = 0
                                                        idx = 0
                                                        while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x9ea423a3 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0]
                                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            if ext_call.return_data[32]:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = 0
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                if ext_call.return_data[128]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if ext_call.return_data[64]:
                                                                        if not ext_call.return_data[32]:
                                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                            mem[100] = arg1
                                                                            mem[132] = ext_call.return_data[0]
                                                                            mem[164] = address(ext_call.return_data[0])
                                                                            require ext_code.size(configAddress)
                                                                            call configAddress.0xe141f10f with:
                                                                                 gas gas_remaining wei
                                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = 0
                                                                        mem[196] = 1
                                                                        mem[228] = address(ext_call.return_data[0])
                                                                        require ext_code.size(DBAddress)
                                                                        call DBAddress.0x6fe4a6f8 with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        call address(ext_call.return_data[0]) with:
                                                                           value ext_call.return_data[96] wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        mem[96] = ext_call.return_data[96]
                                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            s = ext_call.return_data[64]
                                                            s = ext_call.return_data[32]
                                                            s = ext_call.return_data[0]
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        require ext_call.return_data[128]
                                                        s = 0
                                                        s = 0
                                                        s = 0
                                                        idx = 0
                                                        while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x9ea423a3 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0]
                                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            if ext_call.return_data[32]:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                        mem[96] = ext_call.return_data[96]
                                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    else:
                                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                        mem[128] = ext_call.return_data[96]
                                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                if ext_call.return_data[128]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if ext_call.return_data[64]:
                                                                        if not ext_call.return_data[32]:
                                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                            mem[100] = arg1
                                                                            mem[132] = ext_call.return_data[0]
                                                                            mem[164] = address(ext_call.return_data[0])
                                                                            require ext_code.size(configAddress)
                                                                            call configAddress.0xe141f10f with:
                                                                                 gas gas_remaining wei
                                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                        mem[196] = 1
                                                                        mem[228] = address(ext_call.return_data[0])
                                                                        require ext_code.size(DBAddress)
                                                                        call DBAddress.0x6fe4a6f8 with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        call address(ext_call.return_data[0]) with:
                                                                           value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                            mem[96] = ext_call.return_data[96]
                                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        else:
                                                                            mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                            mem[128] = ext_call.return_data[96]
                                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            s = ext_call.return_data[64]
                                                            s = ext_call.return_data[32]
                                                            s = ext_call.return_data[0]
                                                            idx = idx + 1
                                                            continue 
                                                else:
                                                    require ext_call.return_data[128]
                                                    if ext_call.return_data[128] < ext_call.return_data[0]:
                                                        s = 0
                                                        s = 0
                                                        s = 0
                                                        idx = 0
                                                        while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x9ea423a3 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0]
                                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            if ext_call.return_data[32]:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                        mem[96] = ext_call.return_data[96]
                                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    else:
                                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                        mem[128] = ext_call.return_data[96]
                                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                if ext_call.return_data[128]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if ext_call.return_data[64]:
                                                                        if not ext_call.return_data[32]:
                                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                            mem[100] = arg1
                                                                            mem[132] = ext_call.return_data[0]
                                                                            mem[164] = address(ext_call.return_data[0])
                                                                            require ext_code.size(configAddress)
                                                                            call configAddress.0xe141f10f with:
                                                                                 gas gas_remaining wei
                                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                        mem[196] = 1
                                                                        mem[228] = address(ext_call.return_data[0])
                                                                        require ext_code.size(DBAddress)
                                                                        call DBAddress.0x6fe4a6f8 with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        call address(ext_call.return_data[0]) with:
                                                                           value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                            mem[96] = ext_call.return_data[96]
                                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        else:
                                                                            mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                            mem[128] = ext_call.return_data[96]
                                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            s = ext_call.return_data[64]
                                                            s = ext_call.return_data[32]
                                                            s = ext_call.return_data[0]
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = 0
                                                        s = 0
                                                        s = 0
                                                        idx = 0
                                                        while uint8(idx) < ext_call.return_data[192] - ext_call.return_data[160]:
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x9ea423a3 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0]
                                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            if ext_call.return_data[32]:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                                        mem[96] = ext_call.return_data[96]
                                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    else:
                                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                        mem[128] = ext_call.return_data[96]
                                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                if ext_call.return_data[128]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if ext_call.return_data[64]:
                                                                        if not ext_call.return_data[32]:
                                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                            mem[100] = arg1
                                                                            mem[132] = ext_call.return_data[0]
                                                                            mem[164] = address(ext_call.return_data[0])
                                                                            require ext_code.size(configAddress)
                                                                            call configAddress.0xe141f10f with:
                                                                                 gas gas_remaining wei
                                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                        mem[196] = 1
                                                                        mem[228] = address(ext_call.return_data[0])
                                                                        require ext_code.size(DBAddress)
                                                                        call DBAddress.0x6fe4a6f8 with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        call address(ext_call.return_data[0]) with:
                                                                           value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                                            mem[96] = ext_call.return_data[96]
                                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        else:
                                                                            mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                            mem[128] = ext_call.return_data[96]
                                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            s = ext_call.return_data[64]
                                                            s = ext_call.return_data[32]
                                                            s = ext_call.return_data[0]
                                                            idx = idx + 1
                                                            continue 
                                    emit 0x388ebf61: ext_call.return_data[192], ext_call.return_data[192], arg1, ext_call.return_data[0]
                                else:
                                    if ext_call.return_data[128] <= 0:
                                        s = 0
                                        s = 0
                                        s = 0
                                        idx = 0
                                        while uint8(idx) < 5:
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0x9ea423a3 with:
                                                 gas gas_remaining wei
                                                args arg1, ext_call.return_data[0]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[64]:
                                                    if not ext_call.return_data[32]:
                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = address(ext_call.return_data[0])
                                                        require ext_code.size(configAddress)
                                                        call configAddress.0xe141f10f with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[100] = arg1
                                                    mem[132] = ext_call.return_data[0]
                                                    mem[164] = 0
                                                    mem[196] = 1
                                                    mem[228] = address(ext_call.return_data[0])
                                                    require ext_code.size(DBAddress)
                                                    call DBAddress.0x6fe4a6f8 with:
                                                         gas gas_remaining wei
                                                        args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call address(ext_call.return_data[0]) with:
                                                       value ext_call.return_data[96] wei
                                                         gas 2300 * is_zero(value) wei
                                                    mem[96] = ext_call.return_data[96]
                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                            else:
                                                if ext_call.return_data[128]:
                                                    if not ext_call.return_data[32]:
                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = address(ext_call.return_data[0])
                                                        require ext_code.size(configAddress)
                                                        call configAddress.0xe141f10f with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if ext_call.return_data[64]:
                                                        if not ext_call.return_data[32]:
                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = address(ext_call.return_data[0])
                                                            require ext_code.size(configAddress)
                                                            call configAddress.0xe141f10f with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = 0
                                                        mem[196] = 1
                                                        mem[228] = address(ext_call.return_data[0])
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call address(ext_call.return_data[0]) with:
                                                           value ext_call.return_data[96] wei
                                                             gas 2300 * is_zero(value) wei
                                                        mem[96] = ext_call.return_data[96]
                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                            s = ext_call.return_data[64]
                                            s = ext_call.return_data[32]
                                            s = ext_call.return_data[0]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if ext_call.return_data[32]:
                                            require ext_call.return_data[128]
                                            s = 0
                                            s = 0
                                            s = 0
                                            idx = 0
                                            while uint8(idx) < 5:
                                                require ext_code.size(DBAddress)
                                                call DBAddress.0x9ea423a3 with:
                                                     gas gas_remaining wei
                                                    args arg1, ext_call.return_data[0]
                                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    if ext_call.return_data[64]:
                                                        if not ext_call.return_data[32]:
                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = address(ext_call.return_data[0])
                                                            require ext_code.size(configAddress)
                                                            call configAddress.0xe141f10f with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[100] = arg1
                                                        mem[132] = ext_call.return_data[0]
                                                        mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                        mem[196] = 1
                                                        mem[228] = address(ext_call.return_data[0])
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x6fe4a6f8 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call address(ext_call.return_data[0]) with:
                                                           value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                            mem[96] = ext_call.return_data[96]
                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                            mem[128] = ext_call.return_data[96]
                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                else:
                                                    if ext_call.return_data[128]:
                                                        if not ext_call.return_data[32]:
                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = address(ext_call.return_data[0])
                                                            require ext_code.size(configAddress)
                                                            call configAddress.0xe141f10f with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if ext_call.return_data[64]:
                                                            if not ext_call.return_data[32]:
                                                                mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = address(ext_call.return_data[0])
                                                                require ext_code.size(configAddress)
                                                                call configAddress.0xe141f10f with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[100] = arg1
                                                            mem[132] = ext_call.return_data[0]
                                                            mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                            mem[196] = 1
                                                            mem[228] = address(ext_call.return_data[0])
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x6fe4a6f8 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                mem[128] = ext_call.return_data[96]
                                                                emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                s = ext_call.return_data[64]
                                                s = ext_call.return_data[32]
                                                s = ext_call.return_data[0]
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0xfdedd49b with:
                                                 gas gas_remaining wei
                                                args arg1, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0x77e30167 with:
                                                 gas gas_remaining wei
                                                args arg1, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(DBAddress)
                                            call DBAddress.0xbe346fc8 with:
                                                 gas gas_remaining wei
                                                args arg1, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] >= 2:
                                                if ext_call.return_data[128] >= ext_call.return_data[0]:
                                                    s = 0
                                                    s = 0
                                                    s = 0
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x9ea423a3 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0]
                                                        mem[96 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        if ext_call.return_data[32]:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = 0
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                mem[96] = ext_call.return_data[96]
                                                                emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            if ext_call.return_data[128]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = 0
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        s = ext_call.return_data[64]
                                                        s = ext_call.return_data[32]
                                                        s = ext_call.return_data[0]
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    require ext_call.return_data[128]
                                                    s = 0
                                                    s = 0
                                                    s = 0
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        require ext_code.size(DBAddress)
                                                        call DBAddress.0x9ea423a3 with:
                                                             gas gas_remaining wei
                                                            args arg1, ext_call.return_data[0]
                                                        mem[96 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        if ext_call.return_data[32]:
                                                            if ext_call.return_data[64]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[100] = arg1
                                                                mem[132] = ext_call.return_data[0]
                                                                mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                mem[196] = 1
                                                                mem[228] = address(ext_call.return_data[0])
                                                                require ext_code.size(DBAddress)
                                                                call DBAddress.0x6fe4a6f8 with:
                                                                     gas gas_remaining wei
                                                                    args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                else:
                                                                    mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[128] = ext_call.return_data[96]
                                                                    emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        else:
                                                            if ext_call.return_data[128]:
                                                                if not ext_call.return_data[32]:
                                                                    mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = address(ext_call.return_data[0])
                                                                    require ext_code.size(configAddress)
                                                                    call configAddress.0xe141f10f with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                        mem[96] = ext_call.return_data[96]
                                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    else:
                                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                        mem[128] = ext_call.return_data[96]
                                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                        s = ext_call.return_data[64]
                                                        s = ext_call.return_data[32]
                                                        s = ext_call.return_data[0]
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                                    if ext_call.return_data[128] >= ext_call.return_data[0]:
                                                        s = 0
                                                        s = 0
                                                        s = 0
                                                        idx = 0
                                                        while uint8(idx) < 5:
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x9ea423a3 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0]
                                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            if ext_call.return_data[32]:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = 0
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    mem[96] = ext_call.return_data[96]
                                                                    emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                if ext_call.return_data[128]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if ext_call.return_data[64]:
                                                                        if not ext_call.return_data[32]:
                                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                            mem[100] = arg1
                                                                            mem[132] = ext_call.return_data[0]
                                                                            mem[164] = address(ext_call.return_data[0])
                                                                            require ext_code.size(configAddress)
                                                                            call configAddress.0xe141f10f with:
                                                                                 gas gas_remaining wei
                                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = 0
                                                                        mem[196] = 1
                                                                        mem[228] = address(ext_call.return_data[0])
                                                                        require ext_code.size(DBAddress)
                                                                        call DBAddress.0x6fe4a6f8 with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], 0, 1, address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        call address(ext_call.return_data[0]) with:
                                                                           value ext_call.return_data[96] wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        mem[96] = ext_call.return_data[96]
                                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            s = ext_call.return_data[64]
                                                            s = ext_call.return_data[32]
                                                            s = ext_call.return_data[0]
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        require ext_call.return_data[128]
                                                        s = 0
                                                        s = 0
                                                        s = 0
                                                        idx = 0
                                                        while uint8(idx) < 5:
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x9ea423a3 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0]
                                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            if ext_call.return_data[32]:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                        mem[96] = ext_call.return_data[96]
                                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    else:
                                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                        mem[128] = ext_call.return_data[96]
                                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                if ext_call.return_data[128]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if ext_call.return_data[64]:
                                                                        if not ext_call.return_data[32]:
                                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                            mem[100] = arg1
                                                                            mem[132] = ext_call.return_data[0]
                                                                            mem[164] = address(ext_call.return_data[0])
                                                                            require ext_code.size(configAddress)
                                                                            call configAddress.0xe141f10f with:
                                                                                 gas gas_remaining wei
                                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                        mem[196] = 1
                                                                        mem[228] = address(ext_call.return_data[0])
                                                                        require ext_code.size(DBAddress)
                                                                        call DBAddress.0x6fe4a6f8 with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        call address(ext_call.return_data[0]) with:
                                                                           value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                            mem[96] = ext_call.return_data[96]
                                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        else:
                                                                            mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                            mem[128] = ext_call.return_data[96]
                                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            s = ext_call.return_data[64]
                                                            s = ext_call.return_data[32]
                                                            s = ext_call.return_data[0]
                                                            idx = idx + 1
                                                            continue 
                                                else:
                                                    require ext_call.return_data[128]
                                                    if ext_call.return_data[128] < ext_call.return_data[0]:
                                                        s = 0
                                                        s = 0
                                                        s = 0
                                                        idx = 0
                                                        while uint8(idx) < 5:
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x9ea423a3 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0]
                                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            if ext_call.return_data[32]:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                        mem[96] = ext_call.return_data[96]
                                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    else:
                                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                        mem[128] = ext_call.return_data[96]
                                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                if ext_call.return_data[128]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if ext_call.return_data[64]:
                                                                        if not ext_call.return_data[32]:
                                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                            mem[100] = arg1
                                                                            mem[132] = ext_call.return_data[0]
                                                                            mem[164] = address(ext_call.return_data[0])
                                                                            require ext_code.size(configAddress)
                                                                            call configAddress.0xe141f10f with:
                                                                                 gas gas_remaining wei
                                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                        mem[196] = 1
                                                                        mem[228] = address(ext_call.return_data[0])
                                                                        require ext_code.size(DBAddress)
                                                                        call DBAddress.0x6fe4a6f8 with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        call address(ext_call.return_data[0]) with:
                                                                           value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]) wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]:
                                                                            mem[96] = ext_call.return_data[96]
                                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        else:
                                                                            mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128]
                                                                            mem[128] = ext_call.return_data[96]
                                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            s = ext_call.return_data[64]
                                                            s = ext_call.return_data[32]
                                                            s = ext_call.return_data[0]
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = 0
                                                        s = 0
                                                        s = 0
                                                        idx = 0
                                                        while uint8(idx) < 5:
                                                            require ext_code.size(DBAddress)
                                                            call DBAddress.0x9ea423a3 with:
                                                                 gas gas_remaining wei
                                                                args arg1, ext_call.return_data[0]
                                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            if ext_call.return_data[32]:
                                                                if ext_call.return_data[64]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    mem[100] = arg1
                                                                    mem[132] = ext_call.return_data[0]
                                                                    mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                    mem[196] = 1
                                                                    mem[228] = address(ext_call.return_data[0])
                                                                    require ext_code.size(DBAddress)
                                                                    call DBAddress.0x6fe4a6f8 with:
                                                                         gas gas_remaining wei
                                                                        args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(ext_call.return_data[0]) with:
                                                                       value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                                        mem[96] = ext_call.return_data[96]
                                                                        emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                    else:
                                                                        mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                        mem[128] = ext_call.return_data[96]
                                                                        emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            else:
                                                                if ext_call.return_data[128]:
                                                                    if not ext_call.return_data[32]:
                                                                        mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = address(ext_call.return_data[0])
                                                                        require ext_code.size(configAddress)
                                                                        call configAddress.0xe141f10f with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if ext_call.return_data[64]:
                                                                        if not ext_call.return_data[32]:
                                                                            mem[96] = 0xe141f10f00000000000000000000000000000000000000000000000000000000
                                                                            mem[100] = arg1
                                                                            mem[132] = ext_call.return_data[0]
                                                                            mem[164] = address(ext_call.return_data[0])
                                                                            require ext_code.size(configAddress)
                                                                            call configAddress.0xe141f10f with:
                                                                                 gas gas_remaining wei
                                                                                args arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[100] = arg1
                                                                        mem[132] = ext_call.return_data[0]
                                                                        mem[164] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                        mem[196] = 1
                                                                        mem[228] = address(ext_call.return_data[0])
                                                                        require ext_code.size(DBAddress)
                                                                        call DBAddress.0x6fe4a6f8 with:
                                                                             gas gas_remaining wei
                                                                            args arg1, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], 1, address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        call address(ext_call.return_data[0]) with:
                                                                           value ext_call.return_data[96] + ((ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]) wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]:
                                                                            mem[96] = ext_call.return_data[96]
                                                                            emit 0xedbaae4d: ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                                        else:
                                                                            mem[96] = (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128]
                                                                            mem[128] = ext_call.return_data[96]
                                                                            emit 0x9f15a691: (ext_call.return_data[0] * ext_call.return_data[96]) - (ext_call.return_data[128] * ext_call.return_data[96]) + stor2[arg1].field_1024 / ext_call.return_data[128], ext_call.return_data[96], arg1, ext_call.return_data[0], address(ext_call.return_data[0])
                                                            s = ext_call.return_data[64]
                                                            s = ext_call.return_data[32]
                                                            s = ext_call.return_data[0]
                                                            idx = idx + 1
                                                            continue 
                                    emit 0x388ebf61: ext_call.return_data[160] + 5, ext_call.return_data[192], arg1, ext_call.return_data[0]
}



}
