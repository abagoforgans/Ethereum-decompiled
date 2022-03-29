contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint8 stor3;
address stor3; offset 8
uint256 stor3; offset 8

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2356 len 32]
    stor2 = code.data[2388 len 32]
    uint8(stor3.field_0) = code.data[2451 len 1]
    address(stor3.field_8) = code.data[2336 len 20]
    Mask(248, 0, stor3.field_8) = 0
    return code.data[152 len 2172]
}



// =====================  Runtime code  =====================


address owner;
uint256 sub_ceb751da;
uint256 pricePerKW;
uint8 contractType;
address sub_64beff2fAddress; offset 8

function sub_0cbade0e(?) {
    return sub_ceb751da
}

function sub_47fa91a3(?) {
    return pricePerKW
}

function sub_55609ea5(?) {
    return contractType
}

function sub_64beff2f(?) {
    return sub_64beff2fAddress
}

function owner() {
    return owner
}

function pricePerKW() {
    return pricePerKW
}

function contractType() {
    return contractType
}

function sub_ceb751da(?) {
    return sub_ceb751da
}

function updateContract(address arg1) {
    require sub_64beff2fAddress == msg.sender
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.admin() with:
         gas gas_remaining - 50 wei
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

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
    emit 0x95fd5417: arg1
}

function sub_62b5c1c3(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if 2 <= contractType:
        contractType = 2
    if contractType != 3:
        if not contractType:
            return 0
        if 1 == contractType:
            return sub_ceb751da
        if contractType != 2:
            if contractType != 3:
                return 0
            return (sub_ceb751da * arg3 / 3600)
        if ext_code.size(address(ext_call.return_data[0])):
            call address(ext_call.return_data[0]).0x9366974 with:
                 gas gas_remaining - 50 wei
                args arg1
            if ext_call.success:
                if arg2 <= ext_call.return_data[0]:
                    return ((sub_ceb751da * arg3) + (pricePerKW * arg2 / 1000 * arg3) / 3600)
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).0x9366974 with:
                         gas gas_remaining - 50 wei
                        args arg1
                    if ext_call.success:
                        return ((sub_ceb751da * arg3) + (pricePerKW * ext_call.return_data[0] / 1000 * arg3) / 3600)
    else:
        if ext_code.size(address(ext_call.return_data[0])):
            call address(ext_call.return_data[0]).0xa59acda4 with:
                 gas gas_remaining - 50 wei
                args arg1
            if ext_call.success:
                if ext_call.return_data[12 len 20] != msg.sender:
                    contractType = 2
                if not contractType:
                    return 0
                if 1 == contractType:
                    return sub_ceb751da
                if contractType != 2:
                    if contractType != 3:
                        return 0
                    return (sub_ceb751da * arg3 / 3600)
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).0x9366974 with:
                         gas gas_remaining - 50 wei
                        args arg1
                    if ext_call.success:
                        if arg2 <= ext_call.return_data[0]:
                            return ((sub_ceb751da * arg3) + (pricePerKW * arg2 / 1000 * arg3) / 3600)
                        if ext_code.size(address(ext_call.return_data[0])):
                            call address(ext_call.return_data[0]).0x9366974 with:
                                 gas gas_remaining - 50 wei
                                args arg1
                            if ext_call.success:
                                return ((sub_ceb751da * arg3) + (pricePerKW * ext_call.return_data[0] / 1000 * arg3) / 3600)
    revert
}

function sub_7abaf37e(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if 4 <= contractType:
        contractType = 4
    if contractType != 3:
        if not contractType:
            return 0
        if 1 == contractType:
            return sub_ceb751da
        if contractType != 2:
            if contractType != 3:
                return 0
            return ((sub_ceb751da * arg3 / 3600) + (arg4 * pricePerKW / 1000))
        if ext_code.size(address(ext_call.return_data[0])):
            call address(ext_call.return_data[0]).0x9366974 with:
                 gas gas_remaining - 50 wei
                args arg1
            if ext_call.success:
                if arg2 <= ext_call.return_data[0]:
                    return ((sub_ceb751da * arg3) + (pricePerKW * arg2 / 1000 * arg3) / 3600)
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).0x9366974 with:
                         gas gas_remaining - 50 wei
                        args arg1
                    if ext_call.success:
                        return ((sub_ceb751da * arg3) + (pricePerKW * ext_call.return_data[0] / 1000 * arg3) / 3600)
    else:
        if ext_code.size(address(ext_call.return_data[0])):
            call address(ext_call.return_data[0]).0xa59acda4 with:
                 gas gas_remaining - 50 wei
                args arg1
            if ext_call.success:
                if ext_call.return_data[12 len 20] != msg.sender:
                    contractType = 2
                if not contractType:
                    return 0
                if 1 == contractType:
                    return sub_ceb751da
                if contractType != 2:
                    if contractType != 3:
                        return 0
                    return ((sub_ceb751da * arg3 / 3600) + (arg4 * pricePerKW / 1000))
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).0x9366974 with:
                         gas gas_remaining - 50 wei
                        args arg1
                    if ext_call.success:
                        if arg2 <= ext_call.return_data[0]:
                            return ((sub_ceb751da * arg3) + (pricePerKW * arg2 / 1000 * arg3) / 3600)
                        if ext_code.size(address(ext_call.return_data[0])):
                            call address(ext_call.return_data[0]).0x9366974 with:
                                 gas gas_remaining - 50 wei
                                args arg1
                            if ext_call.success:
                                return ((sub_ceb751da * arg3) + (pricePerKW * ext_call.return_data[0] / 1000 * arg3) / 3600)
    revert
}

function sub_152cf716(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if arg5 <= contractType:
        contractType = arg5
    if contractType != 3:
        if not contractType:
            return 0
        if 1 == contractType:
            return sub_ceb751da
        if contractType != 2:
            if contractType != 3:
                return 0
            return ((sub_ceb751da * arg3 / 3600) + (arg4 * pricePerKW / 1000))
        if ext_code.size(address(ext_call.return_data[0])):
            call address(ext_call.return_data[0]).0x9366974 with:
                 gas gas_remaining - 50 wei
                args arg1
            if ext_call.success:
                if arg2 <= ext_call.return_data[0]:
                    return ((sub_ceb751da * arg3) + (pricePerKW * arg2 / 1000 * arg3) / 3600)
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).0x9366974 with:
                         gas gas_remaining - 50 wei
                        args arg1
                    if ext_call.success:
                        return ((sub_ceb751da * arg3) + (pricePerKW * ext_call.return_data[0] / 1000 * arg3) / 3600)
    else:
        if ext_code.size(address(ext_call.return_data[0])):
            call address(ext_call.return_data[0]).0xa59acda4 with:
                 gas gas_remaining - 50 wei
                args arg1
            if ext_call.success:
                if ext_call.return_data[12 len 20] != msg.sender:
                    contractType = 2
                if not contractType:
                    return 0
                if 1 == contractType:
                    return sub_ceb751da
                if contractType != 2:
                    if contractType != 3:
                        return 0
                    return ((sub_ceb751da * arg3 / 3600) + (arg4 * pricePerKW / 1000))
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).0x9366974 with:
                         gas gas_remaining - 50 wei
                        args arg1
                    if ext_call.success:
                        if arg2 <= ext_call.return_data[0]:
                            return ((sub_ceb751da * arg3) + (pricePerKW * arg2 / 1000 * arg3) / 3600)
                        if ext_code.size(address(ext_call.return_data[0])):
                            call address(ext_call.return_data[0]).0x9366974 with:
                                 gas gas_remaining - 50 wei
                                args arg1
                            if ext_call.success:
                                return ((sub_ceb751da * arg3) + (pricePerKW * ext_call.return_data[0] / 1000 * arg3) / 3600)
    revert
}



}
