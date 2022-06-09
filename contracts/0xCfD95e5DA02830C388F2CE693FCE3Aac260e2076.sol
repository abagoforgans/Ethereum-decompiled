contract main {




// =====================  Runtime code  =====================


address owner;
address sub_6e5ec052Address;
address sub_4ae19bb7Address;
address sub_5000596bAddress;
address sub_dbc97382Address;
uint256 sub_ec83ae62;

function sub_4ae19bb7(?) payable {
    return sub_4ae19bb7Address
}

function sub_5000596b(?) payable {
    return sub_5000596bAddress
}

function sub_6e5ec052(?) payable {
    return sub_6e5ec052Address
}

function owner() payable {
    return owner
}

function sub_dbc97382(?) payable {
    return sub_dbc97382Address
}

function sub_ec83ae62(?) payable {
    return sub_ec83ae62
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function sub_c72e06b7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 18, 0xfe596f7520617265206e6f74206f776e65722e00000000000000000000000000
    sub_ec83ae62 = arg1
}

function sub_104f1f66(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 18, 0xfe596f7520617265206e6f74206f776e65722e00000000000000000000000000
    sub_6e5ec052Address = arg1
}

function sub_906791aa(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 18, 0xfe596f7520617265206e6f74206f776e65722e00000000000000000000000000
    sub_dbc97382Address = arg1
}

function sub_ef5e87d6(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 18, 0xfe596f7520617265206e6f74206f776e65722e00000000000000000000000000
    sub_4ae19bb7Address = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 18, 0xfe596f7520617265206e6f74206f776e65722e00000000000000000000000000
    owner = 0
    emit OwnershipRenounced(address arg1)
    emit 0x0 
}

function setUserContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 18, 0xfe596f7520617265206e6f74206f776e65722e00000000000000000000000000
    sub_5000596bAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 18, 0xfe596f7520617265206e6f74206f776e65722e00000000000000000000000000
    if not arg1:
        revert with 0, 'Invalid address.'
    owner = arg1
    emit OwnershipTransferred(arg1, arg1);
}

function updateTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 18, 0xfe596f7520617265206e6f74206f776e65722e00000000000000000000000000
    require ext_code.size(sub_dbc97382Address)
    staticcall sub_dbc97382Address.players(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    if ext_call.return_data[0] <= 0:
        if 0 >= block.timestamp:
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0x8456cb59 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbc97382Address)
            staticcall sub_dbc97382Address.0x9a8de65e with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0x1039e9b8 with:
                 gas gas_remaining wei
                args 0, 1, 1, 1, uint8(ext_call.return_data[96]), ext_call.return_data[128] << 248, ext_call.return_data[160] << 248, ext_call.return_data[192] << 248, ext_call.return_data[224] << 248, uint8(ext_call.return_data[256])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0xa59ac6dd with:
                 gas gas_remaining wei
                args msg.sender, arg1 / 60, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0x1039e9b8 with:
                 gas gas_remaining wei
                args 0, 1000, 20, 2000, uint8(ext_call.return_data[96]), ext_call.return_data[128] << 248, ext_call.return_data[160] << 248, ext_call.return_data[192] << 248, ext_call.return_data[224] << 248, uint8(ext_call.return_data[256])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0x3f4ba83a with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(sub_dbc97382Address)
        staticcall sub_dbc97382Address.rounds(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 384
        if ext_call.return_data[192] >= block.timestamp:
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0x8456cb59 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbc97382Address)
            staticcall sub_dbc97382Address.0x9a8de65e with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0x1039e9b8 with:
                 gas gas_remaining wei
                args 0, 1, 1, 1, uint8(ext_call.return_data[96]), ext_call.return_data[128] << 248, ext_call.return_data[160] << 248, ext_call.return_data[192] << 248, ext_call.return_data[224] << 248, uint8(ext_call.return_data[256])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0xa59ac6dd with:
                 gas gas_remaining wei
                args msg.sender, arg1 / 60, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0x1039e9b8 with:
                 gas gas_remaining wei
                args 0, 1000, 20, 2000, uint8(ext_call.return_data[96]), ext_call.return_data[128] << 248, ext_call.return_data[160] << 248, ext_call.return_data[192] << 248, ext_call.return_data[224] << 248, uint8(ext_call.return_data[256])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0x3f4ba83a with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function updateTime() payable {
    if owner != msg.sender:
        revert with 0, 32, 18, 0xfe596f7520617265206e6f74206f776e65722e00000000000000000000000000
    require ext_code.size(sub_dbc97382Address)
    staticcall sub_dbc97382Address.players(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    if ext_call.return_data[0] <= 0:
        if 0 >= block.timestamp:
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0x8456cb59 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbc97382Address)
            staticcall sub_dbc97382Address.0x9a8de65e with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0x1039e9b8 with:
                 gas gas_remaining wei
                args 0, 1, 1, 1, uint8(ext_call.return_data[96]), ext_call.return_data[128] << 248, ext_call.return_data[160] << 248, ext_call.return_data[192] << 248, ext_call.return_data[224] << 248, uint8(ext_call.return_data[256])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if block.timestamp > 0:
                revert with 0, 'SafeMath sub failed.'
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0xa59ac6dd with:
                 gas gas_remaining wei
                args msg.sender, -block.timestamp / 60, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0x1039e9b8 with:
                 gas gas_remaining wei
                args 0, 1000, 20, 2000, uint8(ext_call.return_data[96]), ext_call.return_data[128] << 248, ext_call.return_data[160] << 248, ext_call.return_data[192] << 248, ext_call.return_data[224] << 248, uint8(ext_call.return_data[256])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0x3f4ba83a with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(sub_dbc97382Address)
        staticcall sub_dbc97382Address.rounds(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 384
        if ext_call.return_data[192] >= block.timestamp:
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0x8456cb59 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbc97382Address)
            staticcall sub_dbc97382Address.0x9a8de65e with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0x1039e9b8 with:
                 gas gas_remaining wei
                args 0, 1, 1, 1, uint8(ext_call.return_data[96]), ext_call.return_data[128] << 248, ext_call.return_data[160] << 248, ext_call.return_data[192] << 248, ext_call.return_data[224] << 248, uint8(ext_call.return_data[256])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if block.timestamp > ext_call.return_data[192]:
                revert with 0, 'SafeMath sub failed.'
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0xa59ac6dd with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[192] - block.timestamp / 60, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0x1039e9b8 with:
                 gas gas_remaining wei
                args 0, 1000, 20, 2000, uint8(ext_call.return_data[96]), ext_call.return_data[128] << 248, ext_call.return_data[160] << 248, ext_call.return_data[192] << 248, ext_call.return_data[224] << 248, uint8(ext_call.return_data[256])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0x3f4ba83a with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_dbc97382Address)
    if owner != msg.sender:
        call sub_dbc97382Address.0xa59ac6dd with:
             gas gas_remaining wei
            args msg.sender, arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_dbc97382Address)
        staticcall sub_dbc97382Address.price() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1:
            require ext_code.size(sub_6e5ec052Address)
            call sub_6e5ec052Address.0xbeabacc8 with:
                 gas gas_remaining wei
                args msg.sender, this.address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_5000596bAddress)
            staticcall sub_5000596bAddress.0x77df7725 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_5000596bAddress)
            staticcall sub_5000596bAddress.users(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_code.size(sub_dbc97382Address)
            staticcall sub_dbc97382Address.0x9a8de65e with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            require ext_code.size(sub_5000596bAddress)
            call sub_5000596bAddress.0xd37f82 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[32]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_5000596bAddress)
            call sub_5000596bAddress.0x9cd81504 with:
                 gas gas_remaining wei
                args ext_call.return_data[64], 0
        else:
            if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
                revert with 0, 'SafeMath mul failed.'
            require ext_code.size(sub_6e5ec052Address)
            call sub_6e5ec052Address.0xbeabacc8 with:
                 gas gas_remaining wei
                args msg.sender, this.address, ext_call.return_data[0] * arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_5000596bAddress)
            staticcall sub_5000596bAddress.0x77df7725 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_5000596bAddress)
            staticcall sub_5000596bAddress.users(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_code.size(sub_dbc97382Address)
            staticcall sub_dbc97382Address.0x9a8de65e with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            if not ext_call.return_data[0] * arg1:
                require ext_code.size(sub_5000596bAddress)
                call sub_5000596bAddress.0xd37f82 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[32]), 0
            else:
                if ext_call.return_data[159 len 1] * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg1 != ext_call.return_data[159 len 1]:
                    revert with 0, 'SafeMath mul failed.'
                require ext_code.size(sub_5000596bAddress)
                call sub_5000596bAddress.0xd37f82 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[32]), uint8(ext_call.return_data[128]) * ext_call.return_data[0] * arg1 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0] * arg1:
                require ext_code.size(sub_5000596bAddress)
                call sub_5000596bAddress.0x9cd81504 with:
                     gas gas_remaining wei
                    args ext_call.return_data[64], 0
            else:
                if uint8(ext_call.return_data[96]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg1 != uint8(ext_call.return_data[96]):
                    revert with 0, 'SafeMath mul failed.'
                require ext_code.size(sub_5000596bAddress)
                call sub_5000596bAddress.0x9cd81504 with:
                     gas gas_remaining wei
                    args ext_call.return_data[64], uint8(ext_call.return_data[96]) * ext_call.return_data[0] * arg1 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    staticcall sub_dbc97382Address.players(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    if ext_call.return_data[0] <= 0:
        if block.timestamp > 0:
            revert with 0, 'SafeMath sub failed.'
        if -block.timestamp <= sub_ec83ae62:
            require ext_code.size(sub_dbc97382Address)
            if msg.sender == owner:
                call sub_dbc97382Address.0x8456cb59 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call sub_dbc97382Address.0xa59ac6dd with:
                 gas gas_remaining wei
                args 0xbb00a8d157ed97fa9910ce48d39ae2380b1b1b26, 1, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0xa59ac6dd with:
                 gas gas_remaining wei
                args 0x15f69298b6e43e6dbd22fe9f07b604a54096c107, 1, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if msg.sender == owner:
                if not sub_ec83ae62:
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath sub failed.'
                    if -block.timestamp <= 0:
                        require ext_code.size(sub_dbc97382Address)
                        if msg.sender == owner:
                            call sub_dbc97382Address.0x8456cb59 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call sub_dbc97382Address.0xa59ac6dd with:
                             gas gas_remaining wei
                            args 0xbb00a8d157ed97fa9910ce48d39ae2380b1b1b26, 1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_dbc97382Address)
                        call sub_dbc97382Address.0xa59ac6dd with:
                             gas gas_remaining wei
                            args 0x15f69298b6e43e6dbd22fe9f07b604a54096c107, 1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 10 * sub_ec83ae62 / sub_ec83ae62 != 10:
                        revert with 0, 'SafeMath mul failed.'
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath sub failed.'
                    if -block.timestamp <= 10 * sub_ec83ae62:
                        require ext_code.size(sub_dbc97382Address)
                        if msg.sender == owner:
                            call sub_dbc97382Address.0x8456cb59 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call sub_dbc97382Address.0xa59ac6dd with:
                             gas gas_remaining wei
                            args 0xbb00a8d157ed97fa9910ce48d39ae2380b1b1b26, 1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_dbc97382Address)
                        call sub_dbc97382Address.0xa59ac6dd with:
                             gas gas_remaining wei
                            args 0x15f69298b6e43e6dbd22fe9f07b604a54096c107, 1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(sub_dbc97382Address)
        staticcall sub_dbc97382Address.rounds(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 384
        if block.timestamp > ext_call.return_data[192]:
            revert with 0, 'SafeMath sub failed.'
        if ext_call.return_data[192] - block.timestamp <= sub_ec83ae62:
            require ext_code.size(sub_dbc97382Address)
            if msg.sender == owner:
                call sub_dbc97382Address.0x8456cb59 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call sub_dbc97382Address.0xa59ac6dd with:
                 gas gas_remaining wei
                args 0xbb00a8d157ed97fa9910ce48d39ae2380b1b1b26, 1, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_dbc97382Address)
            call sub_dbc97382Address.0xa59ac6dd with:
                 gas gas_remaining wei
                args 0x15f69298b6e43e6dbd22fe9f07b604a54096c107, 1, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if msg.sender == owner:
                if not sub_ec83ae62:
                    if block.timestamp > ext_call.return_data[192]:
                        revert with 0, 'SafeMath sub failed.'
                    if ext_call.return_data[192] - block.timestamp <= 0:
                        require ext_code.size(sub_dbc97382Address)
                        if msg.sender == owner:
                            call sub_dbc97382Address.0x8456cb59 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call sub_dbc97382Address.0xa59ac6dd with:
                             gas gas_remaining wei
                            args 0xbb00a8d157ed97fa9910ce48d39ae2380b1b1b26, 1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_dbc97382Address)
                        call sub_dbc97382Address.0xa59ac6dd with:
                             gas gas_remaining wei
                            args 0x15f69298b6e43e6dbd22fe9f07b604a54096c107, 1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 10 * sub_ec83ae62 / sub_ec83ae62 != 10:
                        revert with 0, 'SafeMath mul failed.'
                    if block.timestamp > ext_call.return_data[192]:
                        revert with 0, 'SafeMath sub failed.'
                    if ext_call.return_data[192] - block.timestamp <= 10 * sub_ec83ae62:
                        require ext_code.size(sub_dbc97382Address)
                        if msg.sender == owner:
                            call sub_dbc97382Address.0x8456cb59 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call sub_dbc97382Address.0xa59ac6dd with:
                             gas gas_remaining wei
                            args 0xbb00a8d157ed97fa9910ce48d39ae2380b1b1b26, 1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_dbc97382Address)
                        call sub_dbc97382Address.0xa59ac6dd with:
                             gas gas_remaining wei
                            args 0x15f69298b6e43e6dbd22fe9f07b604a54096c107, 1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}



}
