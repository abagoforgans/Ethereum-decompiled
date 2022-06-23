contract main {




// =====================  Runtime code  =====================


address owner;
address adminAddress;
address configAddress;
address DBAddress;

function DB() {
    return DBAddress
}

function owner() {
    return owner
}

function adminAddress() {
    return adminAddress
}

function Config() {
    return configAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setConfig(address arg1, address arg2, address arg3) {
    require ext_code.size(configAddress)
    call configAddress.0x5f9fa9d0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    configAddress = arg1
    DBAddress = arg2
    adminAddress = arg3
}

function getRandom(uint256 arg1) {
    require ext_code.size(DBAddress)
    call DBAddress.0xcd4b6914 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require block.number >= ext_call.return_data[32] + ext_call.return_data[64]
    require ext_call.return_data[32]
    require ext_call.return_data[64]
    if bool(ext_call.return_data[0]) != 1:
        return 0
    return ext_call.return_data[96]
}

function commit(uint256 arg1, bytes32 arg2) payable {
    require ext_code.size(configAddress)
    call configAddress.0x50c20810 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(configAddress)
    call configAddress.0xc6fa28 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddress)
    call configAddress.0xf2a0f30f with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < ext_call.return_data[0]
    require arg2
    require ext_code.size(DBAddress)
    call DBAddress.0x5e966049 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(DBAddress)
    call DBAddress.0xcb9108b4 with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    require ext_call.return_data[32]
    require ext_code.size(DBAddress)
    call DBAddress.0xf58a9fd7 with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == msg.value
    require block.number >= ext_call.return_data[32]
    require block.number < ext_call.return_data[64] + ext_call.return_data[32]
    require ext_call.return_data[32]
    require ext_call.return_data[64]
    require not ext_call.return_data[96]
    call adminAddress with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit 0xd5c6ee14: 0, arg1, ext_call.return_data[0]
    else:
        require ext_code.size(DBAddress)
        call DBAddress.0xb7bd273f with:
             gas gas_remaining wei
            args 0, uint32(arg1), ext_call.return_data[0], arg2, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xd5c6ee14: arg2, arg1, ext_call.return_data[0]
}

function reveal(uint256 arg1, uint256 arg2) {
    require ext_code.size(DBAddress)
    call DBAddress.0x31ca9806 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    if not ext_call.return_data[0]:
        if block.number >= ext_call.return_data[32] + ext_call.return_data[64]:
            if block.number < ext_call.return_data[96] + ext_call.return_data[32]:
                if ext_call.return_data[32]:
                    if ext_call.return_data[64]:
                        if ext_call.return_data[96]:
                            require ext_code.size(DBAddress)
                            call DBAddress.0x9ab40d88 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[192], msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] == sha3(arg2):
                                require ext_code.size(DBAddress)
                                if ext_call.return_data[128] < ext_call.return_data[160]:
                                    call DBAddress.0x82da40f with:
                                         gas gas_remaining wei
                                        args arg1, ext_call.return_data[192], 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call DBAddress.0x38d4a611 with:
                                         gas gas_remaining wei
                                        args arg1, ext_call.return_data[192], msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(DBAddress)
                                        call DBAddress.0x591e73f7 with:
                                             gas gas_remaining wei
                                            args 0, uint32(arg1), ext_call.return_data[192], arg2, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0x2c07d17c: arg2, arg1, ext_call.return_data[192]
}



}
