contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;
address stor4;
uint16 stor5;
uint64 stor5; offset 16
uint64 stor5; offset 64
address stor6;

function _fallback() {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    stor2 = code.data[5066 len 20]
    stor3 = code.data[5098 len 20]
    stor4 = code.data[5130 len 20]
    stor6 = code.data[5162 len 20]
    uint16(stor5.field_0) = 0
    stor5.field_16 % 281474976710656 = 15258789062500
    uint64(stor5.field_64) = 0
    return code.data[245 len 4809]
}



// =====================  Runtime code  =====================


address authorityAddress;
address owner;
address refAddress;
address altAddress;
address tipAddress;
uint128 gap;
address lpsAddress;

function ref() {
    return refAddress
}

function tip() {
    return tipAddress
}

function gap() {
    return gap
}

function owner() {
    return owner
}

function alt() {
    return altAddress
}

function authority() {
    return authorityAddress
}

function lps() {
    return lpsAddress
}

function _fallback() payable {
    revert
}

function tag() {
    require ext_code.size(tipAddress)
    call tipAddress.read() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[16 len 16]
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

function sub_420f2ed9(?) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require uint128(arg1)
    gap = uint128(arg1)
}

function pie() {
    require ext_code.size(refAddress)
    call refAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(altAddress)
    call altAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tipAddress)
    call tipAddress.read() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)
    require uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0])
    return uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))
}

function per() {
    require ext_code.size(lpsAddress)
    call lpsAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        return 1000000000 * 10^18
    require ext_code.size(lpsAddress)
    call lpsAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(refAddress)
    call refAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(altAddress)
    call altAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tipAddress)
    call tipAddress.read() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)
    require uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0])
    require uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))
    require (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))
    return uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))
}

function sub_114e11a0(?) {
    if msg.sender == this.address:
        emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
        if altAddress == address(arg1):
            if refAddress != address(arg1):
                if ext_code.size(tipAddress):
                    call tipAddress.read() with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if (uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                            if (gap * uint128((uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) + 5 * 10^17 / 10^18):
                                if refAddress == address(arg1):
                                    if ext_code.size(altAddress):
                                        call altAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, address(this.address), uint128((gap * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 5 * 10^17 / 10^18)
                                        if ext_call.success:
                                            if ext_code.size(address(arg1)):
                                                call address(arg1).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, uint128(arg2)
                                                if ext_call.success:
                                else:
                                    if ext_code.size(refAddress):
                                        call refAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, address(this.address), uint128((gap * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 5 * 10^17 / 10^18)
                                        if ext_call.success:
                                            if ext_code.size(address(arg1)):
                                                call address(arg1).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, uint128(arg2)
                                                if ext_call.success:
            else:
                if ext_code.size(tipAddress):
                    call tipAddress.read() with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if ext_call.return_data[16 len 16]:
                            if (10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                if (gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 5 * 10^17 / 10^18 == uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 5 * 10^17 / 10^18):
                                    if refAddress == address(arg1):
                                        if ext_code.size(altAddress):
                                            call altAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, address(this.address), uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 5 * 10^17 / 10^18)
                                            if ext_call.success:
                                                if ext_code.size(address(arg1)):
                                                    call address(arg1).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, uint128(arg2)
                                                    if ext_call.success:
                                    else:
                                        if ext_code.size(refAddress):
                                            call refAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, address(this.address), uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 5 * 10^17 / 10^18)
                                            if ext_call.success:
                                                if ext_code.size(address(arg1)):
                                                    call address(arg1).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, uint128(arg2)
                                                    if ext_call.success:
        else:
            require refAddress == address(arg1)
            if ext_code.size(tipAddress):
                call tipAddress.read() with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    if ext_call.return_data[16 len 16]:
                        if (10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                            if (gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 5 * 10^17 / 10^18 == uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 5 * 10^17 / 10^18):
                                if refAddress == address(arg1):
                                    if ext_code.size(altAddress):
                                        call altAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, address(this.address), uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 5 * 10^17 / 10^18)
                                        if ext_call.success:
                                            if ext_code.size(address(arg1)):
                                                call address(arg1).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, uint128(arg2)
                                                if ext_call.success:
                                else:
                                    if ext_code.size(refAddress):
                                        call refAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, address(this.address), uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 5 * 10^17 / 10^18)
                                        if ext_call.success:
                                            if ext_code.size(address(arg1)):
                                                call address(arg1).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, uint128(arg2)
                                                if ext_call.success:
    else:
        if owner == msg.sender:
            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
            if altAddress == address(arg1):
                if refAddress != address(arg1):
                    if ext_code.size(tipAddress):
                        call tipAddress.read() with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            if (uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                if (gap * uint128((uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) + 5 * 10^17 / 10^18):
                                    if refAddress == address(arg1):
                                        if ext_code.size(altAddress):
                                            call altAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, address(this.address), uint128((gap * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 5 * 10^17 / 10^18)
                                            if ext_call.success:
                                                if ext_code.size(address(arg1)):
                                                    call address(arg1).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, uint128(arg2)
                                                    if ext_call.success:
                                    else:
                                        if ext_code.size(refAddress):
                                            call refAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, address(this.address), uint128((gap * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 5 * 10^17 / 10^18)
                                            if ext_call.success:
                                                if ext_code.size(address(arg1)):
                                                    call address(arg1).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, uint128(arg2)
                                                    if ext_call.success:
                else:
                    if ext_code.size(tipAddress):
                        call tipAddress.read() with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            if ext_call.return_data[16 len 16]:
                                if (10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                    if (gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 5 * 10^17 / 10^18 == uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 5 * 10^17 / 10^18):
                                        if refAddress == address(arg1):
                                            if ext_code.size(altAddress):
                                                call altAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, address(this.address), uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 5 * 10^17 / 10^18)
                                                if ext_call.success:
                                                    if ext_code.size(address(arg1)):
                                                        call address(arg1).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, uint128(arg2)
                                                        if ext_call.success:
                                        else:
                                            if ext_code.size(refAddress):
                                                call refAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, address(this.address), uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 5 * 10^17 / 10^18)
                                                if ext_call.success:
                                                    if ext_code.size(address(arg1)):
                                                        call address(arg1).0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, uint128(arg2)
                                                        if ext_call.success:
            else:
                require refAddress == address(arg1)
                if ext_code.size(tipAddress):
                    call tipAddress.read() with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if ext_call.return_data[16 len 16]:
                            if (10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                if (gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 5 * 10^17 / 10^18 == uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 5 * 10^17 / 10^18):
                                    if refAddress == address(arg1):
                                        if ext_code.size(altAddress):
                                            call altAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, address(this.address), uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 5 * 10^17 / 10^18)
                                            if ext_call.success:
                                                if ext_code.size(address(arg1)):
                                                    call address(arg1).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, uint128(arg2)
                                                    if ext_call.success:
                                    else:
                                        if ext_code.size(refAddress):
                                            call refAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, address(this.address), uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 5 * 10^17 / 10^18)
                                            if ext_call.success:
                                                if ext_code.size(address(arg1)):
                                                    call address(arg1).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, uint128(arg2)
                                                    if ext_call.success:
        else:
            require authorityAddress
            if ext_code.size(authorityAddress):
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                if ext_call.success:
                    require ext_call.return_data[0]
                    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                    if altAddress == address(arg1):
                        if refAddress != address(arg1):
                            if ext_code.size(tipAddress):
                                call tipAddress.read() with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if (uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                        if (gap * uint128((uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) + 5 * 10^17 / 10^18):
                                            if refAddress == address(arg1):
                                                if ext_code.size(altAddress):
                                                    call altAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, address(this.address), uint128((gap * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 5 * 10^17 / 10^18)
                                                    if ext_call.success:
                                                        if ext_code.size(address(arg1)):
                                                            call address(arg1).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, uint128(arg2)
                                                            if ext_call.success:
                                            else:
                                                if ext_code.size(refAddress):
                                                    call refAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, address(this.address), uint128((gap * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 5 * 10^17 / 10^18)
                                                    if ext_call.success:
                                                        if ext_code.size(address(arg1)):
                                                            call address(arg1).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, uint128(arg2)
                                                            if ext_call.success:
                        else:
                            if ext_code.size(tipAddress):
                                call tipAddress.read() with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if ext_call.return_data[16 len 16]:
                                        if (10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                            if (gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 5 * 10^17 / 10^18 == uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 5 * 10^17 / 10^18):
                                                if refAddress == address(arg1):
                                                    if ext_code.size(altAddress):
                                                        call altAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, address(this.address), uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 5 * 10^17 / 10^18)
                                                        if ext_call.success:
                                                            if ext_code.size(address(arg1)):
                                                                call address(arg1).0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args msg.sender, uint128(arg2)
                                                                if ext_call.success:
                                                else:
                                                    if ext_code.size(refAddress):
                                                        call refAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, address(this.address), uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 5 * 10^17 / 10^18)
                                                        if ext_call.success:
                                                            if ext_code.size(address(arg1)):
                                                                call address(arg1).0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args msg.sender, uint128(arg2)
                                                                if ext_call.success:
                    else:
                        require refAddress == address(arg1)
                        if ext_code.size(tipAddress):
                            call tipAddress.read() with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                if ext_call.return_data[16 len 16]:
                                    if (10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                        if (gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 5 * 10^17 / 10^18 == uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 5 * 10^17 / 10^18):
                                            if refAddress == address(arg1):
                                                if ext_code.size(altAddress):
                                                    call altAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, address(this.address), uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 5 * 10^17 / 10^18)
                                                    if ext_call.success:
                                                        if ext_code.size(address(arg1)):
                                                            call address(arg1).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, uint128(arg2)
                                                            if ext_call.success:
                                            else:
                                                if ext_code.size(refAddress):
                                                    call refAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, address(this.address), uint128((gap * uint128((10^18 * uint128(arg2)) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 5 * 10^17 / 10^18)
                                                    if ext_call.success:
                                                        if ext_code.size(address(arg1)):
                                                            call address(arg1).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, uint128(arg2)
                                                            if ext_call.success:
    revert
}

function sub_065a50ed(?) {
    if msg.sender == this.address:
        emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
        if altAddress != address(arg1):
            require refAddress == address(arg1)
            if ext_code.size(lpsAddress):
                call lpsAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        if (1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18):
                            if ext_code.size(lpsAddress):
                                call lpsAddress.0x69d3e20e with:
                                     gas gas_remaining - 710 wei
                                    args uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                if ext_call.success:
                                    if ext_code.size(lpsAddress):
                                        call lpsAddress.0x3452f51d with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                        if ext_call.success:
                                            if ext_code.size(address(arg1)):
                                                call address(arg1).0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, address(this.address), uint128(arg2)
                                                if ext_call.success:
                    else:
                        if ext_code.size(lpsAddress):
                            call lpsAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                if ext_code.size(refAddress):
                                    call refAddress.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    if ext_call.success:
                                        if ext_code.size(altAddress):
                                            call altAddress.0x70a08231 with:
                                                 gas gas_remaining - 710 wei
                                                args this.address
                                            if ext_call.success:
                                                if ext_code.size(tipAddress):
                                                    call tipAddress.read() with:
                                                         gas gas_remaining - 710 wei
                                                    if ext_call.success:
                                                        if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                            if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                    if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                        if (uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                            if ext_code.size(lpsAddress):
                                                                                call lpsAddress.0x69d3e20e with:
                                                                                     gas gas_remaining - 710 wei
                                                                                    args uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                if ext_call.success:
                                                                                    if ext_code.size(lpsAddress):
                                                                                        call lpsAddress.0x3452f51d with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args msg.sender, uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                        if ext_call.success:
                                                                                            if ext_code.size(address(arg1)):
                                                                                                call address(arg1).0x23b872dd with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args msg.sender, address(this.address), uint128(arg2)
                                                                                                if ext_call.success:
        else:
            if refAddress == address(arg1):
                if ext_code.size(lpsAddress):
                    call lpsAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if not ext_call.return_data[0]:
                            if (1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                if ext_code.size(lpsAddress):
                                    call lpsAddress.0x69d3e20e with:
                                         gas gas_remaining - 710 wei
                                        args uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                    if ext_call.success:
                                        if ext_code.size(lpsAddress):
                                            call lpsAddress.0x3452f51d with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                            if ext_call.success:
                                                if ext_code.size(address(arg1)):
                                                    call address(arg1).0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, address(this.address), uint128(arg2)
                                                    if ext_call.success:
                        else:
                            if ext_code.size(lpsAddress):
                                call lpsAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if ext_code.size(refAddress):
                                        call refAddress.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        if ext_call.success:
                                            if ext_code.size(altAddress):
                                                call altAddress.0x70a08231 with:
                                                     gas gas_remaining - 710 wei
                                                    args this.address
                                                if ext_call.success:
                                                    if ext_code.size(tipAddress):
                                                        call tipAddress.read() with:
                                                             gas gas_remaining - 710 wei
                                                        if ext_call.success:
                                                            if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                    if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                        if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                            if (uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                if ext_code.size(lpsAddress):
                                                                                    call lpsAddress.0x69d3e20e with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                    if ext_call.success:
                                                                                        if ext_code.size(lpsAddress):
                                                                                            call lpsAddress.0x3452f51d with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args msg.sender, uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                            if ext_call.success:
                                                                                                if ext_code.size(address(arg1)):
                                                                                                    call address(arg1).0x23b872dd with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args msg.sender, address(this.address), uint128(arg2)
                                                                                                    if ext_call.success:
            else:
                if ext_code.size(tipAddress):
                    call tipAddress.read() with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if (uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                            if ext_code.size(lpsAddress):
                                call lpsAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if not ext_call.return_data[0]:
                                        if (1000000000 * 10^18 * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                            if ext_code.size(lpsAddress):
                                                call lpsAddress.0x69d3e20e with:
                                                     gas gas_remaining - 710 wei
                                                    args uint128((1000000000 * 10^18 * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                if ext_call.success:
                                                    if ext_code.size(lpsAddress):
                                                        call lpsAddress.0x3452f51d with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, uint128((1000000000 * 10^18 * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                        if ext_call.success:
                                                            if ext_code.size(address(arg1)):
                                                                call address(arg1).0x23b872dd with:
                                                                     gas gas_remaining - 710 wei
                                                                    args msg.sender, address(this.address), uint128(arg2)
                                                                if ext_call.success:
                                    else:
                                        if ext_code.size(lpsAddress):
                                            call lpsAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            if ext_call.success:
                                                if ext_code.size(refAddress):
                                                    call refAddress.0x70a08231 with:
                                                         gas gas_remaining - 710 wei
                                                        args this.address
                                                    if ext_call.success:
                                                        if ext_code.size(altAddress):
                                                            call altAddress.0x70a08231 with:
                                                                 gas gas_remaining - 710 wei
                                                                args this.address
                                                            if ext_call.success:
                                                                if ext_code.size(tipAddress):
                                                                    call tipAddress.read() with:
                                                                         gas gas_remaining - 710 wei
                                                                    if ext_call.success:
                                                                        if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                            if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                    if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                                        if (uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                            if ext_code.size(lpsAddress):
                                                                                                call lpsAddress.0x69d3e20e with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args uint128((uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                if ext_call.success:
                                                                                                    if ext_code.size(lpsAddress):
                                                                                                        call lpsAddress.0x3452f51d with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args msg.sender, uint128((uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                        if ext_call.success:
                                                                                                            if ext_code.size(address(arg1)):
                                                                                                                call address(arg1).0x23b872dd with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args msg.sender, address(this.address), uint128(arg2)
                                                                                                                if ext_call.success:
    else:
        if owner == msg.sender:
            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
            if altAddress != address(arg1):
                require refAddress == address(arg1)
                if ext_code.size(lpsAddress):
                    call lpsAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if not ext_call.return_data[0]:
                            if (1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                if ext_code.size(lpsAddress):
                                    call lpsAddress.0x69d3e20e with:
                                         gas gas_remaining - 710 wei
                                        args uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                    if ext_call.success:
                                        if ext_code.size(lpsAddress):
                                            call lpsAddress.0x3452f51d with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                            if ext_call.success:
                                                if ext_code.size(address(arg1)):
                                                    call address(arg1).0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, address(this.address), uint128(arg2)
                                                    if ext_call.success:
                        else:
                            if ext_code.size(lpsAddress):
                                call lpsAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if ext_code.size(refAddress):
                                        call refAddress.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        if ext_call.success:
                                            if ext_code.size(altAddress):
                                                call altAddress.0x70a08231 with:
                                                     gas gas_remaining - 710 wei
                                                    args this.address
                                                if ext_call.success:
                                                    if ext_code.size(tipAddress):
                                                        call tipAddress.read() with:
                                                             gas gas_remaining - 710 wei
                                                        if ext_call.success:
                                                            if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                    if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                        if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                            if (uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                if ext_code.size(lpsAddress):
                                                                                    call lpsAddress.0x69d3e20e with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                    if ext_call.success:
                                                                                        if ext_code.size(lpsAddress):
                                                                                            call lpsAddress.0x3452f51d with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args msg.sender, uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                            if ext_call.success:
                                                                                                if ext_code.size(address(arg1)):
                                                                                                    call address(arg1).0x23b872dd with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args msg.sender, address(this.address), uint128(arg2)
                                                                                                    if ext_call.success:
            else:
                if refAddress == address(arg1):
                    if ext_code.size(lpsAddress):
                        call lpsAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            if not ext_call.return_data[0]:
                                if (1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                    if ext_code.size(lpsAddress):
                                        call lpsAddress.0x69d3e20e with:
                                             gas gas_remaining - 710 wei
                                            args uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                        if ext_call.success:
                                            if ext_code.size(lpsAddress):
                                                call lpsAddress.0x3452f51d with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                if ext_call.success:
                                                    if ext_code.size(address(arg1)):
                                                        call address(arg1).0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, address(this.address), uint128(arg2)
                                                        if ext_call.success:
                            else:
                                if ext_code.size(lpsAddress):
                                    call lpsAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    if ext_call.success:
                                        if ext_code.size(refAddress):
                                            call refAddress.0x70a08231 with:
                                                 gas gas_remaining - 710 wei
                                                args this.address
                                            if ext_call.success:
                                                if ext_code.size(altAddress):
                                                    call altAddress.0x70a08231 with:
                                                         gas gas_remaining - 710 wei
                                                        args this.address
                                                    if ext_call.success:
                                                        if ext_code.size(tipAddress):
                                                            call tipAddress.read() with:
                                                                 gas gas_remaining - 710 wei
                                                            if ext_call.success:
                                                                if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                    if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                        if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                            if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                                if (uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                    if ext_code.size(lpsAddress):
                                                                                        call lpsAddress.0x69d3e20e with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                        if ext_call.success:
                                                                                            if ext_code.size(lpsAddress):
                                                                                                call lpsAddress.0x3452f51d with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args msg.sender, uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                if ext_call.success:
                                                                                                    if ext_code.size(address(arg1)):
                                                                                                        call address(arg1).0x23b872dd with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args msg.sender, address(this.address), uint128(arg2)
                                                                                                        if ext_call.success:
                else:
                    if ext_code.size(tipAddress):
                        call tipAddress.read() with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            if (uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                if ext_code.size(lpsAddress):
                                    call lpsAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    if ext_call.success:
                                        if not ext_call.return_data[0]:
                                            if (1000000000 * 10^18 * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                if ext_code.size(lpsAddress):
                                                    call lpsAddress.0x69d3e20e with:
                                                         gas gas_remaining - 710 wei
                                                        args uint128((1000000000 * 10^18 * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                    if ext_call.success:
                                                        if ext_code.size(lpsAddress):
                                                            call lpsAddress.0x3452f51d with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, uint128((1000000000 * 10^18 * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                            if ext_call.success:
                                                                if ext_code.size(address(arg1)):
                                                                    call address(arg1).0x23b872dd with:
                                                                         gas gas_remaining - 710 wei
                                                                        args msg.sender, address(this.address), uint128(arg2)
                                                                    if ext_call.success:
                                        else:
                                            if ext_code.size(lpsAddress):
                                                call lpsAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                if ext_call.success:
                                                    if ext_code.size(refAddress):
                                                        call refAddress.0x70a08231 with:
                                                             gas gas_remaining - 710 wei
                                                            args this.address
                                                        if ext_call.success:
                                                            if ext_code.size(altAddress):
                                                                call altAddress.0x70a08231 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args this.address
                                                                if ext_call.success:
                                                                    if ext_code.size(tipAddress):
                                                                        call tipAddress.read() with:
                                                                             gas gas_remaining - 710 wei
                                                                        if ext_call.success:
                                                                            if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                                if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                    if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                        if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                                            if (uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                if ext_code.size(lpsAddress):
                                                                                                    call lpsAddress.0x69d3e20e with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args uint128((uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                    if ext_call.success:
                                                                                                        if ext_code.size(lpsAddress):
                                                                                                            call lpsAddress.0x3452f51d with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                args msg.sender, uint128((uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                            if ext_call.success:
                                                                                                                if ext_code.size(address(arg1)):
                                                                                                                    call address(arg1).0x23b872dd with:
                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                        args msg.sender, address(this.address), uint128(arg2)
                                                                                                                    if ext_call.success:
        else:
            require authorityAddress
            if ext_code.size(authorityAddress):
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                if ext_call.success:
                    require ext_call.return_data[0]
                    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                    if altAddress != address(arg1):
                        require refAddress == address(arg1)
                        if ext_code.size(lpsAddress):
                            call lpsAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                if not ext_call.return_data[0]:
                                    if (1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                        if ext_code.size(lpsAddress):
                                            call lpsAddress.0x69d3e20e with:
                                                 gas gas_remaining - 710 wei
                                                args uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                            if ext_call.success:
                                                if ext_code.size(lpsAddress):
                                                    call lpsAddress.0x3452f51d with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                    if ext_call.success:
                                                        if ext_code.size(address(arg1)):
                                                            call address(arg1).0x23b872dd with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, address(this.address), uint128(arg2)
                                                            if ext_call.success:
                                else:
                                    if ext_code.size(lpsAddress):
                                        call lpsAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        if ext_call.success:
                                            if ext_code.size(refAddress):
                                                call refAddress.0x70a08231 with:
                                                     gas gas_remaining - 710 wei
                                                    args this.address
                                                if ext_call.success:
                                                    if ext_code.size(altAddress):
                                                        call altAddress.0x70a08231 with:
                                                             gas gas_remaining - 710 wei
                                                            args this.address
                                                        if ext_call.success:
                                                            if ext_code.size(tipAddress):
                                                                call tipAddress.read() with:
                                                                     gas gas_remaining - 710 wei
                                                                if ext_call.success:
                                                                    if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                        if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                            if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                                    if (uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                        if ext_code.size(lpsAddress):
                                                                                            call lpsAddress.0x69d3e20e with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                            if ext_call.success:
                                                                                                if ext_code.size(lpsAddress):
                                                                                                    call lpsAddress.0x3452f51d with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args msg.sender, uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                    if ext_call.success:
                                                                                                        if ext_code.size(address(arg1)):
                                                                                                            call address(arg1).0x23b872dd with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                args msg.sender, address(this.address), uint128(arg2)
                                                                                                            if ext_call.success:
                    else:
                        if refAddress == address(arg1):
                            if ext_code.size(lpsAddress):
                                call lpsAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if not ext_call.return_data[0]:
                                        if (1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                            if ext_code.size(lpsAddress):
                                                call lpsAddress.0x69d3e20e with:
                                                     gas gas_remaining - 710 wei
                                                    args uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                if ext_call.success:
                                                    if ext_code.size(lpsAddress):
                                                        call lpsAddress.0x3452f51d with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, uint128((1000000000 * 10^18 * uint128(arg2)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                        if ext_call.success:
                                                            if ext_code.size(address(arg1)):
                                                                call address(arg1).0x23b872dd with:
                                                                     gas gas_remaining - 710 wei
                                                                    args msg.sender, address(this.address), uint128(arg2)
                                                                if ext_call.success:
                                    else:
                                        if ext_code.size(lpsAddress):
                                            call lpsAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            if ext_call.success:
                                                if ext_code.size(refAddress):
                                                    call refAddress.0x70a08231 with:
                                                         gas gas_remaining - 710 wei
                                                        args this.address
                                                    if ext_call.success:
                                                        if ext_code.size(altAddress):
                                                            call altAddress.0x70a08231 with:
                                                                 gas gas_remaining - 710 wei
                                                                args this.address
                                                            if ext_call.success:
                                                                if ext_code.size(tipAddress):
                                                                    call tipAddress.read() with:
                                                                         gas gas_remaining - 710 wei
                                                                    if ext_call.success:
                                                                        if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                            if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                    if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                                        if (uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                            if ext_code.size(lpsAddress):
                                                                                                call lpsAddress.0x69d3e20e with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                if ext_call.success:
                                                                                                    if ext_code.size(lpsAddress):
                                                                                                        call lpsAddress.0x3452f51d with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args msg.sender, uint128((uint128(arg2) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                        if ext_call.success:
                                                                                                            if ext_code.size(address(arg1)):
                                                                                                                call address(arg1).0x23b872dd with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args msg.sender, address(this.address), uint128(arg2)
                                                                                                                if ext_call.success:
                        else:
                            if ext_code.size(tipAddress):
                                call tipAddress.read() with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if (uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(arg2) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                        if ext_code.size(lpsAddress):
                                            call lpsAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            if ext_call.success:
                                                if not ext_call.return_data[0]:
                                                    if (1000000000 * 10^18 * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                        if ext_code.size(lpsAddress):
                                                            call lpsAddress.0x69d3e20e with:
                                                                 gas gas_remaining - 710 wei
                                                                args uint128((1000000000 * 10^18 * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                            if ext_call.success:
                                                                if ext_code.size(lpsAddress):
                                                                    call lpsAddress.0x3452f51d with:
                                                                         gas gas_remaining - 710 wei
                                                                        args msg.sender, uint128((1000000000 * 10^18 * uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                    if ext_call.success:
                                                                        if ext_code.size(address(arg1)):
                                                                            call address(arg1).0x23b872dd with:
                                                                                 gas gas_remaining - 710 wei
                                                                                args msg.sender, address(this.address), uint128(arg2)
                                                                            if ext_call.success:
                                                else:
                                                    if ext_code.size(lpsAddress):
                                                        call lpsAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        if ext_call.success:
                                                            if ext_code.size(refAddress):
                                                                call refAddress.0x70a08231 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args this.address
                                                                if ext_call.success:
                                                                    if ext_code.size(altAddress):
                                                                        call altAddress.0x70a08231 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args this.address
                                                                        if ext_call.success:
                                                                            if ext_code.size(tipAddress):
                                                                                call tipAddress.read() with:
                                                                                     gas gas_remaining - 710 wei
                                                                                if ext_call.success:
                                                                                    if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                                        if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                            if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                                if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                                                    if (uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                        if ext_code.size(lpsAddress):
                                                                                                            call lpsAddress.0x69d3e20e with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                args uint128((uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                            if ext_call.success:
                                                                                                                if ext_code.size(lpsAddress):
                                                                                                                    call lpsAddress.0x3452f51d with:
                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                        args msg.sender, uint128((uint128((uint128(arg2) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                    if ext_call.success:
                                                                                                                        if ext_code.size(address(arg1)):
                                                                                                                            call address(arg1).0x23b872dd with:
                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                args msg.sender, address(this.address), uint128(arg2)
                                                                                                                            if ext_call.success:
    revert
}

function exit(address arg1, uint128 arg2) {
    if msg.sender == this.address:
        emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
        if altAddress != arg1:
            require refAddress == arg1
            if ext_code.size(lpsAddress):
                call lpsAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        if (1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18):
                            if ext_code.size(refAddress):
                                call refAddress.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                if ext_call.success:
                                    if ext_code.size(altAddress):
                                        call altAddress.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        if ext_call.success:
                                            if ext_code.size(tipAddress):
                                                call tipAddress.read() with:
                                                     gas gas_remaining - 710 wei
                                                if ext_call.success:
                                                    if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                        if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                            if arg2 == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                if ext_code.size(lpsAddress):
                                                                    call lpsAddress.0x8402181f with:
                                                                         gas gas_remaining - 710 wei
                                                                        args msg.sender, uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                    if ext_call.success:
                                                                        if ext_code.size(lpsAddress):
                                                                            call lpsAddress.0x90bc1693 with:
                                                                                 gas gas_remaining - 710 wei
                                                                                args uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                            if ext_call.success:
                                                                                if ext_code.size(arg1):
                                                                                    call arg1.0xa9059cbb with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args msg.sender, arg2
                                                                                    if ext_call.success:
                                                            else:
                                                                if (gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                    if ext_code.size(lpsAddress):
                                                                        call lpsAddress.0x8402181f with:
                                                                             gas gas_remaining - 710 wei
                                                                            args msg.sender, uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                        if ext_call.success:
                                                                            if ext_code.size(lpsAddress):
                                                                                call lpsAddress.0x90bc1693 with:
                                                                                     gas gas_remaining - 710 wei
                                                                                    args uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                if ext_call.success:
                                                                                    if ext_code.size(arg1):
                                                                                        call arg1.0xa9059cbb with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args msg.sender, arg2
                                                                                        if ext_call.success:
                    else:
                        if ext_code.size(lpsAddress):
                            call lpsAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                if ext_code.size(refAddress):
                                    call refAddress.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    if ext_call.success:
                                        if ext_code.size(altAddress):
                                            call altAddress.0x70a08231 with:
                                                 gas gas_remaining - 710 wei
                                                args this.address
                                            if ext_call.success:
                                                if ext_code.size(tipAddress):
                                                    call tipAddress.read() with:
                                                         gas gas_remaining - 710 wei
                                                    if ext_call.success:
                                                        if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                            if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                    if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                        if (arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                            if ext_code.size(refAddress):
                                                                                call refAddress.0x70a08231 with:
                                                                                     gas gas_remaining - 710 wei
                                                                                    args this.address
                                                                                if ext_call.success:
                                                                                    if ext_code.size(altAddress):
                                                                                        call altAddress.0x70a08231 with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args this.address
                                                                                        if ext_call.success:
                                                                                            if ext_code.size(tipAddress):
                                                                                                call tipAddress.read() with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                if ext_call.success:
                                                                                                    if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                                                        if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                                            if arg2 == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                                                if ext_code.size(lpsAddress):
                                                                                                                    call lpsAddress.0x8402181f with:
                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                        args msg.sender, uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                    if ext_call.success:
                                                                                                                        if ext_code.size(lpsAddress):
                                                                                                                            call lpsAddress.0x90bc1693 with:
                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                args uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                            if ext_call.success:
                                                                                                                                if ext_code.size(arg1):
                                                                                                                                    call arg1.0xa9059cbb with:
                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                        args msg.sender, arg2
                                                                                                                                    if ext_call.success:
                                                                                                            else:
                                                                                                                if (gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                                                                    if ext_code.size(lpsAddress):
                                                                                                                        call lpsAddress.0x8402181f with:
                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                            args msg.sender, uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                        if ext_call.success:
                                                                                                                            if ext_code.size(lpsAddress):
                                                                                                                                call lpsAddress.0x90bc1693 with:
                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                    args uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                                if ext_call.success:
                                                                                                                                    if ext_code.size(arg1):
                                                                                                                                        call arg1.0xa9059cbb with:
                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                            args msg.sender, arg2
                                                                                                                                        if ext_call.success:
        else:
            if refAddress == arg1:
                if ext_code.size(lpsAddress):
                    call lpsAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if not ext_call.return_data[0]:
                            if (1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18):
                                if ext_code.size(refAddress):
                                    call refAddress.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    if ext_call.success:
                                        if ext_code.size(altAddress):
                                            call altAddress.0x70a08231 with:
                                                 gas gas_remaining - 710 wei
                                                args this.address
                                            if ext_call.success:
                                                if ext_code.size(tipAddress):
                                                    call tipAddress.read() with:
                                                         gas gas_remaining - 710 wei
                                                    if ext_call.success:
                                                        if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                            if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                if arg2 == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                    if ext_code.size(lpsAddress):
                                                                        call lpsAddress.0x8402181f with:
                                                                             gas gas_remaining - 710 wei
                                                                            args msg.sender, uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                        if ext_call.success:
                                                                            if ext_code.size(lpsAddress):
                                                                                call lpsAddress.0x90bc1693 with:
                                                                                     gas gas_remaining - 710 wei
                                                                                    args uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                if ext_call.success:
                                                                                    if ext_code.size(arg1):
                                                                                        call arg1.0xa9059cbb with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args msg.sender, arg2
                                                                                        if ext_call.success:
                                                                else:
                                                                    if (gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                        if ext_code.size(lpsAddress):
                                                                            call lpsAddress.0x8402181f with:
                                                                                 gas gas_remaining - 710 wei
                                                                                args msg.sender, uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                            if ext_call.success:
                                                                                if ext_code.size(lpsAddress):
                                                                                    call lpsAddress.0x90bc1693 with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                    if ext_call.success:
                                                                                        if ext_code.size(arg1):
                                                                                            call arg1.0xa9059cbb with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args msg.sender, arg2
                                                                                            if ext_call.success:
                        else:
                            if ext_code.size(lpsAddress):
                                call lpsAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if ext_code.size(refAddress):
                                        call refAddress.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        if ext_call.success:
                                            if ext_code.size(altAddress):
                                                call altAddress.0x70a08231 with:
                                                     gas gas_remaining - 710 wei
                                                    args this.address
                                                if ext_call.success:
                                                    if ext_code.size(tipAddress):
                                                        call tipAddress.read() with:
                                                             gas gas_remaining - 710 wei
                                                        if ext_call.success:
                                                            if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                    if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                        if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                            if (arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                if ext_code.size(refAddress):
                                                                                    call refAddress.0x70a08231 with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args this.address
                                                                                    if ext_call.success:
                                                                                        if ext_code.size(altAddress):
                                                                                            call altAddress.0x70a08231 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args this.address
                                                                                            if ext_call.success:
                                                                                                if ext_code.size(tipAddress):
                                                                                                    call tipAddress.read() with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                    if ext_call.success:
                                                                                                        if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                                                            if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                                                if arg2 == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                                                    if ext_code.size(lpsAddress):
                                                                                                                        call lpsAddress.0x8402181f with:
                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                            args msg.sender, uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                        if ext_call.success:
                                                                                                                            if ext_code.size(lpsAddress):
                                                                                                                                call lpsAddress.0x90bc1693 with:
                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                    args uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                if ext_call.success:
                                                                                                                                    if ext_code.size(arg1):
                                                                                                                                        call arg1.0xa9059cbb with:
                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                            args msg.sender, arg2
                                                                                                                                        if ext_call.success:
                                                                                                                else:
                                                                                                                    if (gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                                                                        if ext_code.size(lpsAddress):
                                                                                                                            call lpsAddress.0x8402181f with:
                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                args msg.sender, uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                            if ext_call.success:
                                                                                                                                if ext_code.size(lpsAddress):
                                                                                                                                    call lpsAddress.0x90bc1693 with:
                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                        args uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                                    if ext_call.success:
                                                                                                                                        if ext_code.size(arg1):
                                                                                                                                            call arg1.0xa9059cbb with:
                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                args msg.sender, arg2
                                                                                                                                            if ext_call.success:
            else:
                if ext_code.size(tipAddress):
                    call tipAddress.read() with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if (arg2 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((arg2 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                            if ext_code.size(lpsAddress):
                                call lpsAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if not ext_call.return_data[0]:
                                        if (1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                            if ext_code.size(refAddress):
                                                call refAddress.0x70a08231 with:
                                                     gas gas_remaining - 710 wei
                                                    args this.address
                                                if ext_call.success:
                                                    if ext_code.size(altAddress):
                                                        call altAddress.0x70a08231 with:
                                                             gas gas_remaining - 710 wei
                                                            args this.address
                                                        if ext_call.success:
                                                            if ext_code.size(tipAddress):
                                                                call tipAddress.read() with:
                                                                     gas gas_remaining - 710 wei
                                                                if ext_call.success:
                                                                    if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                        if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                            if uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                if ext_code.size(lpsAddress):
                                                                                    call lpsAddress.0x8402181f with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args msg.sender, uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                    if ext_call.success:
                                                                                        if ext_code.size(lpsAddress):
                                                                                            call lpsAddress.0x90bc1693 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                            if ext_call.success:
                                                                                                if ext_code.size(arg1):
                                                                                                    call arg1.0xa9059cbb with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args msg.sender, arg2
                                                                                                    if ext_call.success:
                                                                            else:
                                                                                if (gap * uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                                    if ext_code.size(lpsAddress):
                                                                                        call lpsAddress.0x8402181f with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args msg.sender, uint128((gap * uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                        if ext_call.success:
                                                                                            if ext_code.size(lpsAddress):
                                                                                                call lpsAddress.0x90bc1693 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args uint128((gap * uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                if ext_call.success:
                                                                                                    if ext_code.size(arg1):
                                                                                                        call arg1.0xa9059cbb with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args msg.sender, arg2
                                                                                                        if ext_call.success:
                                    else:
                                        if ext_code.size(lpsAddress):
                                            call lpsAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            if ext_call.success:
                                                if ext_code.size(refAddress):
                                                    call refAddress.0x70a08231 with:
                                                         gas gas_remaining - 710 wei
                                                        args this.address
                                                    if ext_call.success:
                                                        if ext_code.size(altAddress):
                                                            call altAddress.0x70a08231 with:
                                                                 gas gas_remaining - 710 wei
                                                                args this.address
                                                            if ext_call.success:
                                                                if ext_code.size(tipAddress):
                                                                    call tipAddress.read() with:
                                                                         gas gas_remaining - 710 wei
                                                                    if ext_call.success:
                                                                        if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                            if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                    if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                                        if (uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                            if ext_code.size(refAddress):
                                                                                                call refAddress.0x70a08231 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args this.address
                                                                                                if ext_call.success:
                                                                                                    if ext_code.size(altAddress):
                                                                                                        call altAddress.0x70a08231 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args this.address
                                                                                                        if ext_call.success:
                                                                                                            if ext_code.size(tipAddress):
                                                                                                                call tipAddress.read() with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                if ext_call.success:
                                                                                                                    if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                                                                        if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                                                            if uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                                                                if ext_code.size(lpsAddress):
                                                                                                                                    call lpsAddress.0x8402181f with:
                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                        args msg.sender, uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                    if ext_call.success:
                                                                                                                                        if ext_code.size(lpsAddress):
                                                                                                                                            call lpsAddress.0x90bc1693 with:
                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                args uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                            if ext_call.success:
                                                                                                                                                if ext_code.size(arg1):
                                                                                                                                                    call arg1.0xa9059cbb with:
                                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                                        args msg.sender, arg2
                                                                                                                                                    if ext_call.success:
                                                                                                                            else:
                                                                                                                                if (gap * uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                                                                                    if ext_code.size(lpsAddress):
                                                                                                                                        call lpsAddress.0x8402181f with:
                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                            args msg.sender, uint128((gap * uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                                        if ext_call.success:
                                                                                                                                            if ext_code.size(lpsAddress):
                                                                                                                                                call lpsAddress.0x90bc1693 with:
                                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                                    args uint128((gap * uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                                                if ext_call.success:
                                                                                                                                                    if ext_code.size(arg1):
                                                                                                                                                        call arg1.0xa9059cbb with:
                                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                                            args msg.sender, arg2
                                                                                                                                                        if ext_call.success:
    else:
        if owner == msg.sender:
            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
            if altAddress != arg1:
                require refAddress == arg1
                if ext_code.size(lpsAddress):
                    call lpsAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if not ext_call.return_data[0]:
                            if (1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18):
                                if ext_code.size(refAddress):
                                    call refAddress.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    if ext_call.success:
                                        if ext_code.size(altAddress):
                                            call altAddress.0x70a08231 with:
                                                 gas gas_remaining - 710 wei
                                                args this.address
                                            if ext_call.success:
                                                if ext_code.size(tipAddress):
                                                    call tipAddress.read() with:
                                                         gas gas_remaining - 710 wei
                                                    if ext_call.success:
                                                        if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                            if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                if arg2 == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                    if ext_code.size(lpsAddress):
                                                                        call lpsAddress.0x8402181f with:
                                                                             gas gas_remaining - 710 wei
                                                                            args msg.sender, uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                        if ext_call.success:
                                                                            if ext_code.size(lpsAddress):
                                                                                call lpsAddress.0x90bc1693 with:
                                                                                     gas gas_remaining - 710 wei
                                                                                    args uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                if ext_call.success:
                                                                                    if ext_code.size(arg1):
                                                                                        call arg1.0xa9059cbb with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args msg.sender, arg2
                                                                                        if ext_call.success:
                                                                else:
                                                                    if (gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                        if ext_code.size(lpsAddress):
                                                                            call lpsAddress.0x8402181f with:
                                                                                 gas gas_remaining - 710 wei
                                                                                args msg.sender, uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                            if ext_call.success:
                                                                                if ext_code.size(lpsAddress):
                                                                                    call lpsAddress.0x90bc1693 with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                    if ext_call.success:
                                                                                        if ext_code.size(arg1):
                                                                                            call arg1.0xa9059cbb with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args msg.sender, arg2
                                                                                            if ext_call.success:
                        else:
                            if ext_code.size(lpsAddress):
                                call lpsAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if ext_code.size(refAddress):
                                        call refAddress.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        if ext_call.success:
                                            if ext_code.size(altAddress):
                                                call altAddress.0x70a08231 with:
                                                     gas gas_remaining - 710 wei
                                                    args this.address
                                                if ext_call.success:
                                                    if ext_code.size(tipAddress):
                                                        call tipAddress.read() with:
                                                             gas gas_remaining - 710 wei
                                                        if ext_call.success:
                                                            if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                    if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                        if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                            if (arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                if ext_code.size(refAddress):
                                                                                    call refAddress.0x70a08231 with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args this.address
                                                                                    if ext_call.success:
                                                                                        if ext_code.size(altAddress):
                                                                                            call altAddress.0x70a08231 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args this.address
                                                                                            if ext_call.success:
                                                                                                if ext_code.size(tipAddress):
                                                                                                    call tipAddress.read() with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                    if ext_call.success:
                                                                                                        if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                                                            if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                                                if arg2 == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                                                    if ext_code.size(lpsAddress):
                                                                                                                        call lpsAddress.0x8402181f with:
                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                            args msg.sender, uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                        if ext_call.success:
                                                                                                                            if ext_code.size(lpsAddress):
                                                                                                                                call lpsAddress.0x90bc1693 with:
                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                    args uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                if ext_call.success:
                                                                                                                                    if ext_code.size(arg1):
                                                                                                                                        call arg1.0xa9059cbb with:
                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                            args msg.sender, arg2
                                                                                                                                        if ext_call.success:
                                                                                                                else:
                                                                                                                    if (gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                                                                        if ext_code.size(lpsAddress):
                                                                                                                            call lpsAddress.0x8402181f with:
                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                args msg.sender, uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                            if ext_call.success:
                                                                                                                                if ext_code.size(lpsAddress):
                                                                                                                                    call lpsAddress.0x90bc1693 with:
                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                        args uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                                    if ext_call.success:
                                                                                                                                        if ext_code.size(arg1):
                                                                                                                                            call arg1.0xa9059cbb with:
                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                args msg.sender, arg2
                                                                                                                                            if ext_call.success:
            else:
                if refAddress == arg1:
                    if ext_code.size(lpsAddress):
                        call lpsAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            if not ext_call.return_data[0]:
                                if (1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18):
                                    if ext_code.size(refAddress):
                                        call refAddress.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        if ext_call.success:
                                            if ext_code.size(altAddress):
                                                call altAddress.0x70a08231 with:
                                                     gas gas_remaining - 710 wei
                                                    args this.address
                                                if ext_call.success:
                                                    if ext_code.size(tipAddress):
                                                        call tipAddress.read() with:
                                                             gas gas_remaining - 710 wei
                                                        if ext_call.success:
                                                            if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                    if arg2 == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                        if ext_code.size(lpsAddress):
                                                                            call lpsAddress.0x8402181f with:
                                                                                 gas gas_remaining - 710 wei
                                                                                args msg.sender, uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                            if ext_call.success:
                                                                                if ext_code.size(lpsAddress):
                                                                                    call lpsAddress.0x90bc1693 with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                    if ext_call.success:
                                                                                        if ext_code.size(arg1):
                                                                                            call arg1.0xa9059cbb with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args msg.sender, arg2
                                                                                            if ext_call.success:
                                                                    else:
                                                                        if (gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                            if ext_code.size(lpsAddress):
                                                                                call lpsAddress.0x8402181f with:
                                                                                     gas gas_remaining - 710 wei
                                                                                    args msg.sender, uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                if ext_call.success:
                                                                                    if ext_code.size(lpsAddress):
                                                                                        call lpsAddress.0x90bc1693 with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                        if ext_call.success:
                                                                                            if ext_code.size(arg1):
                                                                                                call arg1.0xa9059cbb with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args msg.sender, arg2
                                                                                                if ext_call.success:
                            else:
                                if ext_code.size(lpsAddress):
                                    call lpsAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    if ext_call.success:
                                        if ext_code.size(refAddress):
                                            call refAddress.0x70a08231 with:
                                                 gas gas_remaining - 710 wei
                                                args this.address
                                            if ext_call.success:
                                                if ext_code.size(altAddress):
                                                    call altAddress.0x70a08231 with:
                                                         gas gas_remaining - 710 wei
                                                        args this.address
                                                    if ext_call.success:
                                                        if ext_code.size(tipAddress):
                                                            call tipAddress.read() with:
                                                                 gas gas_remaining - 710 wei
                                                            if ext_call.success:
                                                                if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                    if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                        if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                            if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                                if (arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                    if ext_code.size(refAddress):
                                                                                        call refAddress.0x70a08231 with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args this.address
                                                                                        if ext_call.success:
                                                                                            if ext_code.size(altAddress):
                                                                                                call altAddress.0x70a08231 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args this.address
                                                                                                if ext_call.success:
                                                                                                    if ext_code.size(tipAddress):
                                                                                                        call tipAddress.read() with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                        if ext_call.success:
                                                                                                            if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                                                                if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                                                    if arg2 == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                                                        if ext_code.size(lpsAddress):
                                                                                                                            call lpsAddress.0x8402181f with:
                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                args msg.sender, uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                            if ext_call.success:
                                                                                                                                if ext_code.size(lpsAddress):
                                                                                                                                    call lpsAddress.0x90bc1693 with:
                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                        args uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                    if ext_call.success:
                                                                                                                                        if ext_code.size(arg1):
                                                                                                                                            call arg1.0xa9059cbb with:
                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                args msg.sender, arg2
                                                                                                                                            if ext_call.success:
                                                                                                                    else:
                                                                                                                        if (gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                                                                            if ext_code.size(lpsAddress):
                                                                                                                                call lpsAddress.0x8402181f with:
                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                    args msg.sender, uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                                if ext_call.success:
                                                                                                                                    if ext_code.size(lpsAddress):
                                                                                                                                        call lpsAddress.0x90bc1693 with:
                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                            args uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                                        if ext_call.success:
                                                                                                                                            if ext_code.size(arg1):
                                                                                                                                                call arg1.0xa9059cbb with:
                                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                                    args msg.sender, arg2
                                                                                                                                                if ext_call.success:
                else:
                    if ext_code.size(tipAddress):
                        call tipAddress.read() with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            if (arg2 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((arg2 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                if ext_code.size(lpsAddress):
                                    call lpsAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    if ext_call.success:
                                        if not ext_call.return_data[0]:
                                            if (1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                if ext_code.size(refAddress):
                                                    call refAddress.0x70a08231 with:
                                                         gas gas_remaining - 710 wei
                                                        args this.address
                                                    if ext_call.success:
                                                        if ext_code.size(altAddress):
                                                            call altAddress.0x70a08231 with:
                                                                 gas gas_remaining - 710 wei
                                                                args this.address
                                                            if ext_call.success:
                                                                if ext_code.size(tipAddress):
                                                                    call tipAddress.read() with:
                                                                         gas gas_remaining - 710 wei
                                                                    if ext_call.success:
                                                                        if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                            if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                if uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                    if ext_code.size(lpsAddress):
                                                                                        call lpsAddress.0x8402181f with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args msg.sender, uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                        if ext_call.success:
                                                                                            if ext_code.size(lpsAddress):
                                                                                                call lpsAddress.0x90bc1693 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                if ext_call.success:
                                                                                                    if ext_code.size(arg1):
                                                                                                        call arg1.0xa9059cbb with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args msg.sender, arg2
                                                                                                        if ext_call.success:
                                                                                else:
                                                                                    if (gap * uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                                        if ext_code.size(lpsAddress):
                                                                                            call lpsAddress.0x8402181f with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args msg.sender, uint128((gap * uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                            if ext_call.success:
                                                                                                if ext_code.size(lpsAddress):
                                                                                                    call lpsAddress.0x90bc1693 with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args uint128((gap * uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                    if ext_call.success:
                                                                                                        if ext_code.size(arg1):
                                                                                                            call arg1.0xa9059cbb with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                args msg.sender, arg2
                                                                                                            if ext_call.success:
                                        else:
                                            if ext_code.size(lpsAddress):
                                                call lpsAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                if ext_call.success:
                                                    if ext_code.size(refAddress):
                                                        call refAddress.0x70a08231 with:
                                                             gas gas_remaining - 710 wei
                                                            args this.address
                                                        if ext_call.success:
                                                            if ext_code.size(altAddress):
                                                                call altAddress.0x70a08231 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args this.address
                                                                if ext_call.success:
                                                                    if ext_code.size(tipAddress):
                                                                        call tipAddress.read() with:
                                                                             gas gas_remaining - 710 wei
                                                                        if ext_call.success:
                                                                            if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                                if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                    if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                        if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                                            if (uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                if ext_code.size(refAddress):
                                                                                                    call refAddress.0x70a08231 with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args this.address
                                                                                                    if ext_call.success:
                                                                                                        if ext_code.size(altAddress):
                                                                                                            call altAddress.0x70a08231 with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                args this.address
                                                                                                            if ext_call.success:
                                                                                                                if ext_code.size(tipAddress):
                                                                                                                    call tipAddress.read() with:
                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                    if ext_call.success:
                                                                                                                        if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                                                                            if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                                                                if uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                                                                    if ext_code.size(lpsAddress):
                                                                                                                                        call lpsAddress.0x8402181f with:
                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                            args msg.sender, uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                        if ext_call.success:
                                                                                                                                            if ext_code.size(lpsAddress):
                                                                                                                                                call lpsAddress.0x90bc1693 with:
                                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                                    args uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                if ext_call.success:
                                                                                                                                                    if ext_code.size(arg1):
                                                                                                                                                        call arg1.0xa9059cbb with:
                                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                                            args msg.sender, arg2
                                                                                                                                                        if ext_call.success:
                                                                                                                                else:
                                                                                                                                    if (gap * uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                                                                                        if ext_code.size(lpsAddress):
                                                                                                                                            call lpsAddress.0x8402181f with:
                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                args msg.sender, uint128((gap * uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                                            if ext_call.success:
                                                                                                                                                if ext_code.size(lpsAddress):
                                                                                                                                                    call lpsAddress.0x90bc1693 with:
                                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                                        args uint128((gap * uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                                                    if ext_call.success:
                                                                                                                                                        if ext_code.size(arg1):
                                                                                                                                                            call arg1.0xa9059cbb with:
                                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                                args msg.sender, arg2
                                                                                                                                                            if ext_call.success:
        else:
            require authorityAddress
            if ext_code.size(authorityAddress):
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                if ext_call.success:
                    require ext_call.return_data[0]
                    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                    if altAddress != arg1:
                        require refAddress == arg1
                        if ext_code.size(lpsAddress):
                            call lpsAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                if not ext_call.return_data[0]:
                                    if (1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18):
                                        if ext_code.size(refAddress):
                                            call refAddress.0x70a08231 with:
                                                 gas gas_remaining - 710 wei
                                                args this.address
                                            if ext_call.success:
                                                if ext_code.size(altAddress):
                                                    call altAddress.0x70a08231 with:
                                                         gas gas_remaining - 710 wei
                                                        args this.address
                                                    if ext_call.success:
                                                        if ext_code.size(tipAddress):
                                                            call tipAddress.read() with:
                                                                 gas gas_remaining - 710 wei
                                                            if ext_call.success:
                                                                if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                    if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                        if arg2 == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                            if ext_code.size(lpsAddress):
                                                                                call lpsAddress.0x8402181f with:
                                                                                     gas gas_remaining - 710 wei
                                                                                    args msg.sender, uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                if ext_call.success:
                                                                                    if ext_code.size(lpsAddress):
                                                                                        call lpsAddress.0x90bc1693 with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                        if ext_call.success:
                                                                                            if ext_code.size(arg1):
                                                                                                call arg1.0xa9059cbb with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args msg.sender, arg2
                                                                                                if ext_call.success:
                                                                        else:
                                                                            if (gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                                if ext_code.size(lpsAddress):
                                                                                    call lpsAddress.0x8402181f with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args msg.sender, uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                    if ext_call.success:
                                                                                        if ext_code.size(lpsAddress):
                                                                                            call lpsAddress.0x90bc1693 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                            if ext_call.success:
                                                                                                if ext_code.size(arg1):
                                                                                                    call arg1.0xa9059cbb with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args msg.sender, arg2
                                                                                                    if ext_call.success:
                                else:
                                    if ext_code.size(lpsAddress):
                                        call lpsAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        if ext_call.success:
                                            if ext_code.size(refAddress):
                                                call refAddress.0x70a08231 with:
                                                     gas gas_remaining - 710 wei
                                                    args this.address
                                                if ext_call.success:
                                                    if ext_code.size(altAddress):
                                                        call altAddress.0x70a08231 with:
                                                             gas gas_remaining - 710 wei
                                                            args this.address
                                                        if ext_call.success:
                                                            if ext_code.size(tipAddress):
                                                                call tipAddress.read() with:
                                                                     gas gas_remaining - 710 wei
                                                                if ext_call.success:
                                                                    if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                        if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                            if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                                    if (arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                        if ext_code.size(refAddress):
                                                                                            call refAddress.0x70a08231 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args this.address
                                                                                            if ext_call.success:
                                                                                                if ext_code.size(altAddress):
                                                                                                    call altAddress.0x70a08231 with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args this.address
                                                                                                    if ext_call.success:
                                                                                                        if ext_code.size(tipAddress):
                                                                                                            call tipAddress.read() with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                            if ext_call.success:
                                                                                                                if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                                                                    if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                                                        if arg2 == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                                                            if ext_code.size(lpsAddress):
                                                                                                                                call lpsAddress.0x8402181f with:
                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                    args msg.sender, uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                if ext_call.success:
                                                                                                                                    if ext_code.size(lpsAddress):
                                                                                                                                        call lpsAddress.0x90bc1693 with:
                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                            args uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                        if ext_call.success:
                                                                                                                                            if ext_code.size(arg1):
                                                                                                                                                call arg1.0xa9059cbb with:
                                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                                    args msg.sender, arg2
                                                                                                                                                if ext_call.success:
                                                                                                                        else:
                                                                                                                            if (gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                                                                                if ext_code.size(lpsAddress):
                                                                                                                                    call lpsAddress.0x8402181f with:
                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                        args msg.sender, uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                                    if ext_call.success:
                                                                                                                                        if ext_code.size(lpsAddress):
                                                                                                                                            call lpsAddress.0x90bc1693 with:
                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                args uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                                            if ext_call.success:
                                                                                                                                                if ext_code.size(arg1):
                                                                                                                                                    call arg1.0xa9059cbb with:
                                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                                        args msg.sender, arg2
                                                                                                                                                    if ext_call.success:
                    else:
                        if refAddress == arg1:
                            if ext_code.size(lpsAddress):
                                call lpsAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if not ext_call.return_data[0]:
                                        if (1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18):
                                            if ext_code.size(refAddress):
                                                call refAddress.0x70a08231 with:
                                                     gas gas_remaining - 710 wei
                                                    args this.address
                                                if ext_call.success:
                                                    if ext_code.size(altAddress):
                                                        call altAddress.0x70a08231 with:
                                                             gas gas_remaining - 710 wei
                                                            args this.address
                                                        if ext_call.success:
                                                            if ext_code.size(tipAddress):
                                                                call tipAddress.read() with:
                                                                     gas gas_remaining - 710 wei
                                                                if ext_call.success:
                                                                    if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                        if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                            if arg2 == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                if ext_code.size(lpsAddress):
                                                                                    call lpsAddress.0x8402181f with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args msg.sender, uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                    if ext_call.success:
                                                                                        if ext_code.size(lpsAddress):
                                                                                            call lpsAddress.0x90bc1693 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                            if ext_call.success:
                                                                                                if ext_code.size(arg1):
                                                                                                    call arg1.0xa9059cbb with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args msg.sender, arg2
                                                                                                    if ext_call.success:
                                                                            else:
                                                                                if (gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                                    if ext_code.size(lpsAddress):
                                                                                        call lpsAddress.0x8402181f with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args msg.sender, uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                        if ext_call.success:
                                                                                            if ext_code.size(lpsAddress):
                                                                                                call lpsAddress.0x90bc1693 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args uint128((gap * uint128((1000000000 * 10^18 * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                if ext_call.success:
                                                                                                    if ext_code.size(arg1):
                                                                                                        call arg1.0xa9059cbb with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args msg.sender, arg2
                                                                                                        if ext_call.success:
                                    else:
                                        if ext_code.size(lpsAddress):
                                            call lpsAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            if ext_call.success:
                                                if ext_code.size(refAddress):
                                                    call refAddress.0x70a08231 with:
                                                         gas gas_remaining - 710 wei
                                                        args this.address
                                                    if ext_call.success:
                                                        if ext_code.size(altAddress):
                                                            call altAddress.0x70a08231 with:
                                                                 gas gas_remaining - 710 wei
                                                                args this.address
                                                            if ext_call.success:
                                                                if ext_code.size(tipAddress):
                                                                    call tipAddress.read() with:
                                                                         gas gas_remaining - 710 wei
                                                                    if ext_call.success:
                                                                        if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                            if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                    if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                                        if (arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                            if ext_code.size(refAddress):
                                                                                                call refAddress.0x70a08231 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args this.address
                                                                                                if ext_call.success:
                                                                                                    if ext_code.size(altAddress):
                                                                                                        call altAddress.0x70a08231 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args this.address
                                                                                                        if ext_call.success:
                                                                                                            if ext_code.size(tipAddress):
                                                                                                                call tipAddress.read() with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                if ext_call.success:
                                                                                                                    if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                                                                        if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                                                            if arg2 == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                                                                if ext_code.size(lpsAddress):
                                                                                                                                    call lpsAddress.0x8402181f with:
                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                        args msg.sender, uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                    if ext_call.success:
                                                                                                                                        if ext_code.size(lpsAddress):
                                                                                                                                            call lpsAddress.0x90bc1693 with:
                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                args uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                            if ext_call.success:
                                                                                                                                                if ext_code.size(arg1):
                                                                                                                                                    call arg1.0xa9059cbb with:
                                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                                        args msg.sender, arg2
                                                                                                                                                    if ext_call.success:
                                                                                                                            else:
                                                                                                                                if (gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                                                                                    if ext_code.size(lpsAddress):
                                                                                                                                        call lpsAddress.0x8402181f with:
                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                            args msg.sender, uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                                        if ext_call.success:
                                                                                                                                            if ext_code.size(lpsAddress):
                                                                                                                                                call lpsAddress.0x90bc1693 with:
                                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                                    args uint128((gap * uint128((arg2 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                                                if ext_call.success:
                                                                                                                                                    if ext_code.size(arg1):
                                                                                                                                                        call arg1.0xa9059cbb with:
                                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                                            args msg.sender, arg2
                                                                                                                                                        if ext_call.success:
                        else:
                            if ext_code.size(tipAddress):
                                call tipAddress.read() with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if (arg2 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((arg2 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                        if ext_code.size(lpsAddress):
                                            call lpsAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            if ext_call.success:
                                                if not ext_call.return_data[0]:
                                                    if (1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                        if ext_code.size(refAddress):
                                                            call refAddress.0x70a08231 with:
                                                                 gas gas_remaining - 710 wei
                                                                args this.address
                                                            if ext_call.success:
                                                                if ext_code.size(altAddress):
                                                                    call altAddress.0x70a08231 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args this.address
                                                                    if ext_call.success:
                                                                        if ext_code.size(tipAddress):
                                                                            call tipAddress.read() with:
                                                                                 gas gas_remaining - 710 wei
                                                                            if ext_call.success:
                                                                                if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                                    if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                        if uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                            if ext_code.size(lpsAddress):
                                                                                                call lpsAddress.0x8402181f with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args msg.sender, uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                if ext_call.success:
                                                                                                    if ext_code.size(lpsAddress):
                                                                                                        call lpsAddress.0x90bc1693 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                        if ext_call.success:
                                                                                                            if ext_code.size(arg1):
                                                                                                                call arg1.0xa9059cbb with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args msg.sender, arg2
                                                                                                                if ext_call.success:
                                                                                        else:
                                                                                            if (gap * uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                                                if ext_code.size(lpsAddress):
                                                                                                    call lpsAddress.0x8402181f with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args msg.sender, uint128((gap * uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                    if ext_call.success:
                                                                                                        if ext_code.size(lpsAddress):
                                                                                                            call lpsAddress.0x90bc1693 with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                args uint128((gap * uint128((1000000000 * 10^18 * uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                            if ext_call.success:
                                                                                                                if ext_code.size(arg1):
                                                                                                                    call arg1.0xa9059cbb with:
                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                        args msg.sender, arg2
                                                                                                                    if ext_call.success:
                                                else:
                                                    if ext_code.size(lpsAddress):
                                                        call lpsAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        if ext_call.success:
                                                            if ext_code.size(refAddress):
                                                                call refAddress.0x70a08231 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args this.address
                                                                if ext_call.success:
                                                                    if ext_code.size(altAddress):
                                                                        call altAddress.0x70a08231 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args this.address
                                                                        if ext_call.success:
                                                                            if ext_code.size(tipAddress):
                                                                                call tipAddress.read() with:
                                                                                     gas gas_remaining - 710 wei
                                                                                if ext_call.success:
                                                                                    if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                                        if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                            if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                                if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18))):
                                                                                                    if (uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                        if ext_code.size(refAddress):
                                                                                                            call refAddress.0x70a08231 with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                args this.address
                                                                                                            if ext_call.success:
                                                                                                                if ext_code.size(altAddress):
                                                                                                                    call altAddress.0x70a08231 with:
                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                        args this.address
                                                                                                                    if ext_call.success:
                                                                                                                        if ext_code.size(tipAddress):
                                                                                                                            call tipAddress.read() with:
                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                            if ext_call.success:
                                                                                                                                if (uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                                                                                                    if uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) >= uint128(ext_call.return_data[0]):
                                                                                                                                        if uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) == uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)):
                                                                                                                                            if ext_code.size(lpsAddress):
                                                                                                                                                call lpsAddress.0x8402181f with:
                                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                                    args msg.sender, uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                if ext_call.success:
                                                                                                                                                    if ext_code.size(lpsAddress):
                                                                                                                                                        call lpsAddress.0x90bc1693 with:
                                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                                            args uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                        if ext_call.success:
                                                                                                                                                            if ext_code.size(arg1):
                                                                                                                                                                call arg1.0xa9059cbb with:
                                                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                                                    args msg.sender, arg2
                                                                                                                                                                if ext_call.success:
                                                                                                                                        else:
                                                                                                                                            if (gap * uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((gap * uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                                                                                                if ext_code.size(lpsAddress):
                                                                                                                                                    call lpsAddress.0x8402181f with:
                                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                                        args msg.sender, uint128((gap * uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                                                    if ext_call.success:
                                                                                                                                                        if ext_code.size(lpsAddress):
                                                                                                                                                            call lpsAddress.0x90bc1693 with:
                                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                                args uint128((gap * uint128((uint128((arg2 * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) / 2) / uint128(ext_call.return_data[0] + ((uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)))) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
                                                                                                                                                            if ext_call.success:
                                                                                                                                                                if ext_code.size(arg1):
                                                                                                                                                                    call arg1.0xa9059cbb with:
                                                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                                                        args msg.sender, arg2
                                                                                                                                                                    if ext_call.success:
    revert
}



}
