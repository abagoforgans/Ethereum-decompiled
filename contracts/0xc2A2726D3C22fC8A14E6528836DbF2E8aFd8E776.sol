contract main {




// =====================  Runtime code  =====================


const sub_1a3540f6(?) = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315

const sub_2258bfb6(?) = 'ETH'

const sub_55083deb(?) = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c

const sub_d3d2567b(?) = 'BNT'

const BANCOR_CONVERTER_FACTORY = 'BancorConverterFactory'

const BANCOR_FORMULA = 'BancorFormula'

const CONTRACT_FEATURES = 'ContractFeatures'

const BANCOR_NETWORK = 'BancorNetwork'

const BANCOR_GAS_PRICE_LIMIT = 'BancorGasPriceLimit'


address owner;
uint256 stor1;
address bancorRegistryAddress;
mapping of struct stor3;
array of uint256 availableTokens;

function bancorRegistry() {
    return bancorRegistryAddress
}

function owner() {
    return owner
}

function availableTokens(uint256 arg1) {
    require arg1 < availableTokens.length
    return availableTokens[arg1]
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawEther() {
    require msg.sender == owner
    require stor1 == 1
    stor1 = 2
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function setBancorRegistry(address arg1) {
    require msg.sender == owner
    require stor1 == 1
    stor1 = 2
    require ext_code.size(arg1)
    call arg1.addressOf(bytes32 arg1) with:
         gas gas_remaining wei
        args 'BancorNetwork'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20]
    bancorRegistryAddress = arg1
    stor1 = 1
}

function getBalance(bytes32 arg1) {
    if arg1 == 'ETH':
        return eth.balance(this.address)
    require address(stor3[arg1].field_0)
    require ext_code.size(address(stor3[arg1].field_0))
    call address(stor3[arg1].field_0).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawERC20Token(address arg1) {
    require msg.sender == owner
    require stor1 == 1
    stor1 = 2
    require arg1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor1 = 1
}

function sub_ab564869(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require stor1 == 1
    stor1 = 2
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 3
        if address(stor3[mem[(32 * idx) + 128]].field_0):
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 3
            address(stor3[mem[(32 * idx) + 128]].field_0) = 0
            address(stor3[mem[(32 * idx) + 128]].field_256) = 0
            s = 0
            while s < availableTokens.length:
                require idx < arg1.length
                require s < availableTokens.length
                mem[0] = 4
                if availableTokens[s] == mem[(32 * idx) + 128]:
                    require s < availableTokens.length
                    mem[0] = 4
                    availableTokens[s] = 0
                    availableTokens.length--
                    if availableTokens.length > availableTokens.length - 1:
                        mem[0] = 4
                        idx = sha3(4) + availableTokens.length - 1
                        while sha3(4) + availableTokens.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                s = s + 1
                continue 
        idx = idx + 1
        continue 
    stor1 = 1
}

function withdrawAll(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        require msg.sender == owner
        require stor1 == 1
        stor1 = 2
        require mem[(32 * idx) + 140 len 20]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 132] = owner
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_17))
        call address(_17).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        stor1 = 1
        idx = idx + 1
        continue 
    require msg.sender == owner
    require stor1 == 1
    stor1 = 2
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function sub_ea568050(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    require stor1 == 1
    stor1 = 2
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        require mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 3
        if address(stor3[mem[(32 * idx) + 128]].field_0):
            _51 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[(32 * arg1.length) + 128]
            mem[_51] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[_51 + 32] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 3
            address(stor3[mem[(32 * idx) + 128]].field_0) = mem[_51 + 12 len 20]
            address(stor3[mem[(32 * idx) + 128]].field_256) = mem[_51 + 44 len 20]
        else:
            require idx < mem[96]
            availableTokens.length++
            mem[0] = 4
            availableTokens[availableTokens.length] = mem[(32 * idx) + 128]
            _60 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[(32 * arg1.length) + 128]
            mem[_60] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[_60 + 32] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 3
            address(stor3[mem[(32 * idx) + 128]].field_0) = mem[_60 + 12 len 20]
            address(stor3[mem[(32 * idx) + 128]].field_256) = mem[_60 + 44 len 20]
        idx = idx + 1
        continue 
    stor1 = 1
}

function getAvailableTokens() {
    mem[96] = availableTokens.length
    if not availableTokens.length:
        mem[(32 * availableTokens.length) + 128] = availableTokens.length
        mem[(64 * availableTokens.length) + 160] = availableTokens.length
        mem[64] = (98 * availableTokens.length) + 192
        idx = 0
        while idx < availableTokens.length:
            require idx < mem[96]
            mem[(32 * idx) + 128] = availableTokens[idx]
            require idx < mem[96]
            require idx < mem[(32 * availableTokens.length) + 128]
            mem[(32 * idx) + (32 * availableTokens.length) + 160] = address(stor3[stor4[idx]].field_0)
            require idx < mem[96]
            mem[0] = availableTokens[idx]
            mem[32] = 3
            require idx < mem[(64 * availableTokens.length) + 160]
            mem[(32 * idx) + (64 * availableTokens.length) + 192] = address(stor3[stor4[idx]].field_256)
            idx = idx + 1
            continue 
        _46 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _48 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _46 + 96] = mem[(32 * availableTokens.length) + 128]
        _79 = mem[(32 * availableTokens.length) + 128]
        mem[(32 * _48) + _46 + 128 len floor32(mem[(32 * availableTokens.length) + 128])] = mem[(32 * availableTokens.length) + 160 len floor32(mem[(32 * availableTokens.length) + 128])]
        return memory
          from mem[64]
           len (32 * _79) + (32 * _48) + _46 + -mem[64] + 128
    mem[128 len 32 * availableTokens.length] = code.data[12737 len 32 * availableTokens.length]
    mem[(32 * availableTokens.length) + 128] = availableTokens.length
    mem[(32 * availableTokens.length) + 160 len 32 * availableTokens.length] = code.data[12737 len 32 * availableTokens.length]
    mem[(64 * availableTokens.length) + 160] = availableTokens.length
    mem[64] = (98 * availableTokens.length) + 192
    mem[(64 * availableTokens.length) + 192 len 32 * availableTokens.length] = code.data[12737 len 32 * availableTokens.length]
    idx = 0
    while idx < availableTokens.length:
        require idx < mem[96]
        mem[(32 * idx) + 128] = availableTokens[idx]
        require idx < mem[96]
        require idx < mem[(32 * availableTokens.length) + 128]
        mem[(32 * idx) + (32 * availableTokens.length) + 160] = address(stor3[stor4[idx]].field_0)
        require idx < mem[96]
        mem[0] = availableTokens[idx]
        mem[32] = 3
        require idx < mem[(64 * availableTokens.length) + 160]
        mem[(32 * idx) + (64 * availableTokens.length) + 192] = address(stor3[stor4[idx]].field_256)
        idx = idx + 1
        continue 
    _50 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _52 = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + _50 + 96] = mem[(32 * availableTokens.length) + 128]
    _82 = mem[(32 * availableTokens.length) + 128]
    mem[(32 * _52) + _50 + 128 len floor32(mem[(32 * availableTokens.length) + 128])] = mem[(32 * availableTokens.length) + 160 len floor32(mem[(32 * availableTokens.length) + 128])]
    return memory
      from mem[64]
       len (32 * _82) + (32 * _52) + _50 + -mem[64] + 128
}

function sub_1bbaa8b0(?) {
    require address(stor3[arg1].field_0)
    require address(stor3[arg2].field_0)
    require address(stor3[arg1].field_256)
    require address(stor3[arg2].field_256)
    mem[128 len 160] = code.data[12737 len 160]
    mem[128] = address(stor3[arg1].field_0)
    if address(stor3[arg1].field_0) == address(stor3[arg1].field_256):
        if address(stor3[arg2].field_0) == address(stor3[arg2].field_256):
            mem[160] = address(stor3[arg2].field_0)
            if address(code.data[12833 len 32]):
                mem[352 len 0] = None
                return Array(len=5, data=mem[352 len 160])
        else:
            if address(stor3[arg1].field_256) != address(stor3['BNT'].field_0):
                mem[160] = address(stor3['BNT'].field_0)
                mem[192] = address(stor3[arg2].field_256)
                mem[224] = address(stor3[arg2].field_0)
                if address(stor3[arg2].field_0):
                    mem[352 len 0] = None
                    return Array(len=5, data=mem[352 len 160])
            else:
                if address(stor3[arg2].field_256) == address(stor3['BNT'].field_0):
                    mem[160] = address(stor3[arg2].field_256)
                    mem[192] = address(stor3[arg2].field_0)
                    if address(code.data[12833 len 32]):
                        mem[352 len 0] = None
                        return Array(len=5, data=mem[352 len 160])
                else:
                    mem[160] = address(stor3['BNT'].field_0)
                    mem[192] = address(stor3[arg2].field_256)
                    mem[224] = address(stor3[arg2].field_0)
                    if address(stor3[arg2].field_0):
                        mem[352 len 0] = None
                        return Array(len=5, data=mem[352 len 160])
    else:
        mem[160] = address(stor3[arg1].field_256)
        if address(stor3[arg2].field_0) == address(stor3[arg2].field_256):
            mem[192] = address(stor3[arg2].field_0)
            if address(code.data[12833 len 32]):
                mem[352 len 0] = None
                return Array(len=5, data=mem[352 len 160])
        else:
            if address(stor3[arg1].field_256) != address(stor3['BNT'].field_0):
                mem[192] = address(stor3['BNT'].field_0)
                mem[224] = address(stor3[arg2].field_256)
                mem[256] = address(stor3[arg2].field_0)
                if address(stor3[arg2].field_256):
                    mem[352 len 0] = None
                    return Array(len=5, data=mem[352 len 160])
            else:
                if address(stor3[arg2].field_256) == address(stor3['BNT'].field_0):
                    mem[192] = address(stor3[arg2].field_256)
                    mem[224] = address(stor3[arg2].field_0)
                    if address(stor3[arg2].field_0):
                        mem[352 len 0] = None
                        return Array(len=5, data=mem[352 len 160])
                else:
                    mem[192] = address(stor3['BNT'].field_0)
                    mem[224] = address(stor3[arg2].field_256)
                    mem[256] = address(stor3[arg2].field_0)
                    if address(stor3[arg2].field_256):
                        mem[352 len 0] = None
                        return Array(len=5, data=mem[352 len 160])
    mem[288] = 3
    mem[320 len 96] = code.data[12737 len 96]
    idx = 0
    while uint16(idx) < 3:
        require uint16(idx) < 5
        require uint16(idx) < mem[288]
        mem[(32 * uint16(idx)) + 320] = mem[(32 * uint16(idx)) + 140 len 20]
        idx = idx + 1
        continue 
    mem[416] = 32
    mem[448] = mem[288]
    mem[480 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
    return 32, mem[448 len (32 * mem[288]) + 32]
}

function sub_4ffbd9b6(?) {
    mem[96] = availableTokens.length
    if not availableTokens.length:
        mem[(32 * availableTokens.length) + 128] = availableTokens.length
        mem[(64 * availableTokens.length) + 160] = availableTokens.length
        mem[64] = (98 * availableTokens.length) + 192
        idx = 0
        while idx < availableTokens.length:
            require idx < mem[96]
            mem[(32 * idx) + 128] = availableTokens[idx]
            require idx < mem[96]
            require idx < mem[(32 * availableTokens.length) + 128]
            mem[(32 * idx) + (32 * availableTokens.length) + 160] = address(stor3[stor4[idx]].field_0)
            require idx < mem[96]
            mem[0] = availableTokens[idx]
            mem[32] = 3
            require idx < mem[(64 * availableTokens.length) + 160]
            mem[(32 * idx) + (64 * availableTokens.length) + 192] = address(stor3[stor4[idx]].field_256)
            idx = idx + 1
            continue 
        _48 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _50 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * _50) + 128
        mem[(32 * _50) + _48 + 128] = mem[(32 * availableTokens.length) + 128]
        _91 = mem[(32 * availableTokens.length) + 128]
        mem[(32 * _50) + _48 + 160 len floor32(mem[(32 * availableTokens.length) + 128])] = mem[(32 * availableTokens.length) + 160 len floor32(mem[(32 * availableTokens.length) + 128])]
        mem[_48 + 64] = (32 * _91) + (32 * _50) + 160
        mem[(32 * _91) + (32 * _50) + _48 + 160] = mem[(64 * availableTokens.length) + 160]
        _107 = mem[(64 * availableTokens.length) + 160]
        mem[(32 * _91) + (32 * _50) + _48 + 192 len floor32(mem[(64 * availableTokens.length) + 160])] = mem[(64 * availableTokens.length) + 192 len floor32(mem[(64 * availableTokens.length) + 160])]
        return memory
          from mem[64]
           len (32 * _107) + (32 * _91) + (32 * _50) + _48 + -mem[64] + 192
    mem[128 len 32 * availableTokens.length] = code.data[12737 len 32 * availableTokens.length]
    mem[(32 * availableTokens.length) + 128] = availableTokens.length
    mem[(32 * availableTokens.length) + 160 len 32 * availableTokens.length] = code.data[12737 len 32 * availableTokens.length]
    mem[(64 * availableTokens.length) + 160] = availableTokens.length
    mem[64] = (98 * availableTokens.length) + 192
    mem[(64 * availableTokens.length) + 192 len 32 * availableTokens.length] = code.data[12737 len 32 * availableTokens.length]
    idx = 0
    while idx < availableTokens.length:
        require idx < mem[96]
        mem[(32 * idx) + 128] = availableTokens[idx]
        require idx < mem[96]
        require idx < mem[(32 * availableTokens.length) + 128]
        mem[(32 * idx) + (32 * availableTokens.length) + 160] = address(stor3[stor4[idx]].field_0)
        require idx < mem[96]
        mem[0] = availableTokens[idx]
        mem[32] = 3
        require idx < mem[(64 * availableTokens.length) + 160]
        mem[(32 * idx) + (64 * availableTokens.length) + 192] = address(stor3[stor4[idx]].field_256)
        idx = idx + 1
        continue 
    _53 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[96]
    _55 = mem[96]
    mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * _55) + 128
    mem[(32 * _55) + _53 + 128] = mem[(32 * availableTokens.length) + 128]
    _94 = mem[(32 * availableTokens.length) + 128]
    mem[(32 * _55) + _53 + 160 len floor32(mem[(32 * availableTokens.length) + 128])] = mem[(32 * availableTokens.length) + 160 len floor32(mem[(32 * availableTokens.length) + 128])]
    mem[_53 + 64] = (32 * _94) + (32 * _55) + 160
    mem[(32 * _94) + (32 * _55) + _53 + 160] = mem[(64 * availableTokens.length) + 160]
    _110 = mem[(64 * availableTokens.length) + 160]
    mem[(32 * _94) + (32 * _55) + _53 + 192 len floor32(mem[(64 * availableTokens.length) + 160])] = mem[(64 * availableTokens.length) + 192 len floor32(mem[(64 * availableTokens.length) + 160])]
    return memory
      from mem[64]
       len (32 * _110) + (32 * _94) + (32 * _55) + _53 + -mem[64] + 192
}

function sub_9dcda2a5(?) {
    require msg.sender == owner
    require stor1 == 1
    stor1 = 2
    require address(stor3[arg1].field_0)
    require address(stor3[arg2].field_0)
    require address(stor3[arg1].field_256)
    require address(stor3[arg2].field_256)
    require ext_code.size(bancorRegistryAddress)
    call bancorRegistryAddress.addressOf(bytes32 arg1) with:
         gas gas_remaining wei
        args 'BancorNetwork'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20]
    if arg1 == 'ETH':
        require eth.balance(this.address) >= arg3
    else:
        require address(stor3[arg1].field_0)
        require ext_code.size(address(stor3[arg1].field_0))
        call address(stor3[arg1].field_0).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg3
    require address(stor3[arg1].field_0)
    require address(stor3[arg2].field_0)
    require address(stor3[arg1].field_256)
    require address(stor3[arg2].field_256)
    mem[128 len 160] = code.data[12737 len 160]
    mem[128] = address(stor3[arg1].field_0)
    if address(stor3[arg1].field_0) == address(stor3[arg1].field_256):
        if address(stor3[arg2].field_0) == address(stor3[arg2].field_256):
            mem[160] = address(stor3[arg2].field_0)
            if address(code.data[12833 len 32]):
                if arg2 == 'ETH':
                    require eth.balance(this.address) + arg4 >= eth.balance(this.address)
                    if arg1 == 'ETH':
                        mem[452 len 0] = None
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                           value arg3 wei
                             gas gas_remaining wei
                            args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                    else:
                        require ext_code.size(address(stor3[arg1].field_256))
                        call address(stor3[arg1].field_256).0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor3[arg1].field_0))
                        call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[452 len 0] = None
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 == 'ETH':
                        require eth.balance(this.address) >= eth.balance(this.address) + arg4
                    else:
                        require address(stor3[arg2].field_0)
                        require ext_code.size(address(stor3[arg2].field_0))
                        call address(stor3[arg2].field_0).0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= eth.balance(this.address) + arg4
                else:
                    require address(stor3[arg2].field_0)
                    require ext_code.size(address(stor3[arg2].field_0))
                    call address(stor3[arg2].field_0).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
                    if arg1 == 'ETH':
                        mem[452 len 0] = None
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                           value arg3 wei
                             gas gas_remaining wei
                            args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                    else:
                        require ext_code.size(address(stor3[arg1].field_256))
                        call address(stor3[arg1].field_256).0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor3[arg1].field_0))
                        call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[452 len 0] = None
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 == 'ETH':
                        require eth.balance(this.address) >= ext_call.return_data[0] + arg4
                    else:
                        require address(stor3[arg2].field_0)
                        require ext_code.size(address(stor3[arg2].field_0))
                        call address(stor3[arg2].field_0).0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= ext_call.return_data[0] + arg4
            else:
                mem[288] = 3
                mem[320 len 96] = code.data[12737 len 96]
                idx = 0
                while uint16(idx) < 3:
                    require uint16(idx) < 5
                    require uint16(idx) < mem[288]
                    mem[(32 * uint16(idx)) + 320] = mem[(32 * uint16(idx)) + 140 len 20]
                    idx = idx + 1
                    continue 
                if arg2 == 'ETH':
                    require eth.balance(this.address) + arg4 >= eth.balance(this.address)
                    if arg1 == 'ETH':
                        mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                        mem[452] = arg3
                        mem[484] = arg4
                        mem[516] = this.address
                        mem[420] = 128
                        mem[548] = mem[288]
                        mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                           value arg3 wei
                             gas gas_remaining wei
                            args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                    else:
                        require ext_code.size(address(stor3[arg1].field_256))
                        call address(stor3[arg1].field_256).0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor3[arg1].field_0))
                        call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                        mem[452] = arg3
                        mem[484] = arg4
                        mem[516] = this.address
                        mem[420] = 128
                        mem[548] = mem[288]
                        mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 == 'ETH':
                        require eth.balance(this.address) >= eth.balance(this.address) + arg4
                    else:
                        require address(stor3[arg2].field_0)
                        require ext_code.size(address(stor3[arg2].field_0))
                        call address(stor3[arg2].field_0).0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= eth.balance(this.address) + arg4
                else:
                    require address(stor3[arg2].field_0)
                    require ext_code.size(address(stor3[arg2].field_0))
                    call address(stor3[arg2].field_0).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
                    if arg1 == 'ETH':
                        mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                        mem[452] = arg3
                        mem[484] = arg4
                        mem[516] = this.address
                        mem[420] = 128
                        mem[548] = mem[288]
                        mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                           value arg3 wei
                             gas gas_remaining wei
                            args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                    else:
                        require ext_code.size(address(stor3[arg1].field_256))
                        call address(stor3[arg1].field_256).0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor3[arg1].field_0))
                        call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                        mem[452] = arg3
                        mem[484] = arg4
                        mem[516] = this.address
                        mem[420] = 128
                        mem[548] = mem[288]
                        mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 == 'ETH':
                        require eth.balance(this.address) >= ext_call.return_data[0] + arg4
                    else:
                        require address(stor3[arg2].field_0)
                        require ext_code.size(address(stor3[arg2].field_0))
                        call address(stor3[arg2].field_0).0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= ext_call.return_data[0] + arg4
        else:
            if address(stor3[arg1].field_256) != address(stor3['BNT'].field_0):
                mem[160] = address(stor3['BNT'].field_0)
                mem[192] = address(stor3[arg2].field_256)
                mem[224] = address(stor3[arg2].field_0)
                if address(stor3[arg2].field_0):
                    if arg2 == 'ETH':
                        require eth.balance(this.address) + arg4 >= eth.balance(this.address)
                        if arg1 == 'ETH':
                            mem[452 len 0] = None
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                               value arg3 wei
                                 gas gas_remaining wei
                                args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                        else:
                            require ext_code.size(address(stor3[arg1].field_256))
                            call address(stor3[arg1].field_256).0x8da5cb5b with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3[arg1].field_0))
                            call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[452 len 0] = None
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 == 'ETH':
                            require eth.balance(this.address) >= eth.balance(this.address) + arg4
                        else:
                            require address(stor3[arg2].field_0)
                            require ext_code.size(address(stor3[arg2].field_0))
                            call address(stor3[arg2].field_0).0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= eth.balance(this.address) + arg4
                    else:
                        require address(stor3[arg2].field_0)
                        require ext_code.size(address(stor3[arg2].field_0))
                        call address(stor3[arg2].field_0).0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
                        if arg1 == 'ETH':
                            mem[452 len 0] = None
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                               value arg3 wei
                                 gas gas_remaining wei
                                args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                        else:
                            require ext_code.size(address(stor3[arg1].field_256))
                            call address(stor3[arg1].field_256).0x8da5cb5b with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3[arg1].field_0))
                            call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[452 len 0] = None
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 == 'ETH':
                            require eth.balance(this.address) >= ext_call.return_data[0] + arg4
                        else:
                            require address(stor3[arg2].field_0)
                            require ext_code.size(address(stor3[arg2].field_0))
                            call address(stor3[arg2].field_0).0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= ext_call.return_data[0] + arg4
                else:
                    mem[288] = 3
                    mem[320 len 96] = code.data[12737 len 96]
                    idx = 0
                    while uint16(idx) < 3:
                        require uint16(idx) < 5
                        require uint16(idx) < mem[288]
                        mem[(32 * uint16(idx)) + 320] = mem[(32 * uint16(idx)) + 140 len 20]
                        idx = idx + 1
                        continue 
                    if arg2 == 'ETH':
                        require eth.balance(this.address) + arg4 >= eth.balance(this.address)
                        if arg1 == 'ETH':
                            mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                            mem[452] = arg3
                            mem[484] = arg4
                            mem[516] = this.address
                            mem[420] = 128
                            mem[548] = mem[288]
                            mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                               value arg3 wei
                                 gas gas_remaining wei
                                args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                        else:
                            require ext_code.size(address(stor3[arg1].field_256))
                            call address(stor3[arg1].field_256).0x8da5cb5b with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3[arg1].field_0))
                            call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                            mem[452] = arg3
                            mem[484] = arg4
                            mem[516] = this.address
                            mem[420] = 128
                            mem[548] = mem[288]
                            mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 == 'ETH':
                            require eth.balance(this.address) >= eth.balance(this.address) + arg4
                        else:
                            require address(stor3[arg2].field_0)
                            require ext_code.size(address(stor3[arg2].field_0))
                            call address(stor3[arg2].field_0).0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= eth.balance(this.address) + arg4
                    else:
                        require address(stor3[arg2].field_0)
                        require ext_code.size(address(stor3[arg2].field_0))
                        call address(stor3[arg2].field_0).0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
                        if arg1 == 'ETH':
                            mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                            mem[452] = arg3
                            mem[484] = arg4
                            mem[516] = this.address
                            mem[420] = 128
                            mem[548] = mem[288]
                            mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                               value arg3 wei
                                 gas gas_remaining wei
                                args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                        else:
                            require ext_code.size(address(stor3[arg1].field_256))
                            call address(stor3[arg1].field_256).0x8da5cb5b with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3[arg1].field_0))
                            call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                            mem[452] = arg3
                            mem[484] = arg4
                            mem[516] = this.address
                            mem[420] = 128
                            mem[548] = mem[288]
                            mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 == 'ETH':
                            require eth.balance(this.address) >= ext_call.return_data[0] + arg4
                        else:
                            require address(stor3[arg2].field_0)
                            require ext_code.size(address(stor3[arg2].field_0))
                            call address(stor3[arg2].field_0).0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= ext_call.return_data[0] + arg4
            else:
                if address(stor3[arg2].field_256) == address(stor3['BNT'].field_0):
                    mem[160] = address(stor3[arg2].field_256)
                    mem[192] = address(stor3[arg2].field_0)
                    if address(code.data[12833 len 32]):
                        if arg2 == 'ETH':
                            require eth.balance(this.address) + arg4 >= eth.balance(this.address)
                            if arg1 == 'ETH':
                                mem[452 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                   value arg3 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                            else:
                                require ext_code.size(address(stor3[arg1].field_256))
                                call address(stor3[arg1].field_256).0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor3[arg1].field_0))
                                call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[452 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == 'ETH':
                                require eth.balance(this.address) >= eth.balance(this.address) + arg4
                            else:
                                require address(stor3[arg2].field_0)
                                require ext_code.size(address(stor3[arg2].field_0))
                                call address(stor3[arg2].field_0).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= eth.balance(this.address) + arg4
                        else:
                            require address(stor3[arg2].field_0)
                            require ext_code.size(address(stor3[arg2].field_0))
                            call address(stor3[arg2].field_0).0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
                            if arg1 == 'ETH':
                                mem[452 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                   value arg3 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                            else:
                                require ext_code.size(address(stor3[arg1].field_256))
                                call address(stor3[arg1].field_256).0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor3[arg1].field_0))
                                call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[452 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == 'ETH':
                                require eth.balance(this.address) >= ext_call.return_data[0] + arg4
                            else:
                                require address(stor3[arg2].field_0)
                                require ext_code.size(address(stor3[arg2].field_0))
                                call address(stor3[arg2].field_0).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= ext_call.return_data[0] + arg4
                    else:
                        mem[288] = 3
                        mem[320 len 96] = code.data[12737 len 96]
                        idx = 0
                        while uint16(idx) < 3:
                            require uint16(idx) < 5
                            require uint16(idx) < mem[288]
                            mem[(32 * uint16(idx)) + 320] = mem[(32 * uint16(idx)) + 140 len 20]
                            idx = idx + 1
                            continue 
                        if arg2 == 'ETH':
                            require eth.balance(this.address) + arg4 >= eth.balance(this.address)
                            if arg1 == 'ETH':
                                mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                                mem[452] = arg3
                                mem[484] = arg4
                                mem[516] = this.address
                                mem[420] = 128
                                mem[548] = mem[288]
                                mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                   value arg3 wei
                                     gas gas_remaining wei
                                    args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                            else:
                                require ext_code.size(address(stor3[arg1].field_256))
                                call address(stor3[arg1].field_256).0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor3[arg1].field_0))
                                call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                                mem[452] = arg3
                                mem[484] = arg4
                                mem[516] = this.address
                                mem[420] = 128
                                mem[548] = mem[288]
                                mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == 'ETH':
                                require eth.balance(this.address) >= eth.balance(this.address) + arg4
                            else:
                                require address(stor3[arg2].field_0)
                                require ext_code.size(address(stor3[arg2].field_0))
                                call address(stor3[arg2].field_0).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= eth.balance(this.address) + arg4
                        else:
                            require address(stor3[arg2].field_0)
                            require ext_code.size(address(stor3[arg2].field_0))
                            call address(stor3[arg2].field_0).0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
                            if arg1 == 'ETH':
                                mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                                mem[452] = arg3
                                mem[484] = arg4
                                mem[516] = this.address
                                mem[420] = 128
                                mem[548] = mem[288]
                                mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                   value arg3 wei
                                     gas gas_remaining wei
                                    args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                            else:
                                require ext_code.size(address(stor3[arg1].field_256))
                                call address(stor3[arg1].field_256).0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor3[arg1].field_0))
                                call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                                mem[452] = arg3
                                mem[484] = arg4
                                mem[516] = this.address
                                mem[420] = 128
                                mem[548] = mem[288]
                                mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == 'ETH':
                                require eth.balance(this.address) >= ext_call.return_data[0] + arg4
                            else:
                                require address(stor3[arg2].field_0)
                                require ext_code.size(address(stor3[arg2].field_0))
                                call address(stor3[arg2].field_0).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= ext_call.return_data[0] + arg4
                else:
                    mem[160] = address(stor3['BNT'].field_0)
                    mem[192] = address(stor3[arg2].field_256)
                    mem[224] = address(stor3[arg2].field_0)
                    if address(stor3[arg2].field_0):
                        if arg2 == 'ETH':
                            require eth.balance(this.address) + arg4 >= eth.balance(this.address)
                            if arg1 == 'ETH':
                                mem[452 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                   value arg3 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                            else:
                                require ext_code.size(address(stor3[arg1].field_256))
                                call address(stor3[arg1].field_256).0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor3[arg1].field_0))
                                call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[452 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == 'ETH':
                                require eth.balance(this.address) >= eth.balance(this.address) + arg4
                            else:
                                require address(stor3[arg2].field_0)
                                require ext_code.size(address(stor3[arg2].field_0))
                                call address(stor3[arg2].field_0).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= eth.balance(this.address) + arg4
                        else:
                            require address(stor3[arg2].field_0)
                            require ext_code.size(address(stor3[arg2].field_0))
                            call address(stor3[arg2].field_0).0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
                            if arg1 == 'ETH':
                                mem[452 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                   value arg3 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                            else:
                                require ext_code.size(address(stor3[arg1].field_256))
                                call address(stor3[arg1].field_256).0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor3[arg1].field_0))
                                call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[452 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == 'ETH':
                                require eth.balance(this.address) >= ext_call.return_data[0] + arg4
                            else:
                                require address(stor3[arg2].field_0)
                                require ext_code.size(address(stor3[arg2].field_0))
                                call address(stor3[arg2].field_0).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= ext_call.return_data[0] + arg4
                    else:
                        mem[288] = 3
                        mem[320 len 96] = code.data[12737 len 96]
                        idx = 0
                        while uint16(idx) < 3:
                            require uint16(idx) < 5
                            require uint16(idx) < mem[288]
                            mem[(32 * uint16(idx)) + 320] = mem[(32 * uint16(idx)) + 140 len 20]
                            idx = idx + 1
                            continue 
                        if arg2 == 'ETH':
                            require eth.balance(this.address) + arg4 >= eth.balance(this.address)
                            if arg1 == 'ETH':
                                mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                                mem[452] = arg3
                                mem[484] = arg4
                                mem[516] = this.address
                                mem[420] = 128
                                mem[548] = mem[288]
                                mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                   value arg3 wei
                                     gas gas_remaining wei
                                    args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                            else:
                                require ext_code.size(address(stor3[arg1].field_256))
                                call address(stor3[arg1].field_256).0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor3[arg1].field_0))
                                call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                                mem[452] = arg3
                                mem[484] = arg4
                                mem[516] = this.address
                                mem[420] = 128
                                mem[548] = mem[288]
                                mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == 'ETH':
                                require eth.balance(this.address) >= eth.balance(this.address) + arg4
                            else:
                                require address(stor3[arg2].field_0)
                                require ext_code.size(address(stor3[arg2].field_0))
                                call address(stor3[arg2].field_0).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= eth.balance(this.address) + arg4
                        else:
                            require address(stor3[arg2].field_0)
                            require ext_code.size(address(stor3[arg2].field_0))
                            call address(stor3[arg2].field_0).0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
                            if arg1 == 'ETH':
                                mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                                mem[452] = arg3
                                mem[484] = arg4
                                mem[516] = this.address
                                mem[420] = 128
                                mem[548] = mem[288]
                                mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                   value arg3 wei
                                     gas gas_remaining wei
                                    args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                            else:
                                require ext_code.size(address(stor3[arg1].field_256))
                                call address(stor3[arg1].field_256).0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor3[arg1].field_0))
                                call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                                mem[452] = arg3
                                mem[484] = arg4
                                mem[516] = this.address
                                mem[420] = 128
                                mem[548] = mem[288]
                                mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == 'ETH':
                                require eth.balance(this.address) >= ext_call.return_data[0] + arg4
                            else:
                                require address(stor3[arg2].field_0)
                                require ext_code.size(address(stor3[arg2].field_0))
                                call address(stor3[arg2].field_0).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= ext_call.return_data[0] + arg4
    else:
        mem[160] = address(stor3[arg1].field_256)
        if address(stor3[arg2].field_0) == address(stor3[arg2].field_256):
            mem[192] = address(stor3[arg2].field_0)
            if address(code.data[12833 len 32]):
                if arg2 == 'ETH':
                    require eth.balance(this.address) + arg4 >= eth.balance(this.address)
                    if arg1 == 'ETH':
                        mem[452 len 0] = None
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                           value arg3 wei
                             gas gas_remaining wei
                            args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                    else:
                        require ext_code.size(address(stor3[arg1].field_256))
                        call address(stor3[arg1].field_256).0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor3[arg1].field_0))
                        call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[452 len 0] = None
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 == 'ETH':
                        require eth.balance(this.address) >= eth.balance(this.address) + arg4
                    else:
                        require address(stor3[arg2].field_0)
                        require ext_code.size(address(stor3[arg2].field_0))
                        call address(stor3[arg2].field_0).0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= eth.balance(this.address) + arg4
                else:
                    require address(stor3[arg2].field_0)
                    require ext_code.size(address(stor3[arg2].field_0))
                    call address(stor3[arg2].field_0).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
                    if arg1 == 'ETH':
                        mem[452 len 0] = None
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                           value arg3 wei
                             gas gas_remaining wei
                            args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                    else:
                        require ext_code.size(address(stor3[arg1].field_256))
                        call address(stor3[arg1].field_256).0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor3[arg1].field_0))
                        call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[452 len 0] = None
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 == 'ETH':
                        require eth.balance(this.address) >= ext_call.return_data[0] + arg4
                    else:
                        require address(stor3[arg2].field_0)
                        require ext_code.size(address(stor3[arg2].field_0))
                        call address(stor3[arg2].field_0).0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= ext_call.return_data[0] + arg4
            else:
                mem[288] = 3
                mem[320 len 96] = code.data[12737 len 96]
                idx = 0
                while uint16(idx) < 3:
                    require uint16(idx) < 5
                    require uint16(idx) < mem[288]
                    mem[(32 * uint16(idx)) + 320] = mem[(32 * uint16(idx)) + 140 len 20]
                    idx = idx + 1
                    continue 
                if arg2 == 'ETH':
                    require eth.balance(this.address) + arg4 >= eth.balance(this.address)
                    if arg1 == 'ETH':
                        mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                        mem[452] = arg3
                        mem[484] = arg4
                        mem[516] = this.address
                        mem[420] = 128
                        mem[548] = mem[288]
                        mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                           value arg3 wei
                             gas gas_remaining wei
                            args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                    else:
                        require ext_code.size(address(stor3[arg1].field_256))
                        call address(stor3[arg1].field_256).0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor3[arg1].field_0))
                        call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                        mem[452] = arg3
                        mem[484] = arg4
                        mem[516] = this.address
                        mem[420] = 128
                        mem[548] = mem[288]
                        mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 == 'ETH':
                        require eth.balance(this.address) >= eth.balance(this.address) + arg4
                    else:
                        require address(stor3[arg2].field_0)
                        require ext_code.size(address(stor3[arg2].field_0))
                        call address(stor3[arg2].field_0).0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= eth.balance(this.address) + arg4
                else:
                    require address(stor3[arg2].field_0)
                    require ext_code.size(address(stor3[arg2].field_0))
                    call address(stor3[arg2].field_0).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
                    if arg1 == 'ETH':
                        mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                        mem[452] = arg3
                        mem[484] = arg4
                        mem[516] = this.address
                        mem[420] = 128
                        mem[548] = mem[288]
                        mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                           value arg3 wei
                             gas gas_remaining wei
                            args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                    else:
                        require ext_code.size(address(stor3[arg1].field_256))
                        call address(stor3[arg1].field_256).0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor3[arg1].field_0))
                        call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                        mem[452] = arg3
                        mem[484] = arg4
                        mem[516] = this.address
                        mem[420] = 128
                        mem[548] = mem[288]
                        mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 == 'ETH':
                        require eth.balance(this.address) >= ext_call.return_data[0] + arg4
                    else:
                        require address(stor3[arg2].field_0)
                        require ext_code.size(address(stor3[arg2].field_0))
                        call address(stor3[arg2].field_0).0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= ext_call.return_data[0] + arg4
        else:
            if address(stor3[arg1].field_256) != address(stor3['BNT'].field_0):
                mem[192] = address(stor3['BNT'].field_0)
                mem[224] = address(stor3[arg2].field_256)
                mem[256] = address(stor3[arg2].field_0)
                if address(stor3[arg2].field_256):
                    if arg2 == 'ETH':
                        require eth.balance(this.address) + arg4 >= eth.balance(this.address)
                        if arg1 == 'ETH':
                            mem[452 len 0] = None
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                               value arg3 wei
                                 gas gas_remaining wei
                                args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                        else:
                            require ext_code.size(address(stor3[arg1].field_256))
                            call address(stor3[arg1].field_256).0x8da5cb5b with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3[arg1].field_0))
                            call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[452 len 0] = None
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 == 'ETH':
                            require eth.balance(this.address) >= eth.balance(this.address) + arg4
                        else:
                            require address(stor3[arg2].field_0)
                            require ext_code.size(address(stor3[arg2].field_0))
                            call address(stor3[arg2].field_0).0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= eth.balance(this.address) + arg4
                    else:
                        require address(stor3[arg2].field_0)
                        require ext_code.size(address(stor3[arg2].field_0))
                        call address(stor3[arg2].field_0).0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
                        if arg1 == 'ETH':
                            mem[452 len 0] = None
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                               value arg3 wei
                                 gas gas_remaining wei
                                args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                        else:
                            require ext_code.size(address(stor3[arg1].field_256))
                            call address(stor3[arg1].field_256).0x8da5cb5b with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3[arg1].field_0))
                            call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[452 len 0] = None
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 == 'ETH':
                            require eth.balance(this.address) >= ext_call.return_data[0] + arg4
                        else:
                            require address(stor3[arg2].field_0)
                            require ext_code.size(address(stor3[arg2].field_0))
                            call address(stor3[arg2].field_0).0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= ext_call.return_data[0] + arg4
                else:
                    mem[288] = 3
                    mem[320 len 96] = code.data[12737 len 96]
                    idx = 0
                    while uint16(idx) < 3:
                        require uint16(idx) < 5
                        require uint16(idx) < mem[288]
                        mem[(32 * uint16(idx)) + 320] = mem[(32 * uint16(idx)) + 140 len 20]
                        idx = idx + 1
                        continue 
                    if arg2 == 'ETH':
                        require eth.balance(this.address) + arg4 >= eth.balance(this.address)
                        if arg1 == 'ETH':
                            mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                            mem[452] = arg3
                            mem[484] = arg4
                            mem[516] = this.address
                            mem[420] = 128
                            mem[548] = mem[288]
                            mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                               value arg3 wei
                                 gas gas_remaining wei
                                args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                        else:
                            require ext_code.size(address(stor3[arg1].field_256))
                            call address(stor3[arg1].field_256).0x8da5cb5b with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3[arg1].field_0))
                            call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                            mem[452] = arg3
                            mem[484] = arg4
                            mem[516] = this.address
                            mem[420] = 128
                            mem[548] = mem[288]
                            mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 == 'ETH':
                            require eth.balance(this.address) >= eth.balance(this.address) + arg4
                        else:
                            require address(stor3[arg2].field_0)
                            require ext_code.size(address(stor3[arg2].field_0))
                            call address(stor3[arg2].field_0).0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= eth.balance(this.address) + arg4
                    else:
                        require address(stor3[arg2].field_0)
                        require ext_code.size(address(stor3[arg2].field_0))
                        call address(stor3[arg2].field_0).0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
                        if arg1 == 'ETH':
                            mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                            mem[452] = arg3
                            mem[484] = arg4
                            mem[516] = this.address
                            mem[420] = 128
                            mem[548] = mem[288]
                            mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                               value arg3 wei
                                 gas gas_remaining wei
                                args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                        else:
                            require ext_code.size(address(stor3[arg1].field_256))
                            call address(stor3[arg1].field_256).0x8da5cb5b with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor3[arg1].field_0))
                            call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                            mem[452] = arg3
                            mem[484] = arg4
                            mem[516] = this.address
                            mem[420] = 128
                            mem[548] = mem[288]
                            mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 == 'ETH':
                            require eth.balance(this.address) >= ext_call.return_data[0] + arg4
                        else:
                            require address(stor3[arg2].field_0)
                            require ext_code.size(address(stor3[arg2].field_0))
                            call address(stor3[arg2].field_0).0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= ext_call.return_data[0] + arg4
            else:
                if address(stor3[arg2].field_256) == address(stor3['BNT'].field_0):
                    mem[192] = address(stor3[arg2].field_256)
                    mem[224] = address(stor3[arg2].field_0)
                    if address(stor3[arg2].field_0):
                        if arg2 == 'ETH':
                            require eth.balance(this.address) + arg4 >= eth.balance(this.address)
                            if arg1 == 'ETH':
                                mem[452 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                   value arg3 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                            else:
                                require ext_code.size(address(stor3[arg1].field_256))
                                call address(stor3[arg1].field_256).0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor3[arg1].field_0))
                                call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[452 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == 'ETH':
                                require eth.balance(this.address) >= eth.balance(this.address) + arg4
                            else:
                                require address(stor3[arg2].field_0)
                                require ext_code.size(address(stor3[arg2].field_0))
                                call address(stor3[arg2].field_0).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= eth.balance(this.address) + arg4
                        else:
                            require address(stor3[arg2].field_0)
                            require ext_code.size(address(stor3[arg2].field_0))
                            call address(stor3[arg2].field_0).0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
                            if arg1 == 'ETH':
                                mem[452 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                   value arg3 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                            else:
                                require ext_code.size(address(stor3[arg1].field_256))
                                call address(stor3[arg1].field_256).0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor3[arg1].field_0))
                                call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[452 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == 'ETH':
                                require eth.balance(this.address) >= ext_call.return_data[0] + arg4
                            else:
                                require address(stor3[arg2].field_0)
                                require ext_code.size(address(stor3[arg2].field_0))
                                call address(stor3[arg2].field_0).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= ext_call.return_data[0] + arg4
                    else:
                        mem[288] = 3
                        mem[320 len 96] = code.data[12737 len 96]
                        idx = 0
                        while uint16(idx) < 3:
                            require uint16(idx) < 5
                            require uint16(idx) < mem[288]
                            mem[(32 * uint16(idx)) + 320] = mem[(32 * uint16(idx)) + 140 len 20]
                            idx = idx + 1
                            continue 
                        if arg2 == 'ETH':
                            require eth.balance(this.address) + arg4 >= eth.balance(this.address)
                            if arg1 == 'ETH':
                                mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                                mem[452] = arg3
                                mem[484] = arg4
                                mem[516] = this.address
                                mem[420] = 128
                                mem[548] = mem[288]
                                mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                   value arg3 wei
                                     gas gas_remaining wei
                                    args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                            else:
                                require ext_code.size(address(stor3[arg1].field_256))
                                call address(stor3[arg1].field_256).0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor3[arg1].field_0))
                                call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                                mem[452] = arg3
                                mem[484] = arg4
                                mem[516] = this.address
                                mem[420] = 128
                                mem[548] = mem[288]
                                mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == 'ETH':
                                require eth.balance(this.address) >= eth.balance(this.address) + arg4
                            else:
                                require address(stor3[arg2].field_0)
                                require ext_code.size(address(stor3[arg2].field_0))
                                call address(stor3[arg2].field_0).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= eth.balance(this.address) + arg4
                        else:
                            require address(stor3[arg2].field_0)
                            require ext_code.size(address(stor3[arg2].field_0))
                            call address(stor3[arg2].field_0).0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
                            if arg1 == 'ETH':
                                mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                                mem[452] = arg3
                                mem[484] = arg4
                                mem[516] = this.address
                                mem[420] = 128
                                mem[548] = mem[288]
                                mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                   value arg3 wei
                                     gas gas_remaining wei
                                    args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                            else:
                                require ext_code.size(address(stor3[arg1].field_256))
                                call address(stor3[arg1].field_256).0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor3[arg1].field_0))
                                call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                                mem[452] = arg3
                                mem[484] = arg4
                                mem[516] = this.address
                                mem[420] = 128
                                mem[548] = mem[288]
                                mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == 'ETH':
                                require eth.balance(this.address) >= ext_call.return_data[0] + arg4
                            else:
                                require address(stor3[arg2].field_0)
                                require ext_code.size(address(stor3[arg2].field_0))
                                call address(stor3[arg2].field_0).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= ext_call.return_data[0] + arg4
                else:
                    mem[192] = address(stor3['BNT'].field_0)
                    mem[224] = address(stor3[arg2].field_256)
                    mem[256] = address(stor3[arg2].field_0)
                    if address(stor3[arg2].field_256):
                        if arg2 == 'ETH':
                            require eth.balance(this.address) + arg4 >= eth.balance(this.address)
                            if arg1 == 'ETH':
                                mem[452 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                   value arg3 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                            else:
                                require ext_code.size(address(stor3[arg1].field_256))
                                call address(stor3[arg1].field_256).0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor3[arg1].field_0))
                                call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[452 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == 'ETH':
                                require eth.balance(this.address) >= eth.balance(this.address) + arg4
                            else:
                                require address(stor3[arg2].field_0)
                                require ext_code.size(address(stor3[arg2].field_0))
                                call address(stor3[arg2].field_0).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= eth.balance(this.address) + arg4
                        else:
                            require address(stor3[arg2].field_0)
                            require ext_code.size(address(stor3[arg2].field_0))
                            call address(stor3[arg2].field_0).0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
                            if arg1 == 'ETH':
                                mem[452 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                   value arg3 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                            else:
                                require ext_code.size(address(stor3[arg1].field_256))
                                call address(stor3[arg1].field_256).0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor3[arg1].field_0))
                                call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[452 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[452 len 160]), arg3, arg4, address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == 'ETH':
                                require eth.balance(this.address) >= ext_call.return_data[0] + arg4
                            else:
                                require address(stor3[arg2].field_0)
                                require ext_code.size(address(stor3[arg2].field_0))
                                call address(stor3[arg2].field_0).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= ext_call.return_data[0] + arg4
                    else:
                        mem[288] = 3
                        mem[320 len 96] = code.data[12737 len 96]
                        idx = 0
                        while uint16(idx) < 3:
                            require uint16(idx) < 5
                            require uint16(idx) < mem[288]
                            mem[(32 * uint16(idx)) + 320] = mem[(32 * uint16(idx)) + 140 len 20]
                            idx = idx + 1
                            continue 
                        if arg2 == 'ETH':
                            require eth.balance(this.address) + arg4 >= eth.balance(this.address)
                            if arg1 == 'ETH':
                                mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                                mem[452] = arg3
                                mem[484] = arg4
                                mem[516] = this.address
                                mem[420] = 128
                                mem[548] = mem[288]
                                mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                   value arg3 wei
                                     gas gas_remaining wei
                                    args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                            else:
                                require ext_code.size(address(stor3[arg1].field_256))
                                call address(stor3[arg1].field_256).0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor3[arg1].field_0))
                                call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                                mem[452] = arg3
                                mem[484] = arg4
                                mem[516] = this.address
                                mem[420] = 128
                                mem[548] = mem[288]
                                mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == 'ETH':
                                require eth.balance(this.address) >= eth.balance(this.address) + arg4
                            else:
                                require address(stor3[arg2].field_0)
                                require ext_code.size(address(stor3[arg2].field_0))
                                call address(stor3[arg2].field_0).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= eth.balance(this.address) + arg4
                        else:
                            require address(stor3[arg2].field_0)
                            require ext_code.size(address(stor3[arg2].field_0))
                            call address(stor3[arg2].field_0).0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
                            if arg1 == 'ETH':
                                mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                                mem[452] = arg3
                                mem[484] = arg4
                                mem[516] = this.address
                                mem[420] = 128
                                mem[548] = mem[288]
                                mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                   value arg3 wei
                                     gas gas_remaining wei
                                    args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                            else:
                                require ext_code.size(address(stor3[arg1].field_256))
                                call address(stor3[arg1].field_256).0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor3[arg1].field_0))
                                call address(stor3[arg1].field_0).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[416] = 0xc98fefed00000000000000000000000000000000000000000000000000000000
                                mem[452] = arg3
                                mem[484] = arg4
                                mem[516] = this.address
                                mem[420] = 128
                                mem[548] = mem[288]
                                mem[580 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args 128, arg3, arg4, address(this.address), mem[548 len (32 * mem[288]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 == 'ETH':
                                require eth.balance(this.address) >= ext_call.return_data[0] + arg4
                            else:
                                require address(stor3[arg2].field_0)
                                require ext_code.size(address(stor3[arg2].field_0))
                                call address(stor3[arg2].field_0).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= ext_call.return_data[0] + arg4
    stor1 = 1
}



}
