contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = code.data[6772 len 20]
    return code.data[126 len 6634]
}



// =====================  Runtime code  =====================


const sub_20863894(?) = (720 * 24 * 3600)

const sub_40018a0d(?) = (168 * 24 * 3600)

const sub_6f69c96f(?) = 3600

const sub_8b47e58a(?) = 5

const sub_93529cdf(?) = 10000

const sub_de53a13c(?) = 10^6

const sub_fd127a41(?) = (8760 * 24 * 3600)

const DAY_LENGTH_IN_SECONDS = (24 * 3600)


mapping of uint256 sub_fd40d52e;
address contractRegistryAddress;

function sub_03a896a1(?) {
    return sub_fd40d52e[arg1]
}

function contractRegistry() {
    return contractRegistryAddress
}

function sub_fd40d52e(?) {
    return sub_fd40d52e[arg1]
}

function _fallback() payable {
    revert
}

function sub_ed8907d7(?) {
    return arg1 << 248, Mask(96, 152, arg1) << 8, Mask(24, 128, arg1) << 104, Mask(4, 124, arg1) << 128, uint16(arg1)
}

function sub_977a5e64(?) {
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.0x79dd4b7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.0x79dd4b7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.0x2f866f73 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x6be39bda with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.0x9d23c4c7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTokenAddressByIndex(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args (Mask(8, 248, ext_call.return_data[32]) >> 248)
    require ext_call.success
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.0x869f0511 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x649404bd with:
             gas gas_remaining - 710 wei
            args arg1, arg2
        require ext_call.success
        return 0
    if Mask(4, 124, ext_call.return_data[32]) >> 124 >= 5:
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.0x869f0511 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x649404bd with:
             gas gas_remaining - 710 wei
            args arg1, arg2
        require ext_call.success
        return 0
    if address(ext_call.return_data[0]) != this.address:
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.0x869f0511 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x649404bd with:
             gas gas_remaining - 710 wei
            args arg1, arg2
        require ext_call.success
        return 0
    emit 0x2c500aae: Mask(96, 152, ext_call.return_data[32]) << 8, Mask(24, 128, ext_call.return_data[32]) << 104, Mask(16, 108, ext_call.return_data[32]) >> 108, arg1, address(ext_call.return_data[0]), Mask(4, 124, ext_call.return_data[32]) >> 124
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.0x869f0511 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x649404bd with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_5f0280ba(?) {
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.0x6fa9d056 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.0x2f866f73 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x314a522e with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.0x9d23c4c7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTokenAddressByIndex(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args (Mask(8, 248, ext_call.return_data[0]) >> 248)
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4
    require Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4
    if not Mask(4, 124, ext_call.return_data[0]):
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.0x2f866f73 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xd69dbf63 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        if not Mask(16, 108, ext_call.return_data[0]):
            require ext_call.return_data[0] >= 0
        else:
            require Mask(16, 108, ext_call.return_data[0]) >> 108
            require 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108 / Mask(16, 108, ext_call.return_data[0]) >> 108 == 3600
            require (3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0] >= 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108
    else:
        require Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4
        if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.0x2f866f73 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xd69dbf63 with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            if not Mask(16, 108, ext_call.return_data[0]):
                require ext_call.return_data[0] >= 0
            else:
                require Mask(16, 108, ext_call.return_data[0]) >> 108
                require 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108 / Mask(16, 108, ext_call.return_data[0]) >> 108 == 24 * 3600
                require (24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0] >= 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108
        else:
            require Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4
            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                require ext_code.size(contractRegistryAddress)
                call contractRegistryAddress.0x2f866f73 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xd69dbf63 with:
                     gas gas_remaining - 710 wei
                    args arg1
                require ext_call.success
                if not Mask(16, 108, ext_call.return_data[0]):
                    require ext_call.return_data[0] >= 0
                else:
                    require Mask(16, 108, ext_call.return_data[0]) >> 108
                    require 168 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108 / Mask(16, 108, ext_call.return_data[0]) >> 108 == 168 * 24 * 3600
                    require (168 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0] >= 168 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108
            else:
                require Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4
                if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                    require ext_code.size(contractRegistryAddress)
                    call contractRegistryAddress.0x2f866f73 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xd69dbf63 with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require ext_call.success
                    if not Mask(16, 108, ext_call.return_data[0]):
                        require ext_call.return_data[0] >= 0
                    else:
                        require Mask(16, 108, ext_call.return_data[0]) >> 108
                        require 720 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108 / Mask(16, 108, ext_call.return_data[0]) >> 108 == 720 * 24 * 3600
                        require (720 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0] >= 720 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108
                else:
                    require Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4
                    require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                    require ext_code.size(contractRegistryAddress)
                    call contractRegistryAddress.0x2f866f73 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xd69dbf63 with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require ext_call.success
                    if not Mask(16, 108, ext_call.return_data[0]):
                        require ext_call.return_data[0] >= 0
                    else:
                        require Mask(16, 108, ext_call.return_data[0]) >> 108
                        require 8760 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108 / Mask(16, 108, ext_call.return_data[0]) >> 108 == 8760 * 24 * 3600
                        require (8760 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0] >= 8760 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108
    require Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4
    if arg5 != address(ext_call.return_data[0]):
        return 0
    require sub_fd40d52e[arg1] + arg4 >= sub_fd40d52e[arg1]
    sub_fd40d52e[arg1] += arg4
    emit 0xf1a888d2: arg1, address(arg2), address(arg3), arg4, arg5
    return 1
}

function sub_2762dd8c(?) {
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.0x2f866f73 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x314a522e with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.0x9d23c4c7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTokenAddressByIndex(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args (Mask(8, 248, ext_call.return_data[0]) >> 248)
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4
    require Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4
    if not Mask(4, 124, ext_call.return_data[0]):
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.0x2f866f73 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xd69dbf63 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        if not Mask(16, 108, ext_call.return_data[0]):
            if ext_call.return_data[0] >= 0:
                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                    return ext_call.return_data[0]
        else:
            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                if 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108 / Mask(16, 108, ext_call.return_data[0]) >> 108 == 3600:
                    if (3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0] >= 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108:
                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                            return ((3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0])
    else:
        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                require ext_code.size(contractRegistryAddress)
                call contractRegistryAddress.0x2f866f73 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xd69dbf63 with:
                     gas gas_remaining - 710 wei
                    args arg1
                require ext_call.success
                if not Mask(16, 108, ext_call.return_data[0]):
                    if ext_call.return_data[0] >= 0:
                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                            return ext_call.return_data[0]
                else:
                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                        if 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108 / Mask(16, 108, ext_call.return_data[0]) >> 108 == 24 * 3600:
                            if (24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0] >= 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108:
                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                    return ((24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0])
            else:
                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                        require ext_code.size(contractRegistryAddress)
                        call contractRegistryAddress.0x2f866f73 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xd69dbf63 with:
                             gas gas_remaining - 710 wei
                            args arg1
                        require ext_call.success
                        if not Mask(16, 108, ext_call.return_data[0]):
                            if ext_call.return_data[0] >= 0:
                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                    return ext_call.return_data[0]
                        else:
                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                if 168 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108 / Mask(16, 108, ext_call.return_data[0]) >> 108 == 168 * 24 * 3600:
                                    if (168 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0] >= 168 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108:
                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                            return ((168 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0])
                    else:
                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                require ext_code.size(contractRegistryAddress)
                                call contractRegistryAddress.0x2f866f73 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xd69dbf63 with:
                                     gas gas_remaining - 710 wei
                                    args arg1
                                require ext_call.success
                                if not Mask(16, 108, ext_call.return_data[0]):
                                    if ext_call.return_data[0] >= 0:
                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                            return ext_call.return_data[0]
                                else:
                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                        if 720 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108 / Mask(16, 108, ext_call.return_data[0]) >> 108 == 720 * 24 * 3600:
                                            if (720 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0] >= 720 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                    return ((720 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0])
                            else:
                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                    require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                    require ext_code.size(contractRegistryAddress)
                                    call contractRegistryAddress.0x2f866f73 with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xd69dbf63 with:
                                         gas gas_remaining - 710 wei
                                        args arg1
                                    require ext_call.success
                                    if not Mask(16, 108, ext_call.return_data[0]):
                                        if ext_call.return_data[0] >= 0:
                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                return ext_call.return_data[0]
                                    else:
                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                            if 8760 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108 / Mask(16, 108, ext_call.return_data[0]) >> 108 == 8760 * 24 * 3600:
                                                if (8760 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0] >= 8760 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                        return ((8760 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0])
    revert
}

function sub_99114d84(?) {
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.0x2f866f73 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf6f494c9 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require this.address == ext_call.return_data[12 len 20]
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.0x2f866f73 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x314a522e with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.0x9d23c4c7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTokenAddressByIndex(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args (Mask(8, 248, ext_call.return_data[0]) >> 248)
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4
    require Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4
    if not Mask(4, 124, ext_call.return_data[0]):
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.0x2f866f73 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xd69dbf63 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        if not Mask(16, 108, ext_call.return_data[0]):
            if ext_call.return_data[0] >= 0:
                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                    if not Mask(96, 152, ext_call.return_data[0]):
                        if Mask(96, 152, ext_call.return_data[0]) >> 152 >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                            if arg2 <= ext_call.return_data[0]:
                                return 0
                            if arg2 >= ext_call.return_data[0]:
                                return (Mask(96, 152, ext_call.return_data[0]) >> 152)
                            if ext_call.return_data[0] <= arg2:
                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                    if not Mask(4, 124, ext_call.return_data[0]):
                                        if not Mask(96, 152, ext_call.return_data[0]):
                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                        else:
                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 3600:
                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                    else:
                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                else:
                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                            else:
                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                        if not Mask(96, 152, ext_call.return_data[0]):
                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                        else:
                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                    else:
                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                else:
                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                            else:
                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                    require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                    if not Mask(96, 152, ext_call.return_data[0]):
                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                            return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                    else:
                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                    return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                    else:
                        if Mask(96, 152, ext_call.return_data[0]) >> 152:
                            if Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / Mask(96, 152, ext_call.return_data[0]) >> 152 == Mask(24, 128, ext_call.return_data[0]) >> 128:
                                if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                    if arg2 <= ext_call.return_data[0]:
                                        return 0
                                    if arg2 >= ext_call.return_data[0]:
                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6))
                                    if ext_call.return_data[0] <= arg2:
                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                            if not Mask(4, 124, ext_call.return_data[0]):
                                                if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                else:
                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 3600:
                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                            else:
                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                        if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                        else:
                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                    else:
                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                else:
                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                            else:
                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                        if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                        else:
                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                    else:
                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                            require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                            if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                    return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                            return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
        else:
            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                if 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108 / Mask(16, 108, ext_call.return_data[0]) >> 108 == 3600:
                    if (3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0] >= 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108:
                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                            if not Mask(96, 152, ext_call.return_data[0]):
                                if Mask(96, 152, ext_call.return_data[0]) >> 152 >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                    if arg2 <= ext_call.return_data[0]:
                                        return 0
                                    if arg2 >= (3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0]:
                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152)
                                    if ext_call.return_data[0] <= arg2:
                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                            if not Mask(4, 124, ext_call.return_data[0]):
                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                else:
                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 3600:
                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                            else:
                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                        if not Mask(96, 152, ext_call.return_data[0]):
                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                        else:
                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                    else:
                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                else:
                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                            else:
                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                        if not Mask(96, 152, ext_call.return_data[0]):
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                        else:
                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                    else:
                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                            require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                            if not Mask(96, 152, ext_call.return_data[0]):
                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                    return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                            return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                            else:
                                if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                    if Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / Mask(96, 152, ext_call.return_data[0]) >> 152 == Mask(24, 128, ext_call.return_data[0]) >> 128:
                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                            if arg2 <= ext_call.return_data[0]:
                                                return 0
                                            if arg2 >= (3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0]:
                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6))
                                            if ext_call.return_data[0] <= arg2:
                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                    if not Mask(4, 124, ext_call.return_data[0]):
                                                        if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                        else:
                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 3600:
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                    else:
                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                                if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                else:
                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                            else:
                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                        if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                        else:
                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                    else:
                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                                if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                else:
                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                    require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                                    if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                            return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                    else:
                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                    return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
    else:
        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                require ext_code.size(contractRegistryAddress)
                call contractRegistryAddress.0x2f866f73 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xd69dbf63 with:
                     gas gas_remaining - 710 wei
                    args arg1
                require ext_call.success
                if not Mask(16, 108, ext_call.return_data[0]):
                    if ext_call.return_data[0] >= 0:
                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                            if not Mask(96, 152, ext_call.return_data[0]):
                                if Mask(96, 152, ext_call.return_data[0]) >> 152 >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                    if arg2 <= ext_call.return_data[0]:
                                        return 0
                                    if arg2 >= ext_call.return_data[0]:
                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152)
                                    if ext_call.return_data[0] <= arg2:
                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                            if not Mask(4, 124, ext_call.return_data[0]):
                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                else:
                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 3600:
                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                            else:
                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                        if not Mask(96, 152, ext_call.return_data[0]):
                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                        else:
                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                    else:
                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                else:
                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                            else:
                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                        if not Mask(96, 152, ext_call.return_data[0]):
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                        else:
                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                    else:
                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                            require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                            if not Mask(96, 152, ext_call.return_data[0]):
                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                    return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                            return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                            else:
                                if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                    if Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / Mask(96, 152, ext_call.return_data[0]) >> 152 == Mask(24, 128, ext_call.return_data[0]) >> 128:
                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                            if arg2 <= ext_call.return_data[0]:
                                                return 0
                                            if arg2 >= ext_call.return_data[0]:
                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6))
                                            if ext_call.return_data[0] <= arg2:
                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                    if not Mask(4, 124, ext_call.return_data[0]):
                                                        if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                        else:
                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 3600:
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                    else:
                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                                if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                else:
                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                            else:
                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                        if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                        else:
                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                    else:
                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                                if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                else:
                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                    require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                                    if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                            return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                    else:
                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                    return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                else:
                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                        if 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108 / Mask(16, 108, ext_call.return_data[0]) >> 108 == 24 * 3600:
                            if (24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0] >= 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108:
                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                    if not Mask(96, 152, ext_call.return_data[0]):
                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                            if arg2 <= ext_call.return_data[0]:
                                                return 0
                                            if arg2 >= (24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0]:
                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152)
                                            if ext_call.return_data[0] <= arg2:
                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                    if not Mask(4, 124, ext_call.return_data[0]):
                                                        if not Mask(96, 152, ext_call.return_data[0]):
                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                        else:
                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 3600:
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                    else:
                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                else:
                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                            else:
                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                        if not Mask(96, 152, ext_call.return_data[0]):
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                        else:
                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                    else:
                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                else:
                                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                    require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                                    if not Mask(96, 152, ext_call.return_data[0]):
                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                            return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                    else:
                                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                    return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                    else:
                                        if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                            if Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / Mask(96, 152, ext_call.return_data[0]) >> 152 == Mask(24, 128, ext_call.return_data[0]) >> 128:
                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                    if arg2 <= ext_call.return_data[0]:
                                                        return 0
                                                    if arg2 >= (24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0]:
                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6))
                                                    if ext_call.return_data[0] <= arg2:
                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                            if not Mask(4, 124, ext_call.return_data[0]):
                                                                if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                else:
                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 3600:
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                            else:
                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                                        if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                        else:
                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                    else:
                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                                if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                else:
                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                                        if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                        else:
                                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                    else:
                                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                            require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                                            if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                    return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                            else:
                                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                            return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
            else:
                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                        require ext_code.size(contractRegistryAddress)
                        call contractRegistryAddress.0x2f866f73 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xd69dbf63 with:
                             gas gas_remaining - 710 wei
                            args arg1
                        require ext_call.success
                        if not Mask(16, 108, ext_call.return_data[0]):
                            if ext_call.return_data[0] >= 0:
                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                    if not Mask(96, 152, ext_call.return_data[0]):
                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                            if arg2 <= ext_call.return_data[0]:
                                                return 0
                                            if arg2 >= ext_call.return_data[0]:
                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152)
                                            if ext_call.return_data[0] <= arg2:
                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                    if not Mask(4, 124, ext_call.return_data[0]):
                                                        if not Mask(96, 152, ext_call.return_data[0]):
                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                        else:
                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 3600:
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                    else:
                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                else:
                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                            else:
                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                        if not Mask(96, 152, ext_call.return_data[0]):
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                        else:
                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                    else:
                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                else:
                                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                    require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                                    if not Mask(96, 152, ext_call.return_data[0]):
                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                            return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                    else:
                                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                    return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                    else:
                                        if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                            if Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / Mask(96, 152, ext_call.return_data[0]) >> 152 == Mask(24, 128, ext_call.return_data[0]) >> 128:
                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                    if arg2 <= ext_call.return_data[0]:
                                                        return 0
                                                    if arg2 >= ext_call.return_data[0]:
                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6))
                                                    if ext_call.return_data[0] <= arg2:
                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                            if not Mask(4, 124, ext_call.return_data[0]):
                                                                if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                else:
                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 3600:
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                            else:
                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                                        if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                        else:
                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                    else:
                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                                if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                else:
                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                                        if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                        else:
                                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                    else:
                                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                            require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                                            if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                    return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                            else:
                                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                            return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                        else:
                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                if 168 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108 / Mask(16, 108, ext_call.return_data[0]) >> 108 == 168 * 24 * 3600:
                                    if (168 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0] >= 168 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108:
                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                            if not Mask(96, 152, ext_call.return_data[0]):
                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                    if arg2 <= ext_call.return_data[0]:
                                                        return 0
                                                    if arg2 >= (168 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0]:
                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152)
                                                    if ext_call.return_data[0] <= arg2:
                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                            if not Mask(4, 124, ext_call.return_data[0]):
                                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                else:
                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 3600:
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                            else:
                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                                        if not Mask(96, 152, ext_call.return_data[0]):
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                        else:
                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                    else:
                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                else:
                                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                                        if not Mask(96, 152, ext_call.return_data[0]):
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                        else:
                                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                    else:
                                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                            require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                                            if not Mask(96, 152, ext_call.return_data[0]):
                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                    return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                            else:
                                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                            return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                            else:
                                                if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / Mask(96, 152, ext_call.return_data[0]) >> 152 == Mask(24, 128, ext_call.return_data[0]) >> 128:
                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                            if arg2 <= ext_call.return_data[0]:
                                                                return 0
                                                            if arg2 >= (168 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0]:
                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6))
                                                            if ext_call.return_data[0] <= arg2:
                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                    if not Mask(4, 124, ext_call.return_data[0]):
                                                                        if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                        else:
                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 3600:
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                    else:
                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                                                if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                else:
                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                                        if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                        else:
                                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                    else:
                                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                                                if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                else:
                                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                            else:
                                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                                    require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                                                    if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                            return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                    else:
                                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                    return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                    else:
                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                require ext_code.size(contractRegistryAddress)
                                call contractRegistryAddress.0x2f866f73 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xd69dbf63 with:
                                     gas gas_remaining - 710 wei
                                    args arg1
                                require ext_call.success
                                if not Mask(16, 108, ext_call.return_data[0]):
                                    if ext_call.return_data[0] >= 0:
                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                            if not Mask(96, 152, ext_call.return_data[0]):
                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                    if arg2 <= ext_call.return_data[0]:
                                                        return 0
                                                    if arg2 >= ext_call.return_data[0]:
                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152)
                                                    if ext_call.return_data[0] <= arg2:
                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                            if not Mask(4, 124, ext_call.return_data[0]):
                                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                else:
                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 3600:
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                            else:
                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                                        if not Mask(96, 152, ext_call.return_data[0]):
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                        else:
                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                    else:
                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                else:
                                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                                        if not Mask(96, 152, ext_call.return_data[0]):
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                        else:
                                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                    else:
                                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                            require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                                            if not Mask(96, 152, ext_call.return_data[0]):
                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                    return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                            else:
                                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                            return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                            else:
                                                if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / Mask(96, 152, ext_call.return_data[0]) >> 152 == Mask(24, 128, ext_call.return_data[0]) >> 128:
                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                            if arg2 <= ext_call.return_data[0]:
                                                                return 0
                                                            if arg2 >= ext_call.return_data[0]:
                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6))
                                                            if ext_call.return_data[0] <= arg2:
                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                    if not Mask(4, 124, ext_call.return_data[0]):
                                                                        if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                        else:
                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 3600:
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                    else:
                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                                                if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                else:
                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                                        if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                        else:
                                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                    else:
                                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                                                if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                else:
                                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                            else:
                                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                                    require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                                                    if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                            return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                    else:
                                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                    return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                else:
                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                        if 720 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108 / Mask(16, 108, ext_call.return_data[0]) >> 108 == 720 * 24 * 3600:
                                            if (720 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0] >= 720 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                    if not Mask(96, 152, ext_call.return_data[0]):
                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                            if arg2 <= ext_call.return_data[0]:
                                                                return 0
                                                            if arg2 >= (720 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0]:
                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152)
                                                            if ext_call.return_data[0] <= arg2:
                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                    if not Mask(4, 124, ext_call.return_data[0]):
                                                                        if not Mask(96, 152, ext_call.return_data[0]):
                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                        else:
                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 3600:
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                    else:
                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                else:
                                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                                        if not Mask(96, 152, ext_call.return_data[0]):
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                        else:
                                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                    else:
                                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                else:
                                                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                            else:
                                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                                    require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                                                    if not Mask(96, 152, ext_call.return_data[0]):
                                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                            return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                    else:
                                                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                    return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                    else:
                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / Mask(96, 152, ext_call.return_data[0]) >> 152 == Mask(24, 128, ext_call.return_data[0]) >> 128:
                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                    if arg2 <= ext_call.return_data[0]:
                                                                        return 0
                                                                    if arg2 >= (720 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0]:
                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6))
                                                                    if ext_call.return_data[0] <= arg2:
                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                            if not Mask(4, 124, ext_call.return_data[0]):
                                                                                if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                else:
                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 3600:
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                                                        if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                        else:
                                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                    else:
                                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                                                if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                else:
                                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                            else:
                                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                                                        if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                        else:
                                                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                    else:
                                                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                                            require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                                                            if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                    return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                            else:
                                                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                            return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                            else:
                                if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                    require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                    require ext_code.size(contractRegistryAddress)
                                    call contractRegistryAddress.0x2f866f73 with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xd69dbf63 with:
                                         gas gas_remaining - 710 wei
                                        args arg1
                                    require ext_call.success
                                    if not Mask(16, 108, ext_call.return_data[0]):
                                        if ext_call.return_data[0] >= 0:
                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152 >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                        if arg2 <= ext_call.return_data[0]:
                                                            return 0
                                                        if arg2 >= ext_call.return_data[0]:
                                                            return (Mask(96, 152, ext_call.return_data[0]) >> 152)
                                                        if ext_call.return_data[0] <= arg2:
                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                if not Mask(4, 124, ext_call.return_data[0]):
                                                                    if not Mask(96, 152, ext_call.return_data[0]):
                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                            return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                    else:
                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 3600:
                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                    return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                else:
                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                                            if not Mask(96, 152, ext_call.return_data[0]):
                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                    return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                            return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                        else:
                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                                    if not Mask(96, 152, ext_call.return_data[0]):
                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                            return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                    else:
                                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                    return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                else:
                                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                                            if not Mask(96, 152, ext_call.return_data[0]):
                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                    return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                            else:
                                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                            return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                        else:
                                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                                require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                                                if not Mask(96, 152, ext_call.return_data[0]):
                                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                else:
                                                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                else:
                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / Mask(96, 152, ext_call.return_data[0]) >> 152 == Mask(24, 128, ext_call.return_data[0]) >> 128:
                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                if arg2 <= ext_call.return_data[0]:
                                                                    return 0
                                                                if arg2 >= ext_call.return_data[0]:
                                                                    return ((Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6))
                                                                if ext_call.return_data[0] <= arg2:
                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                        if not Mask(4, 124, ext_call.return_data[0]):
                                                                            if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                    return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 3600:
                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                            return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                        else:
                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                                                    if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                            return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                    else:
                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                    return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                else:
                                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                                            if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                    return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                            else:
                                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                            return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                        else:
                                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                                                    if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                            return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                    else:
                                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                    return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                else:
                                                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                                        require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                                                        if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                        else:
                                                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                        return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                    else:
                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                            if 8760 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108 / Mask(16, 108, ext_call.return_data[0]) >> 108 == 8760 * 24 * 3600:
                                                if (8760 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0] >= 8760 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                        if not Mask(96, 152, ext_call.return_data[0]):
                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152 >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                if arg2 <= ext_call.return_data[0]:
                                                                    return 0
                                                                if arg2 >= (8760 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0]:
                                                                    return (Mask(96, 152, ext_call.return_data[0]) >> 152)
                                                                if ext_call.return_data[0] <= arg2:
                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                        if not Mask(4, 124, ext_call.return_data[0]):
                                                                            if not Mask(96, 152, ext_call.return_data[0]):
                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                    return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                            else:
                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 3600:
                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                            return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                        else:
                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                                                    if not Mask(96, 152, ext_call.return_data[0]):
                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                            return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                    else:
                                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                    return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                else:
                                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                                            if not Mask(96, 152, ext_call.return_data[0]):
                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                    return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                            else:
                                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                                    if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                            return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                        else:
                                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                                                    if not Mask(96, 152, ext_call.return_data[0]):
                                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                            return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                    else:
                                                                                                        if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                    return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                else:
                                                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                                        require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                                                        if not Mask(96, 152, ext_call.return_data[0]):
                                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                        else:
                                                                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(96, 152, ext_call.return_data[0]) >> 152 == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                        return (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                        else:
                                                            if Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                if Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / Mask(96, 152, ext_call.return_data[0]) >> 152 == Mask(24, 128, ext_call.return_data[0]) >> 128:
                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) >= Mask(96, 152, ext_call.return_data[0]) >> 152:
                                                                        if arg2 <= ext_call.return_data[0]:
                                                                            return 0
                                                                        if arg2 >= (8760 * 24 * 3600 * Mask(16, 108, ext_call.return_data[0]) >> 108) + ext_call.return_data[0]:
                                                                            return ((Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6))
                                                                        if ext_call.return_data[0] <= arg2:
                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                if not Mask(4, 124, ext_call.return_data[0]):
                                                                                    if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                            return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                    else:
                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 3600:
                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                    return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                else:
                                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 == 1:
                                                                                            if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                    return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                            else:
                                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 24 * 3600:
                                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                            return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                        else:
                                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                                if Mask(4, 124, ext_call.return_data[0]) >> 124 == 2:
                                                                                                    if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                            return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                    else:
                                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                            if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 168 * 24 * 3600:
                                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                    return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 168 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                else:
                                                                                                    if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                                        if Mask(4, 124, ext_call.return_data[0]) >> 124 == 3:
                                                                                                            if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                                if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                    return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                            else:
                                                                                                                if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 720 * 24 * 3600:
                                                                                                                        if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                            return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 720 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                        else:
                                                                                                            if Mask(4, 124, ext_call.return_data[0]) >> 124 <= 4:
                                                                                                                require Mask(4, 124, ext_call.return_data[0]) >> 124 == 4
                                                                                                                if not (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                                    if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                        return (0 / Mask(16, 108, ext_call.return_data[0]) >> 108)
                                                                                                                else:
                                                                                                                    if (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6):
                                                                                                                        if (Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / (Mask(96, 152, ext_call.return_data[0]) >> 152) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6) == arg2 - ext_call.return_data[0] / 8760 * 24 * 3600:
                                                                                                                            if Mask(16, 108, ext_call.return_data[0]) >> 108:
                                                                                                                                return ((Mask(96, 152, ext_call.return_data[0]) >> 152 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) + (Mask(96, 152, ext_call.return_data[0]) >> 152 * Mask(24, 128, ext_call.return_data[0]) >> 128 / 10^6 * arg2 - ext_call.return_data[0] / 8760 * 24 * 3600) / Mask(16, 108, ext_call.return_data[0]) >> 108)
    revert
}



}
