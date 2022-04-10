contract main {


// =======================  Init code  ======================


address stor1;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    stor3 = code.data[6506 len 20]
    stor4 = code.data[6538 len 20]
    require ext_code.size(code.data[6506 len 20])
    call code.data[6506 len 20].0xbe38a4fe with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor5 = ext_call.return_data[12 len 20] or Mask(96, 160, stor5)
    require ext_code.size(stor3)
    call stor3.0x4ba2363a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor6 = ext_call.return_data[12 len 20] or Mask(96, 160, stor6)
    require ext_code.size(stor4)
    call stor4.0xf03c7c6e with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor7 = ext_call.return_data[12 len 20] or Mask(96, 160, stor7)
    require ext_code.size(stor3)
    call stor3.0x84718d89 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor8 = ext_call.return_data[12 len 20] or Mask(96, 160, stor8)
    require ext_code.size(stor3)
    call stor3.0x9166cba4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor9 = ext_call.return_data[12 len 20] or Mask(96, 160, stor9)
    require ext_code.size(stor3)
    call stor3.sin() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor10 = ext_call.return_data[12 len 20] or Mask(96, 160, stor10)
    require ext_code.size(stor3)
    call stor3.skr() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor11 = ext_call.return_data[12 len 20] or Mask(96, 160, stor11)
    require ext_code.size(stor3)
    call stor3.0x7bd2bea7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor12 = ext_call.return_data[12 len 20] or Mask(96, 160, stor12)
    return code.data[1319 len 5175]
}



// =====================  Runtime code  =====================


address authorityAddress;
address owner;
uint128 fix;
address tubAddress;
address tapAddress;
address jarAddress;
address potAddress;
address pitAddress;
address jugAddress;
address saiAddress;
address sinAddress;
address skrAddress;
address gemAddress;

function sin() {
    return sinAddress
}

function skr() {
    return skrAddress
}

function tub() {
    return tubAddress
}

function pot() {
    return potAddress
}

function gem() {
    return gemAddress
}

function jug() {
    return jugAddress
}

function owner() {
    return owner
}

function sai() {
    return saiAddress
}

function fix() {
    return fix
}

function jar() {
    return jarAddress
}

function authority() {
    return authorityAddress
}

function pit() {
    return pitAddress
}

function tap() {
    return tapAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function vent() {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require ext_code.size(tubAddress)
    call tubAddress.0x738fdd1a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= 1
    require ext_call.return_data[0] == 1
    require ext_code.size(jugAddress)
    call jugAddress.0xe0cd1d69 with:
         gas gas_remaining - 710 wei
        args pitAddress
    require ext_call.success
    require ext_code.size(pitAddress)
    call pitAddress.0x89afcb44 with:
         gas gas_remaining - 710 wei
        args skrAddress
    require ext_call.success
}

function cash() {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if msg.sender == this.address:
        if ext_code.size(tubAddress):
            call tubAddress.0x738fdd1a with:
                 gas gas_remaining - 710 wei
            if ext_call.success:
                if ext_call.return_data[0] <= 1:
                    require ext_call.return_data[0] == 1
                    if ext_code.size(saiAddress):
                        call saiAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args msg.sender
                        if ext_call.success:
                            if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                if ext_code.size(pitAddress):
                                    call pitAddress.0x6b2113cd with:
                                         gas gas_remaining - 710 wei
                                        args saiAddress, msg.sender, uint128(ext_call.return_data[0])
                                    if ext_call.success:
                                        if (uint128(ext_call.return_data[0]) * fix) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(ext_call.return_data[0]) * fix) + 500000000 * 10^18 / 1000000000 * 10^18):
                                            if ext_code.size(pitAddress):
                                                call pitAddress.0x3c71a7c7 with:
                                                     gas gas_remaining - 710 wei
                                                    args gemAddress, msg.sender, uint128((uint128(ext_call.return_data[0]) * fix) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                if ext_call.success:
    else:
        if owner == msg.sender:
            if ext_code.size(tubAddress):
                call tubAddress.0x738fdd1a with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    if ext_call.return_data[0] <= 1:
                        require ext_call.return_data[0] == 1
                        if ext_code.size(saiAddress):
                            call saiAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender
                            if ext_call.success:
                                if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                    if ext_code.size(pitAddress):
                                        call pitAddress.0x6b2113cd with:
                                             gas gas_remaining - 710 wei
                                            args saiAddress, msg.sender, uint128(ext_call.return_data[0])
                                        if ext_call.success:
                                            if (uint128(ext_call.return_data[0]) * fix) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(ext_call.return_data[0]) * fix) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                if ext_code.size(pitAddress):
                                                    call pitAddress.0x3c71a7c7 with:
                                                         gas gas_remaining - 710 wei
                                                        args gemAddress, msg.sender, uint128((uint128(ext_call.return_data[0]) * fix) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                    if ext_call.success:
        else:
            require authorityAddress
            if ext_code.size(authorityAddress):
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                if ext_call.success:
                    require ext_call.return_data[0]
                    if ext_code.size(tubAddress):
                        call tubAddress.0x738fdd1a with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            if ext_call.return_data[0] <= 1:
                                require ext_call.return_data[0] == 1
                                if ext_code.size(saiAddress):
                                    call saiAddress.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender
                                    if ext_call.success:
                                        if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                            if ext_code.size(pitAddress):
                                                call pitAddress.0x6b2113cd with:
                                                     gas gas_remaining - 710 wei
                                                    args saiAddress, msg.sender, uint128(ext_call.return_data[0])
                                                if ext_call.success:
                                                    if (uint128(ext_call.return_data[0]) * fix) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(ext_call.return_data[0]) * fix) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                        if ext_code.size(pitAddress):
                                                            call pitAddress.0x3c71a7c7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args gemAddress, msg.sender, uint128((uint128(ext_call.return_data[0]) * fix) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                            if ext_call.success:
    revert
}

function sub_cbd5accc(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if msg.sender == this.address:
        if ext_code.size(tubAddress):
            call tubAddress.0x738fdd1a with:
                 gas gas_remaining - 710 wei
            if ext_call.success:
                if ext_call.return_data[0] <= 1:
                    require not ext_call.return_data[0]
                    if ext_code.size(tubAddress):
                        call tubAddress.0x9f678cca with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            if ext_code.size(tubAddress):
                                call tubAddress.'i$P	' with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if ext_code.size(jugAddress):
                                        call jugAddress.0xe0cd1d69 with:
                                             gas gas_remaining - 710 wei
                                            args pitAddress
                                        if ext_call.success:
                                            if ext_code.size(pitAddress):
                                                call pitAddress.0x89afcb44 with:
                                                     gas gas_remaining - 710 wei
                                                    args skrAddress
                                                if ext_call.success:
                                                    if ext_code.size(sinAddress):
                                                        call sinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        if ext_call.success:
                                                            if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                                                if uint128(10^9 * uint128(arg1)):
                                                                    if (uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)) == uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))):
                                                                        if ext_code.size(tubAddress):
                                                                            call tubAddress.0x8a95a746 with:
                                                                                 gas gas_remaining - 710 wei
                                                                            if ext_call.success:
                                                                                if uint128(ext_call.return_data[0]):
                                                                                    if (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                        if uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) <= uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                            fix = uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)))
                                                                                            if (uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                if ext_code.size(jarAddress):
                                                                                                    call jarAddress.0x3c71a7c7 with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args gemAddress, pitAddress, uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                    if ext_call.success:
                                                                                        else:
                                                                                            fix = uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
                                                                                            if (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                if ext_code.size(jarAddress):
                                                                                                    call jarAddress.0x3c71a7c7 with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args gemAddress, pitAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                    if ext_call.success:
    else:
        if owner == msg.sender:
            if ext_code.size(tubAddress):
                call tubAddress.0x738fdd1a with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    if ext_call.return_data[0] <= 1:
                        require not ext_call.return_data[0]
                        if ext_code.size(tubAddress):
                            call tubAddress.0x9f678cca with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                if ext_code.size(tubAddress):
                                    call tubAddress.'i$P	' with:
                                         gas gas_remaining - 710 wei
                                    if ext_call.success:
                                        if ext_code.size(jugAddress):
                                            call jugAddress.0xe0cd1d69 with:
                                                 gas gas_remaining - 710 wei
                                                args pitAddress
                                            if ext_call.success:
                                                if ext_code.size(pitAddress):
                                                    call pitAddress.0x89afcb44 with:
                                                         gas gas_remaining - 710 wei
                                                        args skrAddress
                                                    if ext_call.success:
                                                        if ext_code.size(sinAddress):
                                                            call sinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            if ext_call.success:
                                                                if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                                                    if uint128(10^9 * uint128(arg1)):
                                                                        if (uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)) == uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))):
                                                                            if ext_code.size(tubAddress):
                                                                                call tubAddress.0x8a95a746 with:
                                                                                     gas gas_remaining - 710 wei
                                                                                if ext_call.success:
                                                                                    if uint128(ext_call.return_data[0]):
                                                                                        if (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                            if uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) <= uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                fix = uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)))
                                                                                                if (uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                    if ext_code.size(jarAddress):
                                                                                                        call jarAddress.0x3c71a7c7 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args gemAddress, pitAddress, uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                        if ext_call.success:
                                                                                            else:
                                                                                                fix = uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
                                                                                                if (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                    if ext_code.size(jarAddress):
                                                                                                        call jarAddress.0x3c71a7c7 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args gemAddress, pitAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                        if ext_call.success:
        else:
            require authorityAddress
            if ext_code.size(authorityAddress):
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                if ext_call.success:
                    require ext_call.return_data[0]
                    if ext_code.size(tubAddress):
                        call tubAddress.0x738fdd1a with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            if ext_call.return_data[0] <= 1:
                                require not ext_call.return_data[0]
                                if ext_code.size(tubAddress):
                                    call tubAddress.0x9f678cca with:
                                         gas gas_remaining - 710 wei
                                    if ext_call.success:
                                        if ext_code.size(tubAddress):
                                            call tubAddress.'i$P	' with:
                                                 gas gas_remaining - 710 wei
                                            if ext_call.success:
                                                if ext_code.size(jugAddress):
                                                    call jugAddress.0xe0cd1d69 with:
                                                         gas gas_remaining - 710 wei
                                                        args pitAddress
                                                    if ext_call.success:
                                                        if ext_code.size(pitAddress):
                                                            call pitAddress.0x89afcb44 with:
                                                                 gas gas_remaining - 710 wei
                                                                args skrAddress
                                                            if ext_call.success:
                                                                if ext_code.size(sinAddress):
                                                                    call sinAddress.0x18160ddd with:
                                                                         gas gas_remaining - 710 wei
                                                                    if ext_call.success:
                                                                        if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                                                            if uint128(10^9 * uint128(arg1)):
                                                                                if (uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)) == uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))):
                                                                                    if ext_code.size(tubAddress):
                                                                                        call tubAddress.0x8a95a746 with:
                                                                                             gas gas_remaining - 710 wei
                                                                                        if ext_call.success:
                                                                                            if uint128(ext_call.return_data[0]):
                                                                                                if (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                    if uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) <= uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                        fix = uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)))
                                                                                                        if (uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                            if ext_code.size(jarAddress):
                                                                                                                call jarAddress.0x3c71a7c7 with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args gemAddress, pitAddress, uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                if ext_call.success:
                                                                                                    else:
                                                                                                        fix = uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
                                                                                                        if (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                            if ext_code.size(jarAddress):
                                                                                                                call jarAddress.0x3c71a7c7 with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args gemAddress, pitAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                if ext_call.success:
    revert
}

function cage() {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if msg.sender == this.address:
        if ext_code.size(tubAddress):
            call tubAddress.0xbe38a4fe with:
                 gas gas_remaining - 710 wei
            if ext_call.success:
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).0xd741e2f9 with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if ext_code.size(address(ext_call.return_data[0])):
                            call address(ext_call.return_data[0]).read() with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                if ext_code.size(tubAddress):
                                    call tubAddress.0x2755cd2d with:
                                         gas gas_remaining - 710 wei
                                    if ext_call.success:
                                        if ext_code.size(address(ext_call.return_data[0])):
                                            call address(ext_call.return_data[0]).0x495d32cb with:
                                                 gas gas_remaining - 710 wei
                                            if ext_call.success:
                                                if ext_call.return_data[16 len 16]:
                                                    if (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                        emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                                                        if msg.sender == this.address:
                                                            if ext_code.size(tubAddress):
                                                                call tubAddress.0x738fdd1a with:
                                                                     gas gas_remaining - 710 wei
                                                                if ext_call.success:
                                                                    if ext_call.return_data[0] <= 1:
                                                                        require not ext_call.return_data[0]
                                                                        if ext_code.size(tubAddress):
                                                                            call tubAddress.0x9f678cca with:
                                                                                 gas gas_remaining - 710 wei
                                                                            if ext_call.success:
                                                                                if ext_code.size(tubAddress):
                                                                                    call tubAddress.'i$P	' with:
                                                                                         gas gas_remaining - 710 wei
                                                                                    if ext_call.success:
                                                                                        if ext_code.size(jugAddress):
                                                                                            call jugAddress.0xe0cd1d69 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args pitAddress
                                                                                            if ext_call.success:
                                                                                                if ext_code.size(pitAddress):
                                                                                                    call pitAddress.0x89afcb44 with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args skrAddress
                                                                                                    if ext_call.success:
                                                                                                        if ext_code.size(sinAddress):
                                                                                                            call sinAddress.0x18160ddd with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                            if ext_call.success:
                                                                                                                if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                                                                                                    if uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                        if (uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) == uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))):
                                                                                                                            if ext_code.size(tubAddress):
                                                                                                                                call tubAddress.0x8a95a746 with:
                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                if ext_call.success:
                                                                                                                                    if uint128(ext_call.return_data[0]):
                                                                                                                                        if (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                            if uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) <= uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                fix = uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])))
                                                                                                                                                if (uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                    if ext_code.size(jarAddress):
                                                                                                                                                        call jarAddress.0x3c71a7c7 with:
                                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                                            args gemAddress, pitAddress, uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                        if ext_call.success:
                                                                                                                                            else:
                                                                                                                                                fix = uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
                                                                                                                                                if (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                    if ext_code.size(jarAddress):
                                                                                                                                                        call jarAddress.0x3c71a7c7 with:
                                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                                            args gemAddress, pitAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                        if ext_call.success:
                                                        else:
                                                            if owner == msg.sender:
                                                                if ext_code.size(tubAddress):
                                                                    call tubAddress.0x738fdd1a with:
                                                                         gas gas_remaining - 710 wei
                                                                    if ext_call.success:
                                                                        if ext_call.return_data[0] <= 1:
                                                                            require not ext_call.return_data[0]
                                                                            if ext_code.size(tubAddress):
                                                                                call tubAddress.0x9f678cca with:
                                                                                     gas gas_remaining - 710 wei
                                                                                if ext_call.success:
                                                                                    if ext_code.size(tubAddress):
                                                                                        call tubAddress.'i$P	' with:
                                                                                             gas gas_remaining - 710 wei
                                                                                        if ext_call.success:
                                                                                            if ext_code.size(jugAddress):
                                                                                                call jugAddress.0xe0cd1d69 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args pitAddress
                                                                                                if ext_call.success:
                                                                                                    if ext_code.size(pitAddress):
                                                                                                        call pitAddress.0x89afcb44 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args skrAddress
                                                                                                        if ext_call.success:
                                                                                                            if ext_code.size(sinAddress):
                                                                                                                call sinAddress.0x18160ddd with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                if ext_call.success:
                                                                                                                    if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                                                                                                        if uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                            if (uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) == uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))):
                                                                                                                                if ext_code.size(tubAddress):
                                                                                                                                    call tubAddress.0x8a95a746 with:
                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                    if ext_call.success:
                                                                                                                                        if uint128(ext_call.return_data[0]):
                                                                                                                                            if (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                if uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) <= uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                    fix = uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])))
                                                                                                                                                    if (uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                        if ext_code.size(jarAddress):
                                                                                                                                                            call jarAddress.0x3c71a7c7 with:
                                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                                args gemAddress, pitAddress, uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                            if ext_call.success:
                                                                                                                                                else:
                                                                                                                                                    fix = uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
                                                                                                                                                    if (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                        if ext_code.size(jarAddress):
                                                                                                                                                            call jarAddress.0x3c71a7c7 with:
                                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                                args gemAddress, pitAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                            if ext_call.success:
                                                            else:
                                                                require authorityAddress
                                                                if ext_code.size(authorityAddress):
                                                                    call authorityAddress.0xb7009613 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args msg.sender, address(this.address), call.func_hash
                                                                    if ext_call.success:
                                                                        require ext_call.return_data[0]
                                                                        if ext_code.size(tubAddress):
                                                                            call tubAddress.0x738fdd1a with:
                                                                                 gas gas_remaining - 710 wei
                                                                            if ext_call.success:
                                                                                if ext_call.return_data[0] <= 1:
                                                                                    require not ext_call.return_data[0]
                                                                                    if ext_code.size(tubAddress):
                                                                                        call tubAddress.0x9f678cca with:
                                                                                             gas gas_remaining - 710 wei
                                                                                        if ext_call.success:
                                                                                            if ext_code.size(tubAddress):
                                                                                                call tubAddress.'i$P	' with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                if ext_call.success:
                                                                                                    if ext_code.size(jugAddress):
                                                                                                        call jugAddress.0xe0cd1d69 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args pitAddress
                                                                                                        if ext_call.success:
                                                                                                            if ext_code.size(pitAddress):
                                                                                                                call pitAddress.0x89afcb44 with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args skrAddress
                                                                                                                if ext_call.success:
                                                                                                                    if ext_code.size(sinAddress):
                                                                                                                        call sinAddress.0x18160ddd with:
                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                        if ext_call.success:
                                                                                                                            if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                                                                                                                if uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                    if (uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) == uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))):
                                                                                                                                        if ext_code.size(tubAddress):
                                                                                                                                            call tubAddress.0x8a95a746 with:
                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                            if ext_call.success:
                                                                                                                                                if uint128(ext_call.return_data[0]):
                                                                                                                                                    if (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                        if uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) <= uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                            fix = uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])))
                                                                                                                                                            if (uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                                if ext_code.size(jarAddress):
                                                                                                                                                                    call jarAddress.0x3c71a7c7 with:
                                                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                                                        args gemAddress, pitAddress, uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                                    if ext_call.success:
                                                                                                                                                        else:
                                                                                                                                                            fix = uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
                                                                                                                                                            if (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                                if ext_code.size(jarAddress):
                                                                                                                                                                    call jarAddress.0x3c71a7c7 with:
                                                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                                                        args gemAddress, pitAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                                    if ext_call.success:
    else:
        if owner == msg.sender:
            if ext_code.size(tubAddress):
                call tubAddress.0xbe38a4fe with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    if ext_code.size(address(ext_call.return_data[0])):
                        call address(ext_call.return_data[0]).0xd741e2f9 with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            if ext_code.size(address(ext_call.return_data[0])):
                                call address(ext_call.return_data[0]).read() with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if ext_code.size(tubAddress):
                                        call tubAddress.0x2755cd2d with:
                                             gas gas_remaining - 710 wei
                                        if ext_call.success:
                                            if ext_code.size(address(ext_call.return_data[0])):
                                                call address(ext_call.return_data[0]).0x495d32cb with:
                                                     gas gas_remaining - 710 wei
                                                if ext_call.success:
                                                    if ext_call.return_data[16 len 16]:
                                                        if (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                                                            if msg.sender == this.address:
                                                                if ext_code.size(tubAddress):
                                                                    call tubAddress.0x738fdd1a with:
                                                                         gas gas_remaining - 710 wei
                                                                    if ext_call.success:
                                                                        if ext_call.return_data[0] <= 1:
                                                                            require not ext_call.return_data[0]
                                                                            if ext_code.size(tubAddress):
                                                                                call tubAddress.0x9f678cca with:
                                                                                     gas gas_remaining - 710 wei
                                                                                if ext_call.success:
                                                                                    if ext_code.size(tubAddress):
                                                                                        call tubAddress.'i$P	' with:
                                                                                             gas gas_remaining - 710 wei
                                                                                        if ext_call.success:
                                                                                            if ext_code.size(jugAddress):
                                                                                                call jugAddress.0xe0cd1d69 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args pitAddress
                                                                                                if ext_call.success:
                                                                                                    if ext_code.size(pitAddress):
                                                                                                        call pitAddress.0x89afcb44 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args skrAddress
                                                                                                        if ext_call.success:
                                                                                                            if ext_code.size(sinAddress):
                                                                                                                call sinAddress.0x18160ddd with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                if ext_call.success:
                                                                                                                    if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                                                                                                        if uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                            if (uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) == uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))):
                                                                                                                                if ext_code.size(tubAddress):
                                                                                                                                    call tubAddress.0x8a95a746 with:
                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                    if ext_call.success:
                                                                                                                                        if uint128(ext_call.return_data[0]):
                                                                                                                                            if (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                if uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) <= uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                    fix = uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])))
                                                                                                                                                    if (uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                        if ext_code.size(jarAddress):
                                                                                                                                                            call jarAddress.0x3c71a7c7 with:
                                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                                args gemAddress, pitAddress, uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                            if ext_call.success:
                                                                                                                                                else:
                                                                                                                                                    fix = uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
                                                                                                                                                    if (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                        if ext_code.size(jarAddress):
                                                                                                                                                            call jarAddress.0x3c71a7c7 with:
                                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                                args gemAddress, pitAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                            if ext_call.success:
                                                            else:
                                                                if owner == msg.sender:
                                                                    if ext_code.size(tubAddress):
                                                                        call tubAddress.0x738fdd1a with:
                                                                             gas gas_remaining - 710 wei
                                                                        if ext_call.success:
                                                                            if ext_call.return_data[0] <= 1:
                                                                                require not ext_call.return_data[0]
                                                                                if ext_code.size(tubAddress):
                                                                                    call tubAddress.0x9f678cca with:
                                                                                         gas gas_remaining - 710 wei
                                                                                    if ext_call.success:
                                                                                        if ext_code.size(tubAddress):
                                                                                            call tubAddress.'i$P	' with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                            if ext_call.success:
                                                                                                if ext_code.size(jugAddress):
                                                                                                    call jugAddress.0xe0cd1d69 with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args pitAddress
                                                                                                    if ext_call.success:
                                                                                                        if ext_code.size(pitAddress):
                                                                                                            call pitAddress.0x89afcb44 with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                args skrAddress
                                                                                                            if ext_call.success:
                                                                                                                if ext_code.size(sinAddress):
                                                                                                                    call sinAddress.0x18160ddd with:
                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                    if ext_call.success:
                                                                                                                        if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                                                                                                            if uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                if (uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) == uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))):
                                                                                                                                    if ext_code.size(tubAddress):
                                                                                                                                        call tubAddress.0x8a95a746 with:
                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                        if ext_call.success:
                                                                                                                                            if uint128(ext_call.return_data[0]):
                                                                                                                                                if (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                    if uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) <= uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                        fix = uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])))
                                                                                                                                                        if (uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                            if ext_code.size(jarAddress):
                                                                                                                                                                call jarAddress.0x3c71a7c7 with:
                                                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                                                    args gemAddress, pitAddress, uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                                if ext_call.success:
                                                                                                                                                    else:
                                                                                                                                                        fix = uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
                                                                                                                                                        if (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                            if ext_code.size(jarAddress):
                                                                                                                                                                call jarAddress.0x3c71a7c7 with:
                                                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                                                    args gemAddress, pitAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                                if ext_call.success:
                                                                else:
                                                                    require authorityAddress
                                                                    if ext_code.size(authorityAddress):
                                                                        call authorityAddress.0xb7009613 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args msg.sender, address(this.address), call.func_hash
                                                                        if ext_call.success:
                                                                            require ext_call.return_data[0]
                                                                            if ext_code.size(tubAddress):
                                                                                call tubAddress.0x738fdd1a with:
                                                                                     gas gas_remaining - 710 wei
                                                                                if ext_call.success:
                                                                                    if ext_call.return_data[0] <= 1:
                                                                                        require not ext_call.return_data[0]
                                                                                        if ext_code.size(tubAddress):
                                                                                            call tubAddress.0x9f678cca with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                            if ext_call.success:
                                                                                                if ext_code.size(tubAddress):
                                                                                                    call tubAddress.'i$P	' with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                    if ext_call.success:
                                                                                                        if ext_code.size(jugAddress):
                                                                                                            call jugAddress.0xe0cd1d69 with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                args pitAddress
                                                                                                            if ext_call.success:
                                                                                                                if ext_code.size(pitAddress):
                                                                                                                    call pitAddress.0x89afcb44 with:
                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                        args skrAddress
                                                                                                                    if ext_call.success:
                                                                                                                        if ext_code.size(sinAddress):
                                                                                                                            call sinAddress.0x18160ddd with:
                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                            if ext_call.success:
                                                                                                                                if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                                                                                                                    if uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                        if (uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) == uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))):
                                                                                                                                            if ext_code.size(tubAddress):
                                                                                                                                                call tubAddress.0x8a95a746 with:
                                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                                if ext_call.success:
                                                                                                                                                    if uint128(ext_call.return_data[0]):
                                                                                                                                                        if (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                            if uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) <= uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                                fix = uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])))
                                                                                                                                                                if (uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                                    if ext_code.size(jarAddress):
                                                                                                                                                                        call jarAddress.0x3c71a7c7 with:
                                                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                                                            args gemAddress, pitAddress, uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                                        if ext_call.success:
                                                                                                                                                            else:
                                                                                                                                                                fix = uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
                                                                                                                                                                if (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                                    if ext_code.size(jarAddress):
                                                                                                                                                                        call jarAddress.0x3c71a7c7 with:
                                                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                                                            args gemAddress, pitAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                                        if ext_call.success:
        else:
            require authorityAddress
            if ext_code.size(authorityAddress):
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                if ext_call.success:
                    require ext_call.return_data[0]
                    if ext_code.size(tubAddress):
                        call tubAddress.0xbe38a4fe with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            if ext_code.size(address(ext_call.return_data[0])):
                                call address(ext_call.return_data[0]).0xd741e2f9 with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if ext_code.size(address(ext_call.return_data[0])):
                                        call address(ext_call.return_data[0]).read() with:
                                             gas gas_remaining - 710 wei
                                        if ext_call.success:
                                            if ext_code.size(tubAddress):
                                                call tubAddress.0x2755cd2d with:
                                                     gas gas_remaining - 710 wei
                                                if ext_call.success:
                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                        call address(ext_call.return_data[0]).0x495d32cb with:
                                                             gas gas_remaining - 710 wei
                                                        if ext_call.success:
                                                            if ext_call.return_data[16 len 16]:
                                                                if (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                                    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                                                                    if msg.sender == this.address:
                                                                        if ext_code.size(tubAddress):
                                                                            call tubAddress.0x738fdd1a with:
                                                                                 gas gas_remaining - 710 wei
                                                                            if ext_call.success:
                                                                                if ext_call.return_data[0] <= 1:
                                                                                    require not ext_call.return_data[0]
                                                                                    if ext_code.size(tubAddress):
                                                                                        call tubAddress.0x9f678cca with:
                                                                                             gas gas_remaining - 710 wei
                                                                                        if ext_call.success:
                                                                                            if ext_code.size(tubAddress):
                                                                                                call tubAddress.'i$P	' with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                if ext_call.success:
                                                                                                    if ext_code.size(jugAddress):
                                                                                                        call jugAddress.0xe0cd1d69 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args pitAddress
                                                                                                        if ext_call.success:
                                                                                                            if ext_code.size(pitAddress):
                                                                                                                call pitAddress.0x89afcb44 with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args skrAddress
                                                                                                                if ext_call.success:
                                                                                                                    if ext_code.size(sinAddress):
                                                                                                                        call sinAddress.0x18160ddd with:
                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                        if ext_call.success:
                                                                                                                            if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                                                                                                                if uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                    if (uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) == uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))):
                                                                                                                                        if ext_code.size(tubAddress):
                                                                                                                                            call tubAddress.0x8a95a746 with:
                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                            if ext_call.success:
                                                                                                                                                if uint128(ext_call.return_data[0]):
                                                                                                                                                    if (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                        if uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) <= uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                            fix = uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])))
                                                                                                                                                            if (uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                                if ext_code.size(jarAddress):
                                                                                                                                                                    call jarAddress.0x3c71a7c7 with:
                                                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                                                        args gemAddress, pitAddress, uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                                    if ext_call.success:
                                                                                                                                                        else:
                                                                                                                                                            fix = uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
                                                                                                                                                            if (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                                if ext_code.size(jarAddress):
                                                                                                                                                                    call jarAddress.0x3c71a7c7 with:
                                                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                                                        args gemAddress, pitAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                                    if ext_call.success:
                                                                    else:
                                                                        if owner == msg.sender:
                                                                            if ext_code.size(tubAddress):
                                                                                call tubAddress.0x738fdd1a with:
                                                                                     gas gas_remaining - 710 wei
                                                                                if ext_call.success:
                                                                                    if ext_call.return_data[0] <= 1:
                                                                                        require not ext_call.return_data[0]
                                                                                        if ext_code.size(tubAddress):
                                                                                            call tubAddress.0x9f678cca with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                            if ext_call.success:
                                                                                                if ext_code.size(tubAddress):
                                                                                                    call tubAddress.'i$P	' with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                    if ext_call.success:
                                                                                                        if ext_code.size(jugAddress):
                                                                                                            call jugAddress.0xe0cd1d69 with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                args pitAddress
                                                                                                            if ext_call.success:
                                                                                                                if ext_code.size(pitAddress):
                                                                                                                    call pitAddress.0x89afcb44 with:
                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                        args skrAddress
                                                                                                                    if ext_call.success:
                                                                                                                        if ext_code.size(sinAddress):
                                                                                                                            call sinAddress.0x18160ddd with:
                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                            if ext_call.success:
                                                                                                                                if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                                                                                                                    if uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                        if (uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) == uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))):
                                                                                                                                            if ext_code.size(tubAddress):
                                                                                                                                                call tubAddress.0x8a95a746 with:
                                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                                if ext_call.success:
                                                                                                                                                    if uint128(ext_call.return_data[0]):
                                                                                                                                                        if (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                            if uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) <= uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                                fix = uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])))
                                                                                                                                                                if (uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                                    if ext_code.size(jarAddress):
                                                                                                                                                                        call jarAddress.0x3c71a7c7 with:
                                                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                                                            args gemAddress, pitAddress, uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                                        if ext_call.success:
                                                                                                                                                            else:
                                                                                                                                                                fix = uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
                                                                                                                                                                if (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                                    if ext_code.size(jarAddress):
                                                                                                                                                                        call jarAddress.0x3c71a7c7 with:
                                                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                                                            args gemAddress, pitAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                                        if ext_call.success:
                                                                        else:
                                                                            require authorityAddress
                                                                            if ext_code.size(authorityAddress):
                                                                                call authorityAddress.0xb7009613 with:
                                                                                     gas gas_remaining - 710 wei
                                                                                    args msg.sender, address(this.address), call.func_hash
                                                                                if ext_call.success:
                                                                                    require ext_call.return_data[0]
                                                                                    if ext_code.size(tubAddress):
                                                                                        call tubAddress.0x738fdd1a with:
                                                                                             gas gas_remaining - 710 wei
                                                                                        if ext_call.success:
                                                                                            if ext_call.return_data[0] <= 1:
                                                                                                require not ext_call.return_data[0]
                                                                                                if ext_code.size(tubAddress):
                                                                                                    call tubAddress.0x9f678cca with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                    if ext_call.success:
                                                                                                        if ext_code.size(tubAddress):
                                                                                                            call tubAddress.'i$P	' with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                            if ext_call.success:
                                                                                                                if ext_code.size(jugAddress):
                                                                                                                    call jugAddress.0xe0cd1d69 with:
                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                        args pitAddress
                                                                                                                    if ext_call.success:
                                                                                                                        if ext_code.size(pitAddress):
                                                                                                                            call pitAddress.0x89afcb44 with:
                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                args skrAddress
                                                                                                                            if ext_call.success:
                                                                                                                                if ext_code.size(sinAddress):
                                                                                                                                    call sinAddress.0x18160ddd with:
                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                    if ext_call.success:
                                                                                                                                        if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                                                                                                                            if uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                if (uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) == uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))):
                                                                                                                                                    if ext_code.size(tubAddress):
                                                                                                                                                        call tubAddress.0x8a95a746 with:
                                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                                        if ext_call.success:
                                                                                                                                                            if uint128(ext_call.return_data[0]):
                                                                                                                                                                if (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                                    if uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) <= uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
                                                                                                                                                                        fix = uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])))
                                                                                                                                                                        if (uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                                            if ext_code.size(jarAddress):
                                                                                                                                                                                call jarAddress.0x3c71a7c7 with:
                                                                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                                                                    args gemAddress, pitAddress, uint128((uint128((uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                                                if ext_call.success:
                                                                                                                                                                    else:
                                                                                                                                                                        fix = uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
                                                                                                                                                                        if (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                                            if ext_code.size(jarAddress):
                                                                                                                                                                                call jarAddress.0x3c71a7c7 with:
                                                                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                                                                    args gemAddress, pitAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                                                if ext_call.success:
    revert
}



}
