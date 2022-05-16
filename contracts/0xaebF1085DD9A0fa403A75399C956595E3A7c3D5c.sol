contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
address stor3;
address stor4;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = '0.2' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    stor4 = code.data[6398 len 20]
    stor3 = code.data[6430 len 20]
    return code.data[371 len 6015]
}



// =====================  Runtime code  =====================


const BANCOR_CONVERTER_UPGRADER = 'BancorConverterUpgrader'

const BNT_TOKEN = 'BNTToken'

const BANCOR_CONVERTER_FACTORY = 'BancorConverterFactory'

const BANCOR_FORMULA = 'BancorFormula'

const CONTRACT_FEATURES = 'ContractFeatures'

const BANCOR_NETWORK = 'BancorNetwork'

const BANCOR_GAS_PRICE_LIMIT = 'BancorGasPriceLimit'

const CONVERTER_CONVERSION_WHITELIST = 1


address owner;
address newOwner;
array of uint256 version;
address registryAddress;
address bancorConverterFactoryAddress;

function version() {
    return version[0 len version.length]
}

function registry() {
    return registryAddress
}

function owner() {
    return owner
}

function bancorConverterFactory() {
    return bancorConverterFactoryAddress
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function setContractRegistry(address arg1) {
    require owner == msg.sender
    registryAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    newOwner = arg1
}

function setBancorConverterFactory(address arg1) {
    require owner == msg.sender
    bancorConverterFactoryAddress = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function upgrade(address arg1, bytes32 arg2) {
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    call arg1.0x79ba5097 with:
         gas gas_remaining wei
    require ext_call.success
    emit ConverterOwned(arg1, this.address);
    require ext_code.size(arg1)
    call arg1.0xfc0c546a with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x94c275ad with:
         gas gas_remaining wei
    require ext_call.success
    mem[164] = uint32(ext_call.return_data[0])
    mem[196] = 0
    mem[228] = 0
    require ext_code.size(bancorConverterFactoryAddress)
    call bancorConverterFactoryAddress.createConverter(address arg1, address arg2, uint32 arg3, address arg4, uint32 arg5) with:
         gas gas_remaining wei
        args 0, 0, registryAddress, ext_call.return_data[0] << 224, 0, 0
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x79ba5097 with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xc8c2fe6c with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(registryAddress)
    call registryAddress.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'ContractFeatures'
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isSupported(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), 1
    require ext_call.success
    require ext_code.size(arg1)
    if arg2 != '0.4':
        if not ext_call.return_data[0]:
            call arg1.0x71f52bf3 with:
                 gas gas_remaining wei
            require ext_call.success
            s = 0
            s = 0
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while uint16(idx) < uint16(ext_call.return_data[0]):
                require ext_code.size(arg1)
                call arg1.0x19b64015 with:
                     gas gas_remaining wei
                    args (idx << 240)
                require ext_call.success
                require ext_code.size(arg1)
                call arg1.connectors(address arg1) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                mem[96 len 160] = ext_call.return_data[0 len 160]
                require ext_call.success
                mem[96] = 0x3f4d2fc200000000000000000000000000000000000000000000000000000000
                mem[100] = address(ext_call.return_data[0])
                mem[132] = uint32(ext_call.return_data[32])
                mem[164] = bool(ext_call.return_data[64])
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x3f4d2fc2 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[32] << 224, bool(ext_call.return_data[64])
                require ext_call.success
                if ext_call.return_data[64]:
                    mem[96] = 0xca7892300000000000000000000000000000000000000000000000000000000
                    mem[100] = address(ext_call.return_data[0])
                    mem[132] = uint32(ext_call.return_data[32])
                    mem[164] = bool(ext_call.return_data[64])
                    mem[196] = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).updateConnector(address arg1, uint32 arg2, bool arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[32] << 224, bool(ext_call.return_data[64]), ext_call.return_data[0]
                    require ext_call.success
                s = ext_call.return_data[0]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = ext_call.return_data[128]
                s = ext_call.return_data[96]
                s = ext_call.return_data[64]
                s = ext_call.return_data[32]
                s = ext_call.return_data[0]
                continue 
            require ext_code.size(arg1)
            call arg1.0x579cd3ca with:
                 gas gas_remaining wei
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xecbca55d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] << 224)
            require ext_call.success
            require ext_code.size(arg1)
            call arg1.0x9396a7f0 with:
                 gas gas_remaining wei
            require ext_call.success
            if ext_call.return_data[0] <= 0:
                require ext_code.size(arg1)
                call arg1.0x71f52bf3 with:
                     gas gas_remaining wei
                require ext_call.success
                s = 0
                s = 0
                idx = 0
                s = 0
                while uint16(idx) < uint16(ext_call.return_data[0]):
                    require ext_code.size(arg1)
                    call arg1.0x19b64015 with:
                         gas gas_remaining wei
                        args (idx << 240)
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x70a08231 with:
                         gas gas_remaining wei
                        args address(arg1)
                    require ext_call.success
                    mem[128] = 0x5e35359e00000000000000000000000000000000000000000000000000000000
                    mem[132] = address(ext_call.return_data[0])
                    mem[164] = address(ext_call.return_data[0])
                    mem[196] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0x5e35359e with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
                    require ext_call.success
                    s = ext_call.return_data[0]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
            else:
                idx = 0
                while idx < ext_call.return_data[0]:
                    mem[(32 * ext_call.return_data[0]) + 200] = idx
                    require ext_code.size(arg1)
                    call arg1.0xe7ee85a5 with:
                         gas gas_remaining wei
                        args idx
                    mem[(32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0]
                    require ext_call.success
                    require idx < ext_call.return_data[0]
                    mem[(32 * idx) + 196] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[(32 * ext_call.return_data[0]) + 196] = 0xd395ee0f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ext_call.return_data[0]) + 200] = 32
                mem[(32 * ext_call.return_data[0]) + 232] = ext_call.return_data[0]
                s = 0
                while ext_call.return_data[0] < 32 * ext_call.return_data[0]:
                    mem[(34 * ext_call.return_data[0]) + 264] = mem[ext_call.return_data[0] + 196]
                    s = ext_call.return_data[0] + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xd395ee0f with:
                     gas gas_remaining wei
                    args mem[(32 * ext_call.return_data[0]) + 200 len (96 * ext_call.return_data[0]) + 64]
                require ext_call.success
                require ext_code.size(arg1)
                call arg1.0x71f52bf3 with:
                     gas gas_remaining wei
                require ext_call.success
                s = 0
                s = 0
                idx = 0
                s = 0
                while uint16(idx) < uint16(ext_call.return_data[0]):
                    require ext_code.size(arg1)
                    call arg1.0x19b64015 with:
                         gas gas_remaining wei
                        args (idx << 240)
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x70a08231 with:
                         gas gas_remaining wei
                        args address(arg1)
                    require ext_call.success
                    mem[(32 * ext_call.return_data[0]) + 196] = 0x5e35359e00000000000000000000000000000000000000000000000000000000
                    mem[(32 * ext_call.return_data[0]) + 200] = address(ext_call.return_data[0])
                    mem[(32 * ext_call.return_data[0]) + 232] = address(ext_call.return_data[0])
                    mem[(32 * ext_call.return_data[0]) + 264] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0x5e35359e with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
                    require ext_call.success
                    s = ext_call.return_data[0]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
        else:
            call arg1.0xc45d3d92 with:
                 gas gas_remaining wei
            require ext_call.success
            if not ext_call.return_data[12 len 20]:
                require ext_code.size(arg1)
                call arg1.0x71f52bf3 with:
                     gas gas_remaining wei
                require ext_call.success
                s = 0
                s = 0
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while uint16(idx) < uint16(ext_call.return_data[0]):
                    require ext_code.size(arg1)
                    call arg1.0x19b64015 with:
                         gas gas_remaining wei
                        args (idx << 240)
                    require ext_call.success
                    require ext_code.size(arg1)
                    call arg1.connectors(address arg1) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    mem[96 len 160] = ext_call.return_data[0 len 160]
                    require ext_call.success
                    mem[96] = 0x3f4d2fc200000000000000000000000000000000000000000000000000000000
                    mem[100] = address(ext_call.return_data[0])
                    mem[132] = uint32(ext_call.return_data[32])
                    mem[164] = bool(ext_call.return_data[64])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x3f4d2fc2 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[32] << 224, bool(ext_call.return_data[64])
                    require ext_call.success
                    if ext_call.return_data[64]:
                        mem[96] = 0xca7892300000000000000000000000000000000000000000000000000000000
                        mem[100] = address(ext_call.return_data[0])
                        mem[132] = uint32(ext_call.return_data[32])
                        mem[164] = bool(ext_call.return_data[64])
                        mem[196] = ext_call.return_data[0]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).updateConnector(address arg1, uint32 arg2, bool arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32] << 224, bool(ext_call.return_data[64]), ext_call.return_data[0]
                        require ext_call.success
                    s = ext_call.return_data[0]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = ext_call.return_data[128]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[64]
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    continue 
                require ext_code.size(arg1)
                call arg1.0x579cd3ca with:
                     gas gas_remaining wei
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xecbca55d with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] << 224)
                require ext_call.success
                require ext_code.size(arg1)
                call arg1.0x9396a7f0 with:
                     gas gas_remaining wei
                require ext_call.success
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(arg1)
                    call arg1.0x71f52bf3 with:
                         gas gas_remaining wei
                    require ext_call.success
                    s = 0
                    s = 0
                    idx = 0
                    s = 0
                    while uint16(idx) < uint16(ext_call.return_data[0]):
                        require ext_code.size(arg1)
                        call arg1.0x19b64015 with:
                             gas gas_remaining wei
                            args (idx << 240)
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x70a08231 with:
                             gas gas_remaining wei
                            args address(arg1)
                        require ext_call.success
                        mem[128] = 0x5e35359e00000000000000000000000000000000000000000000000000000000
                        mem[132] = address(ext_call.return_data[0])
                        mem[164] = address(ext_call.return_data[0])
                        mem[196] = ext_call.return_data[0]
                        require ext_code.size(arg1)
                        call arg1.0x5e35359e with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
                        require ext_call.success
                        s = ext_call.return_data[0]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                else:
                    idx = 0
                    while idx < ext_call.return_data[0]:
                        mem[(32 * ext_call.return_data[0]) + 200] = idx
                        require ext_code.size(arg1)
                        call arg1.0xe7ee85a5 with:
                             gas gas_remaining wei
                            args idx
                        mem[(32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0]
                        require ext_call.success
                        require idx < ext_call.return_data[0]
                        mem[(32 * idx) + 196] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[(32 * ext_call.return_data[0]) + 196] = 0xd395ee0f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * ext_call.return_data[0]) + 200] = 32
                    mem[(32 * ext_call.return_data[0]) + 232] = ext_call.return_data[0]
                    s = 0
                    while ext_call.return_data[0] < 32 * ext_call.return_data[0]:
                        mem[(34 * ext_call.return_data[0]) + 264] = mem[ext_call.return_data[0] + 196]
                        s = ext_call.return_data[0] + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xd395ee0f with:
                         gas gas_remaining wei
                        args mem[(32 * ext_call.return_data[0]) + 200 len (96 * ext_call.return_data[0]) + 64]
                    require ext_call.success
                    require ext_code.size(arg1)
                    call arg1.0x71f52bf3 with:
                         gas gas_remaining wei
                    require ext_call.success
                    s = 0
                    s = 0
                    idx = 0
                    s = 0
                    while uint16(idx) < uint16(ext_call.return_data[0]):
                        require ext_code.size(arg1)
                        call arg1.0x19b64015 with:
                             gas gas_remaining wei
                            args (idx << 240)
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x70a08231 with:
                             gas gas_remaining wei
                            args address(arg1)
                        require ext_call.success
                        mem[(32 * ext_call.return_data[0]) + 196] = 0x5e35359e00000000000000000000000000000000000000000000000000000000
                        mem[(32 * ext_call.return_data[0]) + 200] = address(ext_call.return_data[0])
                        mem[(32 * ext_call.return_data[0]) + 232] = address(ext_call.return_data[0])
                        mem[(32 * ext_call.return_data[0]) + 264] = ext_call.return_data[0]
                        require ext_code.size(arg1)
                        call arg1.0x5e35359e with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
                        require ext_call.success
                        s = ext_call.return_data[0]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
            else:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4af80f0e with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                require ext_code.size(arg1)
                call arg1.0x71f52bf3 with:
                     gas gas_remaining wei
                require ext_call.success
                s = 0
                s = 0
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while uint16(idx) < uint16(ext_call.return_data[0]):
                    require ext_code.size(arg1)
                    call arg1.0x19b64015 with:
                         gas gas_remaining wei
                        args (idx << 240)
                    require ext_call.success
                    require ext_code.size(arg1)
                    call arg1.connectors(address arg1) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    mem[96 len 160] = ext_call.return_data[0 len 160]
                    require ext_call.success
                    mem[96] = 0x3f4d2fc200000000000000000000000000000000000000000000000000000000
                    mem[100] = address(ext_call.return_data[0])
                    mem[132] = uint32(ext_call.return_data[32])
                    mem[164] = bool(ext_call.return_data[64])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x3f4d2fc2 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[32] << 224, bool(ext_call.return_data[64])
                    require ext_call.success
                    if ext_call.return_data[64]:
                        mem[96] = 0xca7892300000000000000000000000000000000000000000000000000000000
                        mem[100] = address(ext_call.return_data[0])
                        mem[132] = uint32(ext_call.return_data[32])
                        mem[164] = bool(ext_call.return_data[64])
                        mem[196] = ext_call.return_data[0]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).updateConnector(address arg1, uint32 arg2, bool arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32] << 224, bool(ext_call.return_data[64]), ext_call.return_data[0]
                        require ext_call.success
                    s = ext_call.return_data[0]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = ext_call.return_data[128]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[64]
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    continue 
                require ext_code.size(arg1)
                call arg1.0x579cd3ca with:
                     gas gas_remaining wei
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xecbca55d with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] << 224)
                require ext_call.success
                require ext_code.size(arg1)
                call arg1.0x9396a7f0 with:
                     gas gas_remaining wei
                require ext_call.success
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(arg1)
                    call arg1.0x71f52bf3 with:
                         gas gas_remaining wei
                    require ext_call.success
                    s = 0
                    s = 0
                    idx = 0
                    s = 0
                    while uint16(idx) < uint16(ext_call.return_data[0]):
                        require ext_code.size(arg1)
                        call arg1.0x19b64015 with:
                             gas gas_remaining wei
                            args (idx << 240)
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x70a08231 with:
                             gas gas_remaining wei
                            args address(arg1)
                        require ext_call.success
                        mem[128] = 0x5e35359e00000000000000000000000000000000000000000000000000000000
                        mem[132] = address(ext_call.return_data[0])
                        mem[164] = address(ext_call.return_data[0])
                        mem[196] = ext_call.return_data[0]
                        require ext_code.size(arg1)
                        call arg1.0x5e35359e with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
                        require ext_call.success
                        s = ext_call.return_data[0]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                else:
                    idx = 0
                    while idx < ext_call.return_data[0]:
                        mem[(32 * ext_call.return_data[0]) + 164] = idx
                        require ext_code.size(arg1)
                        call arg1.0xe7ee85a5 with:
                             gas gas_remaining wei
                            args idx
                        mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
                        require ext_call.success
                        require idx < ext_call.return_data[0]
                        mem[(32 * idx) + 160] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[(32 * ext_call.return_data[0]) + 160] = 0xd395ee0f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * ext_call.return_data[0]) + 164] = 32
                    mem[(32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0]
                    s = 0
                    while ext_call.return_data[0] < 32 * ext_call.return_data[0]:
                        mem[(34 * ext_call.return_data[0]) + 228] = mem[ext_call.return_data[0] + 160]
                        s = ext_call.return_data[0] + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xd395ee0f with:
                         gas gas_remaining wei
                        args mem[(32 * ext_call.return_data[0]) + 164 len (96 * ext_call.return_data[0]) + 64]
                    require ext_call.success
                    require ext_code.size(arg1)
                    call arg1.0x71f52bf3 with:
                         gas gas_remaining wei
                    require ext_call.success
                    s = 0
                    s = 0
                    idx = 0
                    s = 0
                    while uint16(idx) < uint16(ext_call.return_data[0]):
                        require ext_code.size(arg1)
                        call arg1.0x19b64015 with:
                             gas gas_remaining wei
                            args (idx << 240)
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x70a08231 with:
                             gas gas_remaining wei
                            args address(arg1)
                        require ext_call.success
                        mem[(32 * ext_call.return_data[0]) + 160] = 0x5e35359e00000000000000000000000000000000000000000000000000000000
                        mem[(32 * ext_call.return_data[0]) + 164] = address(ext_call.return_data[0])
                        mem[(32 * ext_call.return_data[0]) + 196] = address(ext_call.return_data[0])
                        mem[(32 * ext_call.return_data[0]) + 228] = ext_call.return_data[0]
                        require ext_code.size(arg1)
                        call arg1.0x5e35359e with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
                        require ext_call.success
                        s = ext_call.return_data[0]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
    else:
        if not ext_call.return_data[0]:
            call arg1.reserveTokenCount() with:
                 gas gas_remaining wei
            require ext_call.success
            s = 0
            s = 0
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while uint16(idx) < uint16(ext_call.return_data[0]):
                require ext_code.size(arg1)
                call arg1.reserveTokens(uint256 arg1) with:
                     gas gas_remaining wei
                    args (idx << 240)
                require ext_call.success
                require ext_code.size(arg1)
                call arg1.reserves(address arg1) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                mem[96 len 160] = ext_call.return_data[0 len 160]
                require ext_call.success
                mem[96] = 0x3f4d2fc200000000000000000000000000000000000000000000000000000000
                mem[100] = address(ext_call.return_data[0])
                mem[132] = uint32(ext_call.return_data[32])
                mem[164] = bool(ext_call.return_data[64])
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x3f4d2fc2 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[32] << 224, bool(ext_call.return_data[64])
                require ext_call.success
                if ext_call.return_data[64]:
                    mem[96] = 0xca7892300000000000000000000000000000000000000000000000000000000
                    mem[100] = address(ext_call.return_data[0])
                    mem[132] = uint32(ext_call.return_data[32])
                    mem[164] = bool(ext_call.return_data[64])
                    mem[196] = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).updateConnector(address arg1, uint32 arg2, bool arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[32] << 224, bool(ext_call.return_data[64]), ext_call.return_data[0]
                    require ext_call.success
                s = ext_call.return_data[0]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = ext_call.return_data[128]
                s = ext_call.return_data[96]
                s = ext_call.return_data[64]
                s = ext_call.return_data[32]
                s = ext_call.return_data[0]
                continue 
            require ext_code.size(arg1)
            call arg1.0x579cd3ca with:
                 gas gas_remaining wei
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xecbca55d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] << 224)
            require ext_call.success
            require ext_code.size(arg1)
            call arg1.0x9396a7f0 with:
                 gas gas_remaining wei
            require ext_call.success
            if ext_call.return_data[0] <= 0:
                require ext_code.size(arg1)
                call arg1.reserveTokenCount() with:
                     gas gas_remaining wei
                require ext_call.success
                s = 0
                s = 0
                idx = 0
                s = 0
                while uint16(idx) < uint16(ext_call.return_data[0]):
                    require ext_code.size(arg1)
                    call arg1.reserveTokens(uint256 arg1) with:
                         gas gas_remaining wei
                        args (idx << 240)
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x70a08231 with:
                         gas gas_remaining wei
                        args address(arg1)
                    require ext_call.success
                    mem[128] = 0x5e35359e00000000000000000000000000000000000000000000000000000000
                    mem[132] = address(ext_call.return_data[0])
                    mem[164] = address(ext_call.return_data[0])
                    mem[196] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0x5e35359e with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
                    require ext_call.success
                    s = ext_call.return_data[0]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
            else:
                idx = 0
                while idx < ext_call.return_data[0]:
                    mem[(32 * ext_call.return_data[0]) + 200] = idx
                    require ext_code.size(arg1)
                    call arg1.0xe7ee85a5 with:
                         gas gas_remaining wei
                        args idx
                    mem[(32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0]
                    require ext_call.success
                    require idx < ext_call.return_data[0]
                    mem[(32 * idx) + 196] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[(32 * ext_call.return_data[0]) + 196] = 0xd395ee0f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ext_call.return_data[0]) + 200] = 32
                mem[(32 * ext_call.return_data[0]) + 232] = ext_call.return_data[0]
                s = 0
                while ext_call.return_data[0] < 32 * ext_call.return_data[0]:
                    mem[(34 * ext_call.return_data[0]) + 264] = mem[ext_call.return_data[0] + 196]
                    s = ext_call.return_data[0] + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xd395ee0f with:
                     gas gas_remaining wei
                    args mem[(32 * ext_call.return_data[0]) + 200 len (96 * ext_call.return_data[0]) + 64]
                require ext_call.success
                require ext_code.size(arg1)
                call arg1.reserveTokenCount() with:
                     gas gas_remaining wei
                require ext_call.success
                s = 0
                s = 0
                idx = 0
                s = 0
                while uint16(idx) < uint16(ext_call.return_data[0]):
                    require ext_code.size(arg1)
                    call arg1.reserveTokens(uint256 arg1) with:
                         gas gas_remaining wei
                        args (idx << 240)
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x70a08231 with:
                         gas gas_remaining wei
                        args address(arg1)
                    require ext_call.success
                    mem[(32 * ext_call.return_data[0]) + 196] = 0x5e35359e00000000000000000000000000000000000000000000000000000000
                    mem[(32 * ext_call.return_data[0]) + 200] = address(ext_call.return_data[0])
                    mem[(32 * ext_call.return_data[0]) + 232] = address(ext_call.return_data[0])
                    mem[(32 * ext_call.return_data[0]) + 264] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0x5e35359e with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
                    require ext_call.success
                    s = ext_call.return_data[0]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
        else:
            call arg1.0xc45d3d92 with:
                 gas gas_remaining wei
            require ext_call.success
            if not ext_call.return_data[12 len 20]:
                require ext_code.size(arg1)
                call arg1.reserveTokenCount() with:
                     gas gas_remaining wei
                require ext_call.success
                s = 0
                s = 0
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while uint16(idx) < uint16(ext_call.return_data[0]):
                    require ext_code.size(arg1)
                    call arg1.reserveTokens(uint256 arg1) with:
                         gas gas_remaining wei
                        args (idx << 240)
                    require ext_call.success
                    require ext_code.size(arg1)
                    call arg1.reserves(address arg1) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    mem[96 len 160] = ext_call.return_data[0 len 160]
                    require ext_call.success
                    mem[96] = 0x3f4d2fc200000000000000000000000000000000000000000000000000000000
                    mem[100] = address(ext_call.return_data[0])
                    mem[132] = uint32(ext_call.return_data[32])
                    mem[164] = bool(ext_call.return_data[64])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x3f4d2fc2 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[32] << 224, bool(ext_call.return_data[64])
                    require ext_call.success
                    if ext_call.return_data[64]:
                        mem[96] = 0xca7892300000000000000000000000000000000000000000000000000000000
                        mem[100] = address(ext_call.return_data[0])
                        mem[132] = uint32(ext_call.return_data[32])
                        mem[164] = bool(ext_call.return_data[64])
                        mem[196] = ext_call.return_data[0]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).updateConnector(address arg1, uint32 arg2, bool arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32] << 224, bool(ext_call.return_data[64]), ext_call.return_data[0]
                        require ext_call.success
                    s = ext_call.return_data[0]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = ext_call.return_data[128]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[64]
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    continue 
                require ext_code.size(arg1)
                call arg1.0x579cd3ca with:
                     gas gas_remaining wei
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xecbca55d with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] << 224)
                require ext_call.success
                require ext_code.size(arg1)
                call arg1.0x9396a7f0 with:
                     gas gas_remaining wei
                require ext_call.success
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(arg1)
                    call arg1.reserveTokenCount() with:
                         gas gas_remaining wei
                    require ext_call.success
                    s = 0
                    s = 0
                    idx = 0
                    s = 0
                    while uint16(idx) < uint16(ext_call.return_data[0]):
                        require ext_code.size(arg1)
                        call arg1.reserveTokens(uint256 arg1) with:
                             gas gas_remaining wei
                            args (idx << 240)
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x70a08231 with:
                             gas gas_remaining wei
                            args address(arg1)
                        require ext_call.success
                        mem[128] = 0x5e35359e00000000000000000000000000000000000000000000000000000000
                        mem[132] = address(ext_call.return_data[0])
                        mem[164] = address(ext_call.return_data[0])
                        mem[196] = ext_call.return_data[0]
                        require ext_code.size(arg1)
                        call arg1.0x5e35359e with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
                        require ext_call.success
                        s = ext_call.return_data[0]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                else:
                    idx = 0
                    while idx < ext_call.return_data[0]:
                        mem[(32 * ext_call.return_data[0]) + 164] = idx
                        require ext_code.size(arg1)
                        call arg1.0xe7ee85a5 with:
                             gas gas_remaining wei
                            args idx
                        mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
                        require ext_call.success
                        require idx < ext_call.return_data[0]
                        mem[(32 * idx) + 160] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[(32 * ext_call.return_data[0]) + 160] = 0xd395ee0f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * ext_call.return_data[0]) + 164] = 32
                    mem[(32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0]
                    s = 0
                    while ext_call.return_data[0] < 32 * ext_call.return_data[0]:
                        mem[(34 * ext_call.return_data[0]) + 228] = mem[ext_call.return_data[0] + 160]
                        s = ext_call.return_data[0] + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xd395ee0f with:
                         gas gas_remaining wei
                        args mem[(32 * ext_call.return_data[0]) + 164 len (96 * ext_call.return_data[0]) + 64]
                    require ext_call.success
                    require ext_code.size(arg1)
                    call arg1.reserveTokenCount() with:
                         gas gas_remaining wei
                    require ext_call.success
                    s = 0
                    s = 0
                    idx = 0
                    s = 0
                    while uint16(idx) < uint16(ext_call.return_data[0]):
                        require ext_code.size(arg1)
                        call arg1.reserveTokens(uint256 arg1) with:
                             gas gas_remaining wei
                            args (idx << 240)
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x70a08231 with:
                             gas gas_remaining wei
                            args address(arg1)
                        require ext_call.success
                        mem[(32 * ext_call.return_data[0]) + 160] = 0x5e35359e00000000000000000000000000000000000000000000000000000000
                        mem[(32 * ext_call.return_data[0]) + 164] = address(ext_call.return_data[0])
                        mem[(32 * ext_call.return_data[0]) + 196] = address(ext_call.return_data[0])
                        mem[(32 * ext_call.return_data[0]) + 228] = ext_call.return_data[0]
                        require ext_code.size(arg1)
                        call arg1.0x5e35359e with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
                        require ext_call.success
                        s = ext_call.return_data[0]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
            else:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4af80f0e with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                require ext_code.size(arg1)
                call arg1.reserveTokenCount() with:
                     gas gas_remaining wei
                require ext_call.success
                s = 0
                s = 0
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while uint16(idx) < uint16(ext_call.return_data[0]):
                    require ext_code.size(arg1)
                    call arg1.reserveTokens(uint256 arg1) with:
                         gas gas_remaining wei
                        args (idx << 240)
                    require ext_call.success
                    require ext_code.size(arg1)
                    call arg1.reserves(address arg1) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    mem[96 len 160] = ext_call.return_data[0 len 160]
                    require ext_call.success
                    mem[96] = 0x3f4d2fc200000000000000000000000000000000000000000000000000000000
                    mem[100] = address(ext_call.return_data[0])
                    mem[132] = uint32(ext_call.return_data[32])
                    mem[164] = bool(ext_call.return_data[64])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x3f4d2fc2 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[32] << 224, bool(ext_call.return_data[64])
                    require ext_call.success
                    if ext_call.return_data[64]:
                        mem[96] = 0xca7892300000000000000000000000000000000000000000000000000000000
                        mem[100] = address(ext_call.return_data[0])
                        mem[132] = uint32(ext_call.return_data[32])
                        mem[164] = bool(ext_call.return_data[64])
                        mem[196] = ext_call.return_data[0]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).updateConnector(address arg1, uint32 arg2, bool arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32] << 224, bool(ext_call.return_data[64]), ext_call.return_data[0]
                        require ext_call.success
                    s = ext_call.return_data[0]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = ext_call.return_data[128]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[64]
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    continue 
                require ext_code.size(arg1)
                call arg1.0x579cd3ca with:
                     gas gas_remaining wei
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xecbca55d with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] << 224)
                require ext_call.success
                require ext_code.size(arg1)
                call arg1.0x9396a7f0 with:
                     gas gas_remaining wei
                require ext_call.success
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(arg1)
                    call arg1.reserveTokenCount() with:
                         gas gas_remaining wei
                    require ext_call.success
                    s = 0
                    s = 0
                    idx = 0
                    s = 0
                    while uint16(idx) < uint16(ext_call.return_data[0]):
                        require ext_code.size(arg1)
                        call arg1.reserveTokens(uint256 arg1) with:
                             gas gas_remaining wei
                            args (idx << 240)
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x70a08231 with:
                             gas gas_remaining wei
                            args address(arg1)
                        require ext_call.success
                        mem[128] = 0x5e35359e00000000000000000000000000000000000000000000000000000000
                        mem[132] = address(ext_call.return_data[0])
                        mem[164] = address(ext_call.return_data[0])
                        mem[196] = ext_call.return_data[0]
                        require ext_code.size(arg1)
                        call arg1.0x5e35359e with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
                        require ext_call.success
                        s = ext_call.return_data[0]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                else:
                    idx = 0
                    while idx < ext_call.return_data[0]:
                        mem[(32 * ext_call.return_data[0]) + 200] = idx
                        require ext_code.size(arg1)
                        call arg1.0xe7ee85a5 with:
                             gas gas_remaining wei
                            args idx
                        mem[(32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0]
                        require ext_call.success
                        require idx < ext_call.return_data[0]
                        mem[(32 * idx) + 196] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[(32 * ext_call.return_data[0]) + 196] = 0xd395ee0f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * ext_call.return_data[0]) + 200] = 32
                    mem[(32 * ext_call.return_data[0]) + 232] = ext_call.return_data[0]
                    s = 0
                    while ext_call.return_data[0] < 32 * ext_call.return_data[0]:
                        mem[(34 * ext_call.return_data[0]) + 264] = mem[ext_call.return_data[0] + 196]
                        s = ext_call.return_data[0] + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xd395ee0f with:
                         gas gas_remaining wei
                        args mem[(32 * ext_call.return_data[0]) + 200 len (96 * ext_call.return_data[0]) + 64]
                    require ext_call.success
                    require ext_code.size(arg1)
                    call arg1.reserveTokenCount() with:
                         gas gas_remaining wei
                    require ext_call.success
                    s = 0
                    s = 0
                    idx = 0
                    s = 0
                    while uint16(idx) < uint16(ext_call.return_data[0]):
                        require ext_code.size(arg1)
                        call arg1.reserveTokens(uint256 arg1) with:
                             gas gas_remaining wei
                            args (idx << 240)
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x70a08231 with:
                             gas gas_remaining wei
                            args address(arg1)
                        require ext_call.success
                        mem[(32 * ext_call.return_data[0]) + 196] = 0x5e35359e00000000000000000000000000000000000000000000000000000000
                        mem[(32 * ext_call.return_data[0]) + 200] = address(ext_call.return_data[0])
                        mem[(32 * ext_call.return_data[0]) + 232] = address(ext_call.return_data[0])
                        mem[(32 * ext_call.return_data[0]) + 264] = ext_call.return_data[0]
                        require ext_code.size(arg1)
                        call arg1.0x5e35359e with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
                        require ext_call.success
                        s = ext_call.return_data[0]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
    require ext_code.size(arg1)
    call arg1.0xfc0c546a with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(arg1)
    if address(ext_call.return_data[0]) == arg1:
        call arg1.0x21e6b53d with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x38a5e016 with:
             gas gas_remaining wei
        require ext_call.success
    call arg1.0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xe4edf852 with:
         gas gas_remaining wei
        args msg.sender
    require ext_call.success
    emit ConverterUpgrade(arg1, address(ext_call.return_data[0]));
}



}
