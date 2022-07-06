contract main {




// =====================  Runtime code  =====================


#
#  - buyWithEth()
#
const sub_1dd2006c(?) = 18

const sub_ae995b0a(?) = 5

const sub_b9f1bb8d(?) = 1


address sub_c0cac845Address;
array of uint256 stor1;
uint8 stage; offset 160
address registryAddress;
uint256 stor2;
address issuerAddress;
address custodianAddress;
uint256 stor5;
uint256 stor7;
uint256 sub_a51483f3;
mapping of uint256 sub_a705f893;
uint256 sub_1c00930b;
mapping of uint256 sub_1c031dd8;
mapping of uint256 unclaimedPayoutTotals;
uint8 paused;
uint8 tokenInitialized; offset 8
uint8 sub_394d8f49; offset 16
uint8 sub_ed4ae0e9; offset 24
uint256 stor13; offset 24
uint256 stor13; offset 16
uint256 sub_d8a3819b;
uint256 sub_e531e946;
uint256 sub_2d0ab86d;
uint256 sub_848f4925;
uint256 sub_d17ce7a9;
uint256 sub_4449fe70;
uint256 sub_2cbaef16;

function sub_1c00930b(?) {
    return sub_1c00930b
}

function sub_1c031dd8(?) {
    return sub_1c031dd8[arg1]
}

function issuer() {
    return issuerAddress
}

function sub_2cbaef16(?) {
    return sub_2cbaef16
}

function sub_2d0ab86d(?) {
    return sub_2d0ab86d
}

function custodian() {
    return custodianAddress
}

function sub_394d8f49(?) {
    return bool(sub_394d8f49)
}

function sub_4449fe70(?) {
    return sub_4449fe70
}

function tokenInitialized() {
    return bool(tokenInitialized)
}

function paused() {
    return bool(paused)
}

function registry() {
    return registryAddress
}

function sub_848f4925(?) {
    return sub_848f4925
}

function sub_a51483f3(?) {
    return sub_a51483f3
}

function sub_a705f893(?) {
    return sub_a705f893[arg1]
}

function stage() {
    require stage <= 8
    return stage
}

function sub_c0cac845(?) {
    return sub_c0cac845Address
}

function sub_c0ee907c(?) {
    return address(stor1.length)
}

function unclaimedPayoutTotals(address arg1) {
    return unclaimedPayoutTotals[arg1]
}

function sub_d17ce7a9(?) {
    return sub_d17ce7a9
}

function sub_d8a3819b(?) {
    return sub_d8a3819b
}

function sub_e531e946(?) {
    return sub_e531e946
}

function sub_ed4ae0e9(?) {
    return bool(sub_ed4ae0e9)
}

function _fallback() payable {
    revert
}

function calculateFee(uint256 arg1) {
    require 5 * arg1 / 5 == arg1
    return (5 * arg1 / 1000)
}

function sub_546c492b(?) {
    require msg.sender == issuerAddress
    require stage <= 8
    require not stage
    require arg1 > block.timestamp
    require arg1 != sub_d8a3819b
    sub_d8a3819b = arg1
}

function sub_f3b59b9c(?) {
    require msg.sender == issuerAddress
    require stage <= 8
    require not stage
    require arg1 >= 168 * 24 * 3600
    require arg1 != sub_848f4925
    sub_848f4925 = arg1
}

function sub_71438155(?) {
    require msg.sender == issuerAddress
    require stage <= 8
    require not stage
    require arg1 < stor7
    require arg1 != sub_4449fe70
    require arg1 > 0
    sub_4449fe70 = arg1
}

function sub_bdcb528b(?) {
    require msg.sender == issuerAddress
    require stage <= 8
    require not stage
    if arg1 < 24 * 3600:
        require not arg1
        require sub_e531e946
    require arg1 != sub_2d0ab86d
    sub_2d0ab86d = arg1
}

function sub_f798d73a(?) {
    require msg.sender == issuerAddress
    require stage <= 8
    require not stage
    if arg1 < 72 * 24 * 3600:
        require not arg1
        require sub_2d0ab86d
    require arg1 != sub_e531e946
    sub_e531e946 = arg1
}

function isWhitelisted(address arg1) {
    mem[201 len 0] = None
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[201 len 9])
    require ext_call.success
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('whitelisted(address)')) >> 224
            gas gas_remaining wei
           args arg1
    return bool(ext_call.return_data[0])
}

function sub_f4913534(?) {
    require msg.sender == custodianAddress
    require stage <= 8
    require stage <= 2
    stage = 5
    mem[201 len 0] = None
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[201 len 9])
    require ext_call.success
    mem[305 len 64] = 576014340, 0, 5, mem[305 len 28]
    mem[337] = mem[365 len 4]
    call address(ext_call.return_data[0]).mem[305 len 4] with:
         gas gas_remaining wei
        args mem[309 len 60]
    return 1
}

function sub_3adf4f71(?) {
    require stage <= 8
    require stage == 1
    require sub_e531e946 > 0
    require sub_d8a3819b <= block.timestamp
    require block.timestamp < sub_d8a3819b + sub_e531e946
    stage = 2
    mem[201 len 0] = None
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[201 len 9])
    require ext_call.success
    mem[305 len 64] = 576014340, 0, 2, mem[305 len 28]
    mem[337] = mem[365 len 4]
    call address(ext_call.return_data[0]).mem[305 len 4] with:
         gas gas_remaining wei
        args mem[309 len 60]
    return 1
}

function sub_514da8f4(?) {
    require stage <= 8
    if stage == 1:
        require sub_2d0ab86d > 0
        require sub_d8a3819b + sub_e531e946 <= block.timestamp
        require block.timestamp < sub_d8a3819b + sub_e531e946 + sub_2d0ab86d
        stage = 3
        mem[201 len 0] = None
    else:
        require stage <= 8
        require stage == 2
        require sub_2d0ab86d > 0
        require sub_d8a3819b + sub_e531e946 <= block.timestamp
        require block.timestamp < sub_d8a3819b + sub_e531e946 + sub_2d0ab86d
        stage = 3
        mem[201 len 0] = None
        mem[201 len 23] = mem[201 len 14], Mask(72, 0, 'PoaLogger')
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[201 len 9])
    require ext_call.success
    mem[305 len 64] = 576014340, 0, 3, mem[305 len 28]
    mem[337] = mem[365 len 4]
    call address(ext_call.return_data[0]).mem[305 len 4] with:
         gas gas_remaining wei
        args mem[309 len 60]
    return 1
}

function getContractAddress(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 'getContractAddress32(bytes32)'
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 192 len arg1.length % 32] = mem[ceil32(arg1.length) + -(arg1.length % 32) + floor32(arg1.length) + 192 len arg1.length % 32]
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32])
    require ext_call.success
    return address(ext_call.return_data[0])
}

function fiatCurrency() {
    mem[96] = 32
    mem[64] = 160
    mem[128 len 1024] = code.data[14565 len 1024]
    mem[128] = sub_d17ce7a9
    idx = 0
    while idx < 32:
        require idx < 32
        if Mask(8, 248, mem[idx + 128]):
            idx = idx + 1
            continue 
        mem[96] = idx
        mem[160] = 32
        mem[192] = idx
        s = 0
        while s < idx:
            mem[s + 224] = mem[s + 128]
            s = s + 32
            continue 
        if not idx % 32:
            return memory
              from mem[64]
               len idx + -mem[64] + 224
        mem[floor32(idx) + 224] = mem[floor32(idx) + -(idx % 32) + 256 len idx % 32]
        return memory
          from mem[64]
           len floor32(idx) + -mem[64] + 256
    mem[96] = idx
    mem[160] = 32
    mem[192] = idx
    s = 0
    while s < idx:
        mem[s + 224] = mem[s + 128]
        s = s + 32
        continue 
    if not idx % 32:
        return memory
          from mem[64]
           len idx + -mem[64] + 224
    mem[floor32(idx) + 224] = mem[floor32(idx) + -(idx % 32) + 256 len idx % 32]
    return memory
      from mem[64]
       len floor32(idx) + -mem[64] + 256
}

function sub_7e350f19(?) {
    mem[96] = stor5
    idx = 96
    s = 5
    while 160 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    mem[160] = 64
    mem[64] = 256
    mem[192 len 2048] = code.data[14565 len 2048]
    mem[192] = stor5
    mem[224] = mem[128]
    idx = 0
    while idx < 64:
        require idx < 64
        if Mask(8, 248, mem[idx + 192]):
            idx = idx + 1
            continue 
        mem[160] = idx
        mem[256] = 32
        mem[288] = idx
        s = 0
        while s < idx:
            mem[s + 320] = mem[s + 192]
            s = s + 32
            continue 
        if not idx % 32:
            return memory
              from 256
               len idx + 64
        mem[floor32(idx) + 320] = mem[floor32(idx) + -(idx % 32) + 352 len idx % 32]
        return memory
          from 256
           len floor32(idx) + 96
    mem[160] = idx
    mem[256] = 32
    mem[288] = idx
    s = 0
    while s < idx:
        mem[s + 320] = mem[s + 192]
        s = s + 32
        continue 
    if not idx % 32:
        return memory
          from 256
           len idx + 64
    mem[floor32(idx) + 320] = mem[floor32(idx) + -(idx % 32) + 352 len idx % 32]
    return memory
      from 256
       len floor32(idx) + 96
}

function sub_8d4f54e5(?) {
    s = 10000000000 * 10^18
    idx = 9
    t = 10000000000 * 10^18
    while idx:
        if not t:
            if not bool(idx):
                s = s
                idx = idx / 2
                t = 0
                continue 
            s = 0
            idx = idx / 2
            t = 0
            continue 
        require t
        require t * t / t == t
        require (t * t) + 500000000 * 10^18 >= t * t
        if not bool(idx):
            s = s
            idx = idx / 2
            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
            continue 
        if not (t * t) + 500000000 * 10^18 / 1000000000 * 10^18:
            s = 0
            idx = idx / 2
            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
            continue 
        require (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
        require s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 / (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 == s
        require (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 >= s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
        s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
        idx = idx / 2
        t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
        continue 
    if not arg1:
        if sub_4449fe70:
            if (0 / sub_4449fe70) + 5 >= 0 / sub_4449fe70:
                if not stor7:
                    return 0
                if stor7:
                    if stor7 * (0 / sub_4449fe70) + 5 / 10000000000 * 10^18 / stor7 == (0 / sub_4449fe70) + 5 / 10000000000 * 10^18:
                        return (stor7 * (0 / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18)
    else:
        if arg1:
            if arg1 * s / arg1 == s:
                if sub_4449fe70:
                    if (arg1 * s / sub_4449fe70) + 5 >= arg1 * s / sub_4449fe70:
                        if not stor7:
                            return 0
                        if stor7:
                            if stor7 * (arg1 * s / sub_4449fe70) + 5 / 10000000000 * 10^18 / stor7 == (arg1 * s / sub_4449fe70) + 5 / 10000000000 * 10^18:
                                return (stor7 * (arg1 * s / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18)
    revert
}

function sub_f92a51e5(?) {
    mem[96] = 13
    mem[128] = 'ExchangeRates'
    mem[192 len 0] = None
    mem[160] = 13
    mem[205 len 0] = None
    mem[205 len 19] = mem[205 len 6], Mask(104, 0, 'ExchangeRates')
    _79 = sha3(mem[205 len 13])
    mem[209] = sha3(mem[205 len 13])
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args _79
    mem[205] = ext_call.return_data[0]
    require ext_call.success
    mem[241] = 32
    mem[64] = 305
    mem[273 len 1024] = code.data[14565 len 1024]
    mem[273] = sub_d17ce7a9
    idx = 0
    while idx < 32:
        require idx < 32
        if Mask(8, 248, mem[idx + 273]):
            idx = idx + 1
            continue 
        t = 273
        u = 337
        s = idx
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[floor32(idx) + 337] = mem[-(idx % 32) + floor32(idx) + 305 len idx % 32] or Mask(8 * -(idx % 32) + 32, -(8 * -(idx % 32) + 32) + 256, mem[floor32(idx) + 337])
        t = 337
        u = idx + 337
        s = idx
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[idx + floor32(idx) + 337] = mem[-(idx % 32) + floor32(idx) + 369 len idx % 32] or Mask(8 * -(idx % 32) + 32, -(8 * -(idx % 32) + 32) + 256, mem[idx + floor32(idx) + 337])
        staticcall ext_call.return_data[0] with:
             funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
                gas gas_remaining wei
               args sha3(mem[idx + 337 len idx])
        require ext_call.success
        return ext_call.return_data[0]
    mem[337 len floor32(idx)] = mem[273 len floor32(idx)]
    mem[floor32(idx) + -(idx % 32) + 369 len idx % 32] = mem[-(idx % 32) + floor32(idx) + 305 len idx % 32]
    mem[idx + 337 len floor32(idx)] = mem[337 len floor32(idx)]
    mem[(2 * floor32(idx)) + 369 len idx % 32] = mem[-(idx % 32) + floor32(idx) + 369 len idx % 32]
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[idx + 337 len idx])
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_96ce386c(?) {
    require stage <= 8
    require stage <= 4
    require sub_d8a3819b + sub_e531e946 >= sub_d8a3819b
    require sub_2d0ab86d >= 0
    require sub_848f4925 >= 0
    require stage <= 8
    if stage > 3:
        require stage <= 8
        if stage == 4:
            if block.timestamp >= sub_d8a3819b + sub_e531e946 + sub_2d0ab86d + sub_848f4925:
                stage = 6
                mem[201 len 0] = None
                mem[201 len 23] = mem[201 len 14], Mask(72, 0, 'PoaLogger')
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[201 len 9])
                require ext_call.success
                mem[305 len 64] = 576014340, 0, 6, mem[305 len 28]
                mem[337] = mem[365 len 4]
                call address(ext_call.return_data[0]).mem[305 len 4] with:
                     gas gas_remaining wei
                    args mem[309 len 60]
    else:
        if block.timestamp >= sub_d8a3819b + sub_e531e946 + sub_2d0ab86d:
            stage = 6
            mem[201 len 0] = None
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[201 len 9])
            require ext_call.success
            mem[305 len 64] = 576014340, 0, 6, mem[305 len 28]
            mem[337] = mem[365 len 4]
            call address(ext_call.return_data[0]).mem[305 len 4] with:
                 gas gas_remaining wei
                args mem[309 len 60]
        else:
            require stage <= 8
            if stage == 4:
                if block.timestamp >= sub_d8a3819b + sub_e531e946 + sub_2d0ab86d + sub_848f4925:
                    stage = 6
                    mem[201 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[201 len 9])
                    require ext_call.success
                    mem[305 len 64] = 576014340, 0, 6, mem[305 len 28]
                    mem[337] = mem[365 len 4]
                    call address(ext_call.return_data[0]).mem[305 len 4] with:
                         gas gas_remaining wei
                        args mem[309 len 60]
    require stage <= 8
    require stage == 6
    return 1
}

function sub_9621f575(?) {
    require msg.sender == issuerAddress
    require stage <= 8
    require not stage
    require arg1
    require arg1 != sub_d17ce7a9
    sub_d17ce7a9 = arg1
    mem[96] = 13
    mem[128] = 'ExchangeRates'
    mem[192 len 0] = None
    mem[160] = 13
    mem[205 len 0] = None
    _75 = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    mem[209] = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args _75
    mem[205] = ext_call.return_data[0]
    require ext_call.success
    mem[241] = 32
    mem[64] = 305
    mem[273 len 1024] = code.data[14565 len 1024]
    mem[273] = sub_d17ce7a9
    idx = 0
    while idx < 32:
        require idx < 32
        if Mask(8, 248, mem[idx + 273]):
            idx = idx + 1
            continue 
        t = 273
        u = 337
        s = idx
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[floor32(idx) + 337] = mem[-(idx % 32) + floor32(idx) + 305 len idx % 32] or Mask(8 * -(idx % 32) + 32, -(8 * -(idx % 32) + 32) + 256, mem[floor32(idx) + 337])
        mem[305] = idx
        t = 337
        u = idx + 337
        s = mem[305]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[idx + floor32(mem[305]) + 337] = mem[-(mem[305] % 32) + floor32(mem[305]) + 369 len mem[305] % 32] or Mask(8 * -(mem[305] % 32) + 32, -(8 * -(mem[305] % 32) + 32) + 256, mem[idx + floor32(mem[305]) + 337])
        staticcall ext_call.return_data[0] with:
             funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
                gas gas_remaining wei
               args sha3(mem[idx + 337 len mem[305]])
        require ext_call.success
        require ext_call.return_data[0] > 0
    mem[337 len floor32(idx)] = mem[273 len floor32(idx)]
    mem[floor32(idx) + -(idx % 32) + 369 len idx % 32] = mem[-(idx % 32) + floor32(idx) + 305 len idx % 32]
    mem[idx + 337 len floor32(idx)] = mem[337 len floor32(idx)]
    mem[(2 * floor32(idx)) + 369 len idx % 32] = mem[-(idx % 32) + floor32(idx) + 369 len idx % 32]
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[idx + 337 len idx])
    require ext_call.success
    require ext_call.return_data[0] > 0
}

function sub_4d7a5964(?) {
    mem[96] = 13
    mem[128] = 'ExchangeRates'
    mem[192 len 0] = None
    mem[160] = 13
    mem[205 len 0] = None
    _83 = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    mem[209] = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args _83
    mem[205] = ext_call.return_data[0]
    require ext_call.success
    mem[241] = 32
    mem[64] = 305
    mem[273 len 1024] = code.data[14565 len 1024]
    mem[273] = sub_d17ce7a9
    idx = 0
    while idx < 32:
        require idx < 32
        if Mask(8, 248, mem[idx + 273]):
            idx = idx + 1
            continue 
        t = 273
        u = 337
        s = idx
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[floor32(idx) + 337] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32] or Mask(8 * -(idx % 32) + 32, -(8 * -(idx % 32) + 32) + 256, mem[floor32(idx) + 337])
        mem[305] = idx
        t = 337
        u = idx + 337
        s = mem[305]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[idx + floor32(mem[305]) + 337] = mem[-(mem[305] % 32) + floor32(mem[305]) + 369 len mem[305] % 32] or Mask(8 * -(mem[305] % 32) + 32, -(8 * -(mem[305] % 32) + 32) + 256, mem[idx + floor32(mem[305]) + 337])
        staticcall ext_call.return_data[0] with:
             funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
                gas gas_remaining wei
               args sha3(mem[idx + 337 len idx])
        require ext_call.success
        if not arg1:
            return 0
        if arg1:
            if arg1 * ext_call.return_data[0] / arg1 == ext_call.return_data[0]:
                return (arg1 * ext_call.return_data[0] / 10^18)
        revert
    mem[337 len floor32(idx)] = mem[273 len floor32(idx)]
    mem[floor32(idx) + -(idx % 32) + 369 len idx % 32] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32]
    mem[idx + 337 len floor32(idx)] = mem[337 len floor32(idx)]
    mem[(2 * floor32(idx)) + 369 len idx % 32] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32]
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[idx + 337 len idx])
    require ext_call.success
    if not arg1:
        return 0
    if arg1:
        if arg1 * ext_call.return_data[0] / arg1 == ext_call.return_data[0]:
            return (arg1 * ext_call.return_data[0] / 10^18)
    revert
}

function sub_ee562a74(?) {
    mem[96] = 13
    mem[128] = 'ExchangeRates'
    mem[192 len 0] = None
    mem[160] = 13
    mem[205 len 0] = None
    _83 = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    mem[209] = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args _83
    mem[205] = ext_call.return_data[0]
    require ext_call.success
    mem[241] = 32
    mem[64] = 305
    mem[273 len 1024] = code.data[14565 len 1024]
    mem[273] = sub_d17ce7a9
    idx = 0
    while idx < 32:
        require idx < 32
        if Mask(8, 248, mem[idx + 273]):
            idx = idx + 1
            continue 
        t = 273
        u = 337
        s = idx
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[floor32(idx) + 337] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32] or Mask(8 * -(idx % 32) + 32, -(8 * -(idx % 32) + 32) + 256, mem[floor32(idx) + 337])
        mem[305] = idx
        t = 337
        u = idx + 337
        s = mem[305]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[idx + floor32(mem[305]) + 337] = mem[-(mem[305] % 32) + floor32(mem[305]) + 369 len mem[305] % 32] or Mask(8 * -(mem[305] % 32) + 32, -(8 * -(mem[305] % 32) + 32) + 256, mem[idx + floor32(mem[305]) + 337])
        staticcall ext_call.return_data[0] with:
             funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
                gas gas_remaining wei
               args sha3(mem[idx + 337 len idx])
        require ext_call.success
        if not sub_1c00930b:
            return 0
        if sub_1c00930b:
            if sub_1c00930b * ext_call.return_data[0] / sub_1c00930b == ext_call.return_data[0]:
                return (sub_1c00930b * ext_call.return_data[0] / 10^18)
        revert
    mem[337 len floor32(idx)] = mem[273 len floor32(idx)]
    mem[floor32(idx) + -(idx % 32) + 369 len idx % 32] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32]
    mem[idx + 337 len floor32(idx)] = mem[337 len floor32(idx)]
    mem[(2 * floor32(idx)) + 369 len idx % 32] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32]
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[idx + 337 len idx])
    require ext_call.success
    if not sub_1c00930b:
        return 0
    if sub_1c00930b:
        if sub_1c00930b * ext_call.return_data[0] / sub_1c00930b == ext_call.return_data[0]:
            return (sub_1c00930b * ext_call.return_data[0] / 10^18)
    revert
}

function sub_39d2b66d(?) {
    mem[96] = 13
    mem[128] = 'ExchangeRates'
    mem[192 len 0] = None
    mem[160] = 13
    mem[205 len 0] = None
    _83 = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    mem[209] = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args _83
    mem[205] = ext_call.return_data[0]
    require ext_call.success
    mem[241] = 32
    mem[64] = 305
    mem[273 len 1024] = code.data[14565 len 1024]
    mem[273] = sub_d17ce7a9
    idx = 0
    while idx < 32:
        require idx < 32
        if Mask(8, 248, mem[idx + 273]):
            idx = idx + 1
            continue 
        t = 273
        u = 337
        s = idx
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[floor32(idx) + 337] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32] or Mask(8 * -(idx % 32) + 32, -(8 * -(idx % 32) + 32) + 256, mem[floor32(idx) + 337])
        mem[305] = idx
        t = 337
        u = idx + 337
        s = mem[305]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[idx + floor32(mem[305]) + 337] = mem[-(mem[305] % 32) + floor32(mem[305]) + 369 len mem[305] % 32] or Mask(8 * -(mem[305] % 32) + 32, -(8 * -(mem[305] % 32) + 32) + 256, mem[idx + floor32(mem[305]) + 337])
        staticcall ext_call.return_data[0] with:
             funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
                gas gas_remaining wei
               args sha3(mem[idx + 337 len idx])
        require ext_call.success
        if not arg1:
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0])
        else:
            if arg1:
                if 10^18 * arg1 / arg1 == 10^18:
                    if ext_call.return_data[0]:
                        return (10^18 * arg1 / ext_call.return_data[0])
        revert
    mem[337 len floor32(idx)] = mem[273 len floor32(idx)]
    mem[floor32(idx) + -(idx % 32) + 369 len idx % 32] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32]
    mem[idx + 337 len floor32(idx)] = mem[337 len floor32(idx)]
    mem[(2 * floor32(idx)) + 369 len idx % 32] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32]
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[idx + 337 len idx])
    require ext_call.success
    if not arg1:
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if arg1:
            if 10^18 * arg1 / arg1 == 10^18:
                if ext_call.return_data[0]:
                    return (10^18 * arg1 / ext_call.return_data[0])
    revert
}

function sub_9ad1fcbb(?) {
    mem[96] = 13
    mem[128] = 'ExchangeRates'
    mem[192 len 0] = None
    mem[160] = 13
    mem[205 len 0] = None
    _83 = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    mem[209] = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args _83
    mem[205] = ext_call.return_data[0]
    require ext_call.success
    mem[241] = 32
    mem[64] = 305
    mem[273 len 1024] = code.data[14565 len 1024]
    mem[273] = sub_d17ce7a9
    idx = 0
    while idx < 32:
        require idx < 32
        if Mask(8, 248, mem[idx + 273]):
            idx = idx + 1
            continue 
        t = 273
        u = 337
        s = idx
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[floor32(idx) + 337] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32] or Mask(8 * -(idx % 32) + 32, -(8 * -(idx % 32) + 32) + 256, mem[floor32(idx) + 337])
        mem[305] = idx
        t = 337
        u = idx + 337
        s = mem[305]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[idx + floor32(mem[305]) + 337] = mem[-(mem[305] % 32) + floor32(mem[305]) + 369 len mem[305] % 32] or Mask(8 * -(mem[305] % 32) + 32, -(8 * -(mem[305] % 32) + 32) + 256, mem[idx + floor32(mem[305]) + 337])
        staticcall ext_call.return_data[0] with:
             funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
                gas gas_remaining wei
               args sha3(mem[idx + 337 len idx])
        require ext_call.success
        if not sub_4449fe70:
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0])
        else:
            if sub_4449fe70:
                if 10^18 * sub_4449fe70 / sub_4449fe70 == 10^18:
                    if ext_call.return_data[0]:
                        return (10^18 * sub_4449fe70 / ext_call.return_data[0])
        revert
    mem[337 len floor32(idx)] = mem[273 len floor32(idx)]
    mem[floor32(idx) + -(idx % 32) + 369 len idx % 32] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32]
    mem[idx + 337 len floor32(idx)] = mem[337 len floor32(idx)]
    mem[(2 * floor32(idx)) + 369 len idx % 32] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32]
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[idx + 337 len idx])
    require ext_call.success
    if not sub_4449fe70:
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if sub_4449fe70:
            if 10^18 * sub_4449fe70 / sub_4449fe70 == 10^18:
                if ext_call.return_data[0]:
                    return (10^18 * sub_4449fe70 / ext_call.return_data[0])
    revert
}

function sub_45f60886(?) {
    require stage <= 8
    require stage == 2
    require msg.sender == custodianAddress
    require arg2 > 0
    s = 10000000000 * 10^18
    idx = 9
    t = 10000000000 * 10^18
    while idx:
        if not t:
            if not bool(idx):
                s = s
                idx = idx / 2
                t = 0
                continue 
            s = 0
            idx = idx / 2
            t = 0
            continue 
        require t
        require t * t / t == t
        require (t * t) + 500000000 * 10^18 >= t * t
        if not bool(idx):
            s = s
            idx = idx / 2
            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
            continue 
        if not (t * t) + 500000000 * 10^18 / 1000000000 * 10^18:
            s = 0
            idx = idx / 2
            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
            continue 
        require (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
        require s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 / (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 == s
        require (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 >= s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
        s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
        idx = idx / 2
        t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
        continue 
    if not arg2:
        require sub_4449fe70
        require (0 / sub_4449fe70) + 5 >= 0 / sub_4449fe70
        if not stor7:
            require arg2 <= sub_2cbaef16
            sub_2cbaef16 -= arg2
            require 0 <= sub_a51483f3
            require 0 <= sub_a705f893[address(arg1)]
            return 1
        require stor7
        require stor7 * (0 / sub_4449fe70) + 5 / 10000000000 * 10^18 / stor7 == (0 / sub_4449fe70) + 5 / 10000000000 * 10^18
        require arg2 <= sub_2cbaef16
        sub_2cbaef16 -= arg2
        require stor7 * (0 / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18 <= sub_a51483f3
        sub_a51483f3 -= stor7 * (0 / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18
        require stor7 * (0 / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18 <= sub_a705f893[address(arg1)]
        sub_a705f893[address(arg1)] -= stor7 * (0 / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18
    else:
        require arg2
        require arg2 * s / arg2 == s
        require sub_4449fe70
        require (arg2 * s / sub_4449fe70) + 5 >= arg2 * s / sub_4449fe70
        if not stor7:
            require arg2 <= sub_2cbaef16
            sub_2cbaef16 -= arg2
            require 0 <= sub_a51483f3
            require 0 <= sub_a705f893[address(arg1)]
            return 1
        require stor7
        require stor7 * (arg2 * s / sub_4449fe70) + 5 / 10000000000 * 10^18 / stor7 == (arg2 * s / sub_4449fe70) + 5 / 10000000000 * 10^18
        require arg2 <= sub_2cbaef16
        sub_2cbaef16 -= arg2
        require stor7 * (arg2 * s / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18 <= sub_a51483f3
        sub_a51483f3 -= stor7 * (arg2 * s / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18
        require stor7 * (arg2 * s / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18 <= sub_a705f893[address(arg1)]
        sub_a705f893[address(arg1)] -= stor7 * (arg2 * s / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18
    return 1
}

function percent(uint256 arg1, uint256 arg2, uint256 arg3) {
    require arg3 + 1 >= arg3
    if bool(arg3 + 1):
        s = 10000000000 * 10^18
        idx = arg3 + 1 / 2
        t = 10000000000 * 10^18
        while idx:
            if not t:
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = 0
                    continue 
                s = 0
                idx = idx / 2
                t = 0
                continue 
            require t
            require t * t / t == t
            require (t * t) + 500000000 * 10^18 >= t * t
            if not bool(idx):
                s = s
                idx = idx / 2
                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
            if not (t * t) + 500000000 * 10^18 / 1000000000 * 10^18:
                s = 0
                idx = idx / 2
                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
            require (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
            require s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 / (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 == s
            require (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 >= s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
            s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
            idx = idx / 2
            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
            continue 
    else:
        s = 1000000000 * 10^18
        idx = arg3 + 1 / 2
        t = 10000000000 * 10^18
        while idx:
            if not t:
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = 0
                    continue 
                s = 0
                idx = idx / 2
                t = 0
                continue 
            require t
            require t * t / t == t
            require (t * t) + 500000000 * 10^18 >= t * t
            if not bool(idx):
                s = s
                idx = idx / 2
                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
            if not (t * t) + 500000000 * 10^18 / 1000000000 * 10^18:
                s = 0
                idx = idx / 2
                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
            require (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
            require s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 / (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 == s
            require (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 >= s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
            s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
            idx = idx / 2
            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
            continue 
    if not arg1:
        if arg2:
            if (0 / arg2) + 5 >= 0 / arg2:
                return ((0 / arg2) + 5 / 10000000000 * 10^18)
    else:
        if arg1:
            if arg1 * s / arg1 == s:
                if arg2:
                    if (arg1 * s / arg2) + 5 >= arg1 * s / arg2:
                        return ((arg1 * s / arg2) + 5 / 10000000000 * 10^18)
    revert
}

function sub_0bc0f314(?) {
    require sub_1c00930b + arg1 >= sub_1c00930b
    mem[96] = 13
    mem[128] = 'ExchangeRates'
    mem[192 len 0] = None
    mem[160] = 13
    mem[205 len 0] = None
    _83 = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    mem[209] = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args _83
    mem[205] = ext_call.return_data[0]
    require ext_call.success
    mem[241] = 32
    mem[64] = 305
    mem[273 len 1024] = code.data[14565 len 1024]
    mem[273] = sub_d17ce7a9
    idx = 0
    while idx < 32:
        require idx < 32
        if Mask(8, 248, mem[idx + 273]):
            idx = idx + 1
            continue 
        t = 273
        u = 337
        s = idx
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[floor32(idx) + 337] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32] or Mask(8 * -(idx % 32) + 32, -(8 * -(idx % 32) + 32) + 256, mem[floor32(idx) + 337])
        mem[305] = idx
        t = 337
        u = idx + 337
        s = mem[305]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[idx + floor32(mem[305]) + 337] = mem[-(mem[305] % 32) + floor32(mem[305]) + 369 len mem[305] % 32] or Mask(8 * -(mem[305] % 32) + 32, -(8 * -(mem[305] % 32) + 32) + 256, mem[idx + floor32(mem[305]) + 337])
        staticcall ext_call.return_data[0] with:
             funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
                gas gas_remaining wei
               args sha3(mem[idx + 337 len idx])
        require ext_call.success
        if not sub_1c00930b + arg1:
            if sub_2cbaef16 >= 0:
                if sub_2cbaef16 + 1 >= sub_2cbaef16:
                    return sub_4449fe70 <= sub_2cbaef16 + 1
        else:
            if sub_1c00930b + arg1:
                if (sub_1c00930b * ext_call.return_data[0]) + (arg1 * ext_call.return_data[0]) / sub_1c00930b + arg1 == ext_call.return_data[0]:
                    if ((sub_1c00930b * ext_call.return_data[0]) + (arg1 * ext_call.return_data[0]) / 10^18) + sub_2cbaef16 >= (sub_1c00930b * ext_call.return_data[0]) + (arg1 * ext_call.return_data[0]) / 10^18:
                        return sub_4449fe70 <= ((sub_1c00930b * ext_call.return_data[0]) + (arg1 * ext_call.return_data[0]) / 10^18) + sub_2cbaef16 + 1
        revert
    mem[337 len floor32(idx)] = mem[273 len floor32(idx)]
    mem[floor32(idx) + -(idx % 32) + 369 len idx % 32] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32]
    mem[idx + 337 len floor32(idx)] = mem[337 len floor32(idx)]
    mem[(2 * floor32(idx)) + 369 len idx % 32] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32]
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[idx + 337 len idx])
    require ext_call.success
    if not sub_1c00930b + arg1:
        if sub_2cbaef16 >= 0:
            if sub_2cbaef16 + 1 >= sub_2cbaef16:
                return sub_4449fe70 <= sub_2cbaef16 + 1
    else:
        if sub_1c00930b + arg1:
            if (sub_1c00930b * ext_call.return_data[0]) + (arg1 * ext_call.return_data[0]) / sub_1c00930b + arg1 == ext_call.return_data[0]:
                if ((sub_1c00930b * ext_call.return_data[0]) + (arg1 * ext_call.return_data[0]) / 10^18) + sub_2cbaef16 >= (sub_1c00930b * ext_call.return_data[0]) + (arg1 * ext_call.return_data[0]) / 10^18:
                    return sub_4449fe70 <= ((sub_1c00930b * ext_call.return_data[0]) + (arg1 * ext_call.return_data[0]) / 10^18) + sub_2cbaef16 + 1
    revert
}

function sub_d04e54e7(?) {
    require tokenInitialized
    require not sub_ed4ae0e9
    require arg1
    require arg1 != sub_d17ce7a9
    sub_d17ce7a9 = arg1
    mem[96] = 13
    mem[128] = 'ExchangeRates'
    mem[192 len 0] = None
    mem[160] = 13
    mem[205 len 0] = None
    _111 = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    mem[209] = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args _111
    mem[205] = ext_call.return_data[0]
    require ext_call.success
    mem[241] = 32
    mem[64] = 305
    mem[273 len 1024] = code.data[14565 len 1024]
    mem[273] = sub_d17ce7a9
    idx = 0
    while idx < 32:
        require idx < 32
        if Mask(8, 248, mem[idx + 273]):
            idx = idx + 1
            continue 
        mem[241] = idx
        t = 273
        u = 337
        s = idx
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[floor32(idx) + 337] = mem[-(idx % 32) + floor32(idx) + 305 len idx % 32] or Mask(8 * -(idx % 32) + 32, -(8 * -(idx % 32) + 32) + 256, mem[floor32(idx) + 337])
        mem[305] = idx
        mem[64] = idx + 337
        t = 337
        u = mem[64]
        s = mem[305]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[305])] = mem[floor32(mem[305]) + -(mem[305] % 32) + 369 len mem[305] % 32] or Mask(8 * -(mem[305] % 32) + 32, -(8 * -(mem[305] % 32) + 32) + 256, mem[mem[64] + floor32(mem[305])])
        staticcall ext_call.return_data[0] with:
             funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
                gas gas_remaining wei
               args sha3(mem[mem[64] len (2 * idx) + -mem[64] + 337])
        require ext_call.success
        require ext_call.return_data[0] > 0
        require arg2 > block.timestamp
        require arg2 != sub_d8a3819b
        sub_d8a3819b = arg2
        require arg5 >= 168 * 24 * 3600
        require arg5 != sub_848f4925
        sub_848f4925 = arg5
        require arg6 < stor7
        require arg6 != sub_4449fe70
        require arg6 > 0
        sub_4449fe70 = arg6
        require arg3 + arg4 > 0
        if arg3 > 0:
            if arg3 < 72 * 24 * 3600:
                require not arg3
                require sub_2d0ab86d
            require arg3 != sub_e531e946
            sub_e531e946 = arg3
        if arg4 > 0:
            if arg4 < 24 * 3600:
                require not arg4
                require sub_e531e946
            require arg4 != sub_2d0ab86d
            sub_2d0ab86d = arg4
        Mask(232, 0, stor13.field_24) = 1
        return 1
    mem[337 len floor32(idx)] = mem[273 len floor32(idx)]
    mem[floor32(idx) + -(idx % 32) + 369 len idx % 32] = mem[-(idx % 32) + floor32(idx) + 305 len idx % 32]
    mem[idx + 337 len floor32(idx)] = mem[337 len floor32(idx)]
    mem[(2 * floor32(idx)) + 369 len idx % 32] = mem[-(idx % 32) + floor32(idx) + 369 len idx % 32]
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[idx + 337 len idx])
    require ext_call.success
    require ext_call.return_data[0] > 0
    require arg2 > block.timestamp
    require arg2 != sub_d8a3819b
    sub_d8a3819b = arg2
    require arg5 >= 168 * 24 * 3600
    require arg5 != sub_848f4925
    sub_848f4925 = arg5
    require arg6 < stor7
    require arg6 != sub_4449fe70
    require arg6 > 0
    sub_4449fe70 = arg6
    require arg3 + arg4 > 0
    if arg3 > 0:
        if arg3 < 72 * 24 * 3600:
            require not arg3
            require sub_2d0ab86d
        require arg3 != sub_e531e946
        sub_e531e946 = arg3
    if arg4 > 0:
        if arg4 < 24 * 3600:
            require not arg4
            require sub_e531e946
        require arg4 != sub_2d0ab86d
        sub_2d0ab86d = arg4
    Mask(232, 0, stor13.field_24) = 1
    return 1
}

function sub_6d13d75e(?) {
    require stage <= 8
    require stage == 4
    mem[96] = 13
    mem[128] = 'ExchangeRates'
    mem[192 len 0] = None
    mem[160] = 13
    mem[205 len 0] = None
    _83 = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    mem[209] = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args _83
    mem[205] = ext_call.return_data[0]
    require ext_call.success
    mem[241] = 32
    mem[64] = 305
    mem[273 len 1024] = code.data[14565 len 1024]
    mem[273] = sub_d17ce7a9
    idx = 0
    while idx < 32:
        require idx < 32
        if Mask(8, 248, mem[idx + 273]):
            idx = idx + 1
            continue 
        t = 273
        u = 337
        s = idx
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[floor32(idx) + 337] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32] or Mask(8 * -(idx % 32) + 32, -(8 * -(idx % 32) + 32) + 256, mem[floor32(idx) + 337])
        mem[305] = idx
        t = 337
        u = idx + 337
        s = mem[305]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[idx + floor32(mem[305]) + 337] = mem[-(mem[305] % 32) + floor32(mem[305]) + 369 len mem[305] % 32] or Mask(8 * -(mem[305] % 32) + 32, -(8 * -(mem[305] % 32) + 32) + 256, mem[idx + floor32(mem[305]) + 337])
        staticcall ext_call.return_data[0] with:
             funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
                gas gas_remaining wei
               args sha3(mem[idx + 337 len idx])
        require ext_call.success
        if not sub_2cbaef16:
            if ext_call.return_data[0]:
                if 5 * 0 / ext_call.return_data[0] / 5 == 0 / ext_call.return_data[0]:
                    if 5 * sub_1c00930b / 5 == sub_1c00930b:
                        if (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000) >= 5 * 0 / ext_call.return_data[0] / 1000:
                            return ((5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000))
        else:
            if sub_2cbaef16:
                if 10^18 * sub_2cbaef16 / sub_2cbaef16 == 10^18:
                    if ext_call.return_data[0]:
                        if 5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 5 == 10^18 * sub_2cbaef16 / ext_call.return_data[0]:
                            if 5 * sub_1c00930b / 5 == sub_1c00930b:
                                if (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000) >= 5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000:
                                    return ((5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000))
        revert
    mem[337 len floor32(idx)] = mem[273 len floor32(idx)]
    mem[floor32(idx) + -(idx % 32) + 369 len idx % 32] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32]
    mem[idx + 337 len floor32(idx)] = mem[337 len floor32(idx)]
    mem[(2 * floor32(idx)) + 369 len idx % 32] = mem[floor32(idx) + -(idx % 32) + 305 len idx % 32]
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[idx + 337 len idx])
    require ext_call.success
    if not sub_2cbaef16:
        if ext_call.return_data[0]:
            if 5 * 0 / ext_call.return_data[0] / 5 == 0 / ext_call.return_data[0]:
                if 5 * sub_1c00930b / 5 == sub_1c00930b:
                    if (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000) >= 5 * 0 / ext_call.return_data[0] / 1000:
                        return ((5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000))
    else:
        if sub_2cbaef16:
            if 10^18 * sub_2cbaef16 / sub_2cbaef16 == 10^18:
                if ext_call.return_data[0]:
                    if 5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 5 == 10^18 * sub_2cbaef16 / ext_call.return_data[0]:
                        if 5 * sub_1c00930b / 5 == sub_1c00930b:
                            if (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000) >= 5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000:
                                return ((5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000))
    revert
}

function sub_c58867a6(?) {
    require stage <= 8
    require stage == 2
    mem[201 len 0] = None
    mem[201 len 23] = mem[201 len 14], Mask(72, 0, 'Whitelist')
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[201 len 9])
    require ext_call.success
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('whitelisted(address)')) >> 224
            gas gas_remaining wei
           args arg1
    require ext_call.return_data[0]
    require msg.sender == custodianAddress
    require arg2 > 0
    require sub_2cbaef16 + arg2 >= sub_2cbaef16
    sub_2cbaef16 += arg2
    require sub_2cbaef16 <= sub_4449fe70
    s = 10000000000 * 10^18
    idx = 9
    t = 10000000000 * 10^18
    while idx:
        if not t:
            if not bool(idx):
                s = s
                idx = idx / 2
                t = 0
                continue 
            s = 0
            idx = idx / 2
            t = 0
            continue 
        require t
        require t * t / t == t
        require (t * t) + 500000000 * 10^18 >= t * t
        if not bool(idx):
            s = s
            idx = idx / 2
            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
            continue 
        if not (t * t) + 500000000 * 10^18 / 1000000000 * 10^18:
            s = 0
            idx = idx / 2
            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
            continue 
        require (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
        require s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 / (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 == s
        require (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 >= s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
        s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
        idx = idx / 2
        t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
        continue 
    if not arg2:
        require sub_4449fe70
        require (0 / sub_4449fe70) + 5 >= 0 / sub_4449fe70
        if not stor7:
            require sub_a51483f3 >= sub_a51483f3
            require sub_a705f893[address(arg1)] >= sub_a705f893[address(arg1)]
        else:
            require stor7
            require stor7 * (0 / sub_4449fe70) + 5 / 10000000000 * 10^18 / stor7 == (0 / sub_4449fe70) + 5 / 10000000000 * 10^18
            require sub_a51483f3 + (stor7 * (0 / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18) >= sub_a51483f3
            sub_a51483f3 += stor7 * (0 / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18
            require sub_a705f893[address(arg1)] + (stor7 * (0 / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18) >= sub_a705f893[address(arg1)]
            sub_a705f893[address(arg1)] += stor7 * (0 / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18
        if sub_2cbaef16 == sub_4449fe70:
            stage = 4
            mem[378 len 0] = None
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[378 len 9])
            require ext_call.success
            mem[482 len 64] = 576014340, 0, 4, mem[482 len 28]
            mem[514] = mem[542 len 4]
            call address(ext_call.return_data[0]).mem[482 len 4] with:
                 gas gas_remaining wei
                args mem[486 len 60]
    else:
        require arg2
        require arg2 * s / arg2 == s
        require sub_4449fe70
        require (arg2 * s / sub_4449fe70) + 5 >= arg2 * s / sub_4449fe70
        if not stor7:
            require sub_a51483f3 >= sub_a51483f3
            require sub_a705f893[address(arg1)] >= sub_a705f893[address(arg1)]
            if sub_2cbaef16 == sub_4449fe70:
                stage = 4
                mem[378 len 0] = None
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[378 len 9])
                require ext_call.success
                mem[482 len 64] = 576014340, 0, 4, mem[482 len 28]
                mem[514] = mem[542 len 4]
                call address(ext_call.return_data[0]).mem[482 len 4] with:
                     gas gas_remaining wei
                    args mem[486 len 60]
        else:
            require stor7
            require stor7 * (arg2 * s / sub_4449fe70) + 5 / 10000000000 * 10^18 / stor7 == (arg2 * s / sub_4449fe70) + 5 / 10000000000 * 10^18
            require sub_a51483f3 + (stor7 * (arg2 * s / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18) >= sub_a51483f3
            sub_a51483f3 += stor7 * (arg2 * s / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18
            require sub_a705f893[address(arg1)] + (stor7 * (arg2 * s / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18) >= sub_a705f893[address(arg1)]
            sub_a705f893[address(arg1)] += stor7 * (arg2 * s / sub_4449fe70) + 5 / 10000000000 * 10^18 / 10^18
            if sub_2cbaef16 == sub_4449fe70:
                stage = 4
                mem[378 len 0] = None
                mem[378 len 23] = mem[378 len 14], Mask(72, 0, 'PoaLogger')
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[378 len 9])
                require ext_call.success
                mem[482 len 64] = 576014340, 0, 4, mem[482 len 28]
                mem[514] = mem[542 len 4]
                call address(ext_call.return_data[0]).mem[482 len 4] with:
                     gas gas_remaining wei
                    args mem[486 len 60]
    return 1
}

function sub_718554e9(?) {
    require stage <= 8
    require stage == 3
    require sub_1c00930b >= sub_1c00930b
    mem[96] = 13
    mem[128] = 'ExchangeRates'
    mem[192 len 0] = None
    mem[160] = 13
    mem[205 len 0] = None
    _211 = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    mem[209] = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args _211
    mem[205] = ext_call.return_data[0]
    require ext_call.success
    mem[241] = 32
    mem[64] = 305
    mem[273 len 1024] = code.data[14565 len 1024]
    mem[273] = sub_d17ce7a9
    idx = 0
    while idx < 32:
        require idx < 32
        if Mask(8, 248, mem[idx + 273]):
            idx = idx + 1
            continue 
        mem[241] = idx
        t = 273
        u = 337
        s = idx
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[floor32(idx) + 337] = mem[-(idx % 32) + floor32(idx) + 305 len idx % 32] or Mask(8 * -(idx % 32) + 32, -(8 * -(idx % 32) + 32) + 256, mem[floor32(idx) + 337])
        mem[305] = idx
        t = 337
        u = idx + 337
        s = mem[305]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[idx + floor32(mem[305]) + 337] = mem[-(mem[305] % 32) + floor32(mem[305]) + 369 len mem[305] % 32] or Mask(8 * -(mem[305] % 32) + 32, -(8 * -(mem[305] % 32) + 32) + 256, mem[idx + floor32(mem[305]) + 337])
        staticcall ext_call.return_data[0] with:
             funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
                gas gas_remaining wei
               args sha3(mem[idx + 337 len mem[305]])
        require ext_call.success
        if not sub_1c00930b:
            require sub_2cbaef16 >= 0
            require sub_2cbaef16 + 1 >= sub_2cbaef16
            if sub_4449fe70 > sub_2cbaef16 + 1:
                return 0
        else:
            require sub_1c00930b
            require sub_1c00930b * ext_call.return_data[0] / sub_1c00930b == ext_call.return_data[0]
            require (sub_1c00930b * ext_call.return_data[0] / 10^18) + sub_2cbaef16 >= sub_1c00930b * ext_call.return_data[0] / 10^18
            if sub_4449fe70 > (sub_1c00930b * ext_call.return_data[0] / 10^18) + sub_2cbaef16 + 1:
                return 0
        stage = 4
        mem[64] = idx + 437
        mem[idx + 405] = 'PoaLogger'
        t = idx + 405
        u = idx + 469
        s = 9
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[idx + 469] = Mask(72, 0, 'PoaLogger') or Mask(184, 72, mem[idx + 469])
        mem[64] = idx + 478
        t = idx + 469
        u = idx + 478
        s = 9
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[idx + 478] = mem[idx + 492 len 9] or Mask(184, 72, mem[idx + 478])
        staticcall stor2 with:
             funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                gas gas_remaining wei
               args sha3(mem[idx + 478 len 9])
        require ext_call.success
        mem[idx + 550] = 4
        mem[idx + 546] = 0 or 0x2255480400000000000000000000000000000000000000000000000000000000
        s = 0
        while s < 36:
            mem[idx + s + 582] = mem[idx + s + 546]
            s = s + 32
            continue 
        mem[idx + 614] = mem[idx + 642 len 4]
        call address(ext_call.return_data[0]).mem[idx + 582 len 4] with:
             gas gas_remaining wei
            args mem[idx + 586 len 60]
        return 1
    mem[337 len floor32(idx)] = mem[273 len floor32(idx)]
    mem[floor32(idx) + -(idx % 32) + 369 len idx % 32] = mem[-(idx % 32) + floor32(idx) + 305 len idx % 32]
    mem[idx + 337 len floor32(idx)] = mem[337 len floor32(idx)]
    mem[(2 * floor32(idx)) + 369 len idx % 32] = mem[-(idx % 32) + floor32(idx) + 369 len idx % 32]
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[idx + 337 len idx])
    require ext_call.success
    if not sub_1c00930b:
        require sub_2cbaef16 >= 0
        require sub_2cbaef16 + 1 >= sub_2cbaef16
        if sub_4449fe70 > sub_2cbaef16 + 1:
            return 0
        stage = 4
        mem[idx + 478 len 0] = None
        staticcall stor2 with:
             funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                gas gas_remaining wei
               args sha3(mem[idx + 478 len 9])
        require ext_call.success
        mem[idx + 582 len 64] = 576014340, 0, 4, mem[idx + 582 len 28]
    else:
        require sub_1c00930b
        require sub_1c00930b * ext_call.return_data[0] / sub_1c00930b == ext_call.return_data[0]
        require (sub_1c00930b * ext_call.return_data[0] / 10^18) + sub_2cbaef16 >= sub_1c00930b * ext_call.return_data[0] / 10^18
        if sub_4449fe70 > (sub_1c00930b * ext_call.return_data[0] / 10^18) + sub_2cbaef16 + 1:
            return 0
        stage = 4
        mem[idx + 478 len 0] = None
        staticcall stor2 with:
             funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                gas gas_remaining wei
               args sha3(mem[idx + 478 len 9])
        require ext_call.success
        mem[idx + 582 len 64] = 576014340, 0, 0, mem[idx + 582 len 28]
    mem[idx + 614] = mem[idx + 642 len 4]
    call address(ext_call.return_data[0]).mem[idx + 582 len 4] with:
         gas gas_remaining wei
        args mem[idx + 586 len 60]
    return 1
}

function reclaim() {
    require sub_d8a3819b + sub_e531e946 >= sub_d8a3819b
    require sub_2d0ab86d >= 0
    require sub_848f4925 >= 0
    require stage <= 8
    if stage > 3:
        require stage <= 8
        if stage != 4:
            require stage <= 8
            require stage == 6
            require sub_a705f893[address(msg.sender)] <= 0
            stor7 = 0
            sub_1c031dd8[address(msg.sender)] = 0
            require sub_1c031dd8[address(msg.sender)] > 0
            require sub_1c031dd8[address(msg.sender)] <= sub_1c00930b
            sub_1c00930b -= sub_1c031dd8[address(msg.sender)]
            call msg.sender with:
               value sub_1c031dd8[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[201 len 0] = None
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[201 len 9])
            require ext_call.success
            mem[337 len 96] = 385211447, msg.sender, sub_1c031dd8[address(msg.sender)], mem[337 len 28]
            mem[401] = mem[429 len 4]
            call address(ext_call.return_data[0]).mem[337 len 4] with:
                 gas gas_remaining wei
                args mem[341 len 92]
        else:
            if block.timestamp < sub_d8a3819b + sub_e531e946 + sub_2d0ab86d + sub_848f4925:
                require stage <= 8
                require stage == 6
                require sub_a705f893[address(msg.sender)] <= 0
                stor7 = 0
                sub_1c031dd8[address(msg.sender)] = 0
                require sub_1c031dd8[address(msg.sender)] > 0
                require sub_1c031dd8[address(msg.sender)] <= sub_1c00930b
                sub_1c00930b -= sub_1c031dd8[address(msg.sender)]
                call msg.sender with:
                   value sub_1c031dd8[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[201 len 0] = None
                mem[201 len 23] = mem[201 len 14], Mask(72, 0, 'PoaLogger')
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[201 len 9])
                require ext_call.success
                mem[337 len 96] = 385211447, msg.sender, sub_1c031dd8[address(msg.sender)], mem[337 len 28]
                mem[401] = mem[429 len 4]
                call address(ext_call.return_data[0]).mem[337 len 4] with:
                     gas gas_remaining wei
                    args mem[341 len 92]
            else:
                stage = 6
                mem[201 len 0] = None
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[201 len 9])
                require ext_call.success
                mem[305 len 64] = 576014340, 0, 0, mem[305 len 28]
                mem[337] = mem[365 len 4]
                call address(ext_call.return_data[0]).mem[305 len 4] with:
                     gas gas_remaining wei
                    args mem[309 len 60]
                require stage <= 8
                require stage == 6
                require sub_a705f893[address(msg.sender)] <= 0
                stor7 = 0
                sub_1c031dd8[address(msg.sender)] = 0
                require sub_1c031dd8[address(msg.sender)] > 0
                require sub_1c031dd8[address(msg.sender)] <= sub_1c00930b
                sub_1c00930b -= sub_1c031dd8[address(msg.sender)]
                call msg.sender with:
                   value sub_1c031dd8[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[410 len 0] = None
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[410 len 9])
                require ext_call.success
                mem[546 len 96] = 385211447, msg.sender, sub_1c031dd8[address(msg.sender)], mem[546 len 28]
                mem[610] = mem[638 len 4]
                call address(ext_call.return_data[0]).mem[546 len 4] with:
                     gas gas_remaining wei
                    args mem[550 len 92]
    else:
        if block.timestamp >= sub_d8a3819b + sub_e531e946 + sub_2d0ab86d:
            stage = 6
            mem[201 len 0] = None
            mem[201 len 23] = mem[201 len 14], Mask(72, 0, 'PoaLogger')
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[201 len 9])
            require ext_call.success
            mem[305 len 64] = 576014340, 0, 0, mem[305 len 28]
            mem[337] = mem[365 len 4]
            call address(ext_call.return_data[0]).mem[305 len 4] with:
                 gas gas_remaining wei
                args mem[309 len 60]
            require stage <= 8
            require stage == 6
            require sub_a705f893[address(msg.sender)] <= 0
            stor7 = 0
            sub_1c031dd8[address(msg.sender)] = 0
            require sub_1c031dd8[address(msg.sender)] > 0
            require sub_1c031dd8[address(msg.sender)] <= sub_1c00930b
            sub_1c00930b -= sub_1c031dd8[address(msg.sender)]
            call msg.sender with:
               value sub_1c031dd8[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[410 len 0] = None
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[410 len 9])
            require ext_call.success
            mem[546 len 96] = 385211447, msg.sender, sub_1c031dd8[address(msg.sender)], mem[546 len 28]
            mem[610] = mem[638 len 4]
            call address(ext_call.return_data[0]).mem[546 len 4] with:
                 gas gas_remaining wei
                args mem[550 len 92]
        else:
            require stage <= 8
            if stage != 4:
                require stage <= 8
                require stage == 6
                require sub_a705f893[address(msg.sender)] <= 0
                stor7 = 0
                sub_1c031dd8[address(msg.sender)] = 0
                require sub_1c031dd8[address(msg.sender)] > 0
                require sub_1c031dd8[address(msg.sender)] <= sub_1c00930b
                sub_1c00930b -= sub_1c031dd8[address(msg.sender)]
                call msg.sender with:
                   value sub_1c031dd8[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[201 len 0] = None
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[201 len 9])
                require ext_call.success
                mem[337 len 96] = 385211447, msg.sender, sub_1c031dd8[address(msg.sender)], mem[337 len 28]
                mem[401] = mem[429 len 4]
                call address(ext_call.return_data[0]).mem[337 len 4] with:
                     gas gas_remaining wei
                    args mem[341 len 92]
            else:
                if block.timestamp < sub_d8a3819b + sub_e531e946 + sub_2d0ab86d + sub_848f4925:
                    require stage <= 8
                    require stage == 6
                    require sub_a705f893[address(msg.sender)] <= 0
                    stor7 = 0
                    sub_1c031dd8[address(msg.sender)] = 0
                    require sub_1c031dd8[address(msg.sender)] > 0
                    require sub_1c031dd8[address(msg.sender)] <= sub_1c00930b
                    sub_1c00930b -= sub_1c031dd8[address(msg.sender)]
                    call msg.sender with:
                       value sub_1c031dd8[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[201 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[201 len 9])
                    require ext_call.success
                    mem[337 len 96] = 385211447, msg.sender, sub_1c031dd8[address(msg.sender)], mem[337 len 28]
                    mem[401] = mem[429 len 4]
                    call address(ext_call.return_data[0]).mem[337 len 4] with:
                         gas gas_remaining wei
                        args mem[341 len 92]
                else:
                    stage = 6
                    mem[201 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[201 len 9])
                    require ext_call.success
                    mem[305 len 64] = 576014340, 0, 0, mem[305 len 28]
                    mem[337] = mem[365 len 4]
                    call address(ext_call.return_data[0]).mem[305 len 4] with:
                         gas gas_remaining wei
                        args mem[309 len 60]
                    require stage <= 8
                    require stage == 6
                    require sub_a705f893[address(msg.sender)] <= 0
                    stor7 = 0
                    sub_1c031dd8[address(msg.sender)] = 0
                    require sub_1c031dd8[address(msg.sender)] > 0
                    require sub_1c031dd8[address(msg.sender)] <= sub_1c00930b
                    sub_1c00930b -= sub_1c031dd8[address(msg.sender)]
                    call msg.sender with:
                       value sub_1c031dd8[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[410 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[410 len 9])
                    require ext_call.success
                    mem[546 len 96] = 385211447, msg.sender, sub_1c031dd8[address(msg.sender)], mem[546 len 28]
                    mem[610] = mem[638 len 4]
                    call address(ext_call.return_data[0]).mem[546 len 4] with:
                         gas gas_remaining wei
                        args mem[550 len 92]
    return 1
}

function sub_7415a1f2(?) payable {
    require stage <= 8
    require stage == 4
    require not sub_394d8f49
    require stage <= 8
    require stage == 4
    mem[96] = 13
    mem[128] = 'ExchangeRates'
    mem[192 len 0] = None
    mem[160] = 13
    mem[205 len 0] = None
    _75 = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    mem[209] = sha3(mem[205 len 6], Mask(56, 48, 'ExchangeRates') >> 48)
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args _75
    mem[205] = ext_call.return_data[0]
    require ext_call.success
    mem[241] = 32
    mem[64] = 305
    mem[273 len 1024] = code.data[14565 len 1024]
    mem[273] = sub_d17ce7a9
    idx = 0
    while idx < 32:
        require idx < 32
        if Mask(8, 248, mem[idx + 273]):
            idx = idx + 1
            continue 
        mem[241] = idx
        t = 273
        u = 337
        s = idx
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[floor32(idx) + 337] = mem[-(idx % 32) + floor32(idx) + 305 len idx % 32] or Mask(8 * -(idx % 32) + 32, -(8 * -(idx % 32) + 32) + 256, mem[floor32(idx) + 337])
        mem[305] = idx
        t = 337
        u = idx + 337
        s = mem[305]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[idx + floor32(mem[305]) + 337] = mem[-(mem[305] % 32) + floor32(mem[305]) + 369 len mem[305] % 32] or Mask(8 * -(mem[305] % 32) + 32, -(8 * -(mem[305] % 32) + 32) + 256, mem[idx + floor32(mem[305]) + 337])
        staticcall ext_call.return_data[0] with:
             funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
                gas gas_remaining wei
               args sha3(mem[idx + 337 len mem[305]])
        require ext_call.success
        if not sub_2cbaef16:
            require ext_call.return_data[0]
            require 5 * 0 / ext_call.return_data[0] / 5 == 0 / ext_call.return_data[0]
            require 5 * sub_1c00930b / 5 == sub_1c00930b
            require (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000) >= 5 * 0 / ext_call.return_data[0] / 1000
            t = 10000000000 * 10^18
            s = 9
            u = 10000000000 * 10^18
            while s:
                if not u:
                    if not bool(s):
                        t = t
                        s = s / 2
                        u = 0
                        continue 
                    t = 0
                    s = s / 2
                    u = 0
                    continue 
                require u
                require u * u / u == u
                require (u * u) + 500000000 * 10^18 >= u * u
                if not bool(s):
                    t = t
                    s = s / 2
                    u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                if not (u * u) + 500000000 * 10^18 / 1000000000 * 10^18:
                    t = 0
                    s = s / 2
                    u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                require (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                require t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 / (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 == t
                require (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 >= t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                t = (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                s = s / 2
                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
            if not msg.value:
                require (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)
                require (0 / (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 >= 0 / (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)
                require (0 / (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 / 10000000000 * 10^18 > 995 * 10^15
                require (0 / (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 / 10000000000 * 10^18 < 1005 * 10^15
                mem[64] = idx + 437
                mem[idx + 405] = 'FeeManager'
                u = idx + 405
                v = idx + 469
                s = 10
                while s >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    s = s - 32
                    continue 
                mem[idx + 469] = Mask(80, 0, 'FeeManager') or Mask(176, 80, mem[idx + 469])
                mem[64] = idx + 479
                u = idx + 469
                v = idx + 479
                s = 10
                while s >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    s = s - 32
                    continue 
            else:
                require msg.value
                require msg.value * t / msg.value == t
                require (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)
                require (msg.value * t / (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 >= msg.value * t / (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)
                require (msg.value * t / (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 / 10000000000 * 10^18 > 995 * 10^15
                require (msg.value * t / (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 / 10000000000 * 10^18 < 1005 * 10^15
                mem[64] = idx + 437
                mem[idx + 405] = 'FeeManager'
                t = idx + 405
                u = idx + 469
                s = 10
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[idx + 469] = Mask(80, 0, 'FeeManager') or Mask(176, 80, mem[idx + 469])
                mem[64] = idx + 479
                t = idx + 469
                u = idx + 479
                s = 10
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
        else:
            require sub_2cbaef16
            require 10^18 * sub_2cbaef16 / sub_2cbaef16 == 10^18
            require ext_call.return_data[0]
            require 5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 5 == 10^18 * sub_2cbaef16 / ext_call.return_data[0]
            require 5 * sub_1c00930b / 5 == sub_1c00930b
            require (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000) >= 5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000
            t = 10000000000 * 10^18
            s = 9
            u = 10000000000 * 10^18
            while s:
                if not u:
                    if not bool(s):
                        t = t
                        s = s / 2
                        u = 0
                        continue 
                    t = 0
                    s = s / 2
                    u = 0
                    continue 
                require u
                require u * u / u == u
                require (u * u) + 500000000 * 10^18 >= u * u
                if not bool(s):
                    t = t
                    s = s / 2
                    u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                if not (u * u) + 500000000 * 10^18 / 1000000000 * 10^18:
                    t = 0
                    s = s / 2
                    u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                require (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                require t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 / (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 == t
                require (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 >= t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                t = (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                s = s / 2
                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
            if not msg.value:
                require (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)
                require (0 / (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 >= 0 / (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)
                require (0 / (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 / 10000000000 * 10^18 > 995 * 10^15
                require (0 / (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 / 10000000000 * 10^18 < 1005 * 10^15
                mem[64] = idx + 437
                mem[idx + 405] = 'FeeManager'
                u = idx + 405
                v = idx + 469
                s = 10
                while s >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    s = s - 32
                    continue 
                mem[idx + 469] = Mask(80, 0, 'FeeManager') or Mask(176, 80, mem[idx + 469])
                mem[64] = idx + 479
                u = idx + 469
                v = idx + 479
                s = 10
                while s >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    s = s - 32
                    continue 
            else:
                require msg.value
                require msg.value * t / msg.value == t
                require (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)
                require (msg.value * t / (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 >= msg.value * t / (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)
                require (msg.value * t / (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 / 10000000000 * 10^18 > 995 * 10^15
                require (msg.value * t / (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 / 10000000000 * 10^18 < 1005 * 10^15
                mem[64] = idx + 437
                mem[idx + 405] = 'FeeManager'
                t = idx + 405
                u = idx + 469
                s = 10
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[idx + 469] = Mask(80, 0, 'FeeManager') or Mask(176, 80, mem[idx + 469])
                mem[64] = idx + 479
                t = idx + 469
                u = idx + 479
                s = 10
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
        mem[idx + 479] = mem[idx + 491 len 10] or Mask(176, 80, mem[idx + 479])
        staticcall stor2 with:
             funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                gas gas_remaining wei
               args sha3(mem[idx + 479 len 10])
        require ext_call.success
        mem[idx + 547] = mem[idx + 551 len 28] or 0x2961025200000000000000000000000000000000000000000000000000000000
        s = 0
        while s < 4:
            mem[idx + s + 551] = mem[idx + s + 547]
            s = s + 32
            continue 
        mem[idx + 551] = mem[idx + 579 len 4]
        call address(ext_call.return_data[0]).mem[idx + 551 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[idx + 555 len 28]
        require ext_call.success
        Mask(240, 0, stor13.field_16) = 1
        return 1
    mem[337 len floor32(idx)] = mem[273 len floor32(idx)]
    mem[floor32(idx) + -(idx % 32) + 369 len idx % 32] = mem[-(idx % 32) + floor32(idx) + 305 len idx % 32]
    mem[idx + 337 len floor32(idx)] = mem[337 len floor32(idx)]
    mem[(2 * floor32(idx)) + 369 len idx % 32] = mem[-(idx % 32) + floor32(idx) + 369 len idx % 32]
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('getRate32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[idx + 337 len idx])
    require ext_call.success
    if not sub_2cbaef16:
        require ext_call.return_data[0]
        require 5 * 0 / ext_call.return_data[0] / 5 == 0 / ext_call.return_data[0]
        require 5 * sub_1c00930b / 5 == sub_1c00930b
        require (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000) >= 5 * 0 / ext_call.return_data[0] / 1000
        t = 10000000000 * 10^18
        s = 9
        u = 10000000000 * 10^18
        while s:
            if not u:
                if not bool(s):
                    t = t
                    s = s / 2
                    u = 0
                    continue 
                t = 0
                s = s / 2
                u = 0
                continue 
            require u
            require u * u / u == u
            require (u * u) + 500000000 * 10^18 >= u * u
            if not bool(s):
                t = t
                s = s / 2
                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
            if not (u * u) + 500000000 * 10^18 / 1000000000 * 10^18:
                t = 0
                s = s / 2
                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
            require (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
            require t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 / (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 == t
            require (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 >= t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
            t = (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
            s = s / 2
            u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
            continue 
        if not msg.value:
            require (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)
            require (0 / (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 >= 0 / (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)
            require (0 / (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 / 10000000000 * 10^18 > 995 * 10^15
            require (0 / (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 / 10000000000 * 10^18 < 1005 * 10^15
            mem[idx + 479 len 0] = None
        else:
            require msg.value
            require msg.value * t / msg.value == t
            require (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)
            require (msg.value * t / (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 >= msg.value * t / (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)
            require (msg.value * t / (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 / 10000000000 * 10^18 > 995 * 10^15
            require (msg.value * t / (5 * 0 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 / 10000000000 * 10^18 < 1005 * 10^15
            mem[idx + 479 len 0] = None
            mem[idx + 479 len 22] = mem[idx + 479 len 12], Mask(80, 0, 'FeeManager')
    else:
        require sub_2cbaef16
        require 10^18 * sub_2cbaef16 / sub_2cbaef16 == 10^18
        require ext_call.return_data[0]
        require 5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 5 == 10^18 * sub_2cbaef16 / ext_call.return_data[0]
        require 5 * sub_1c00930b / 5 == sub_1c00930b
        require (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000) >= 5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000
        t = 10000000000 * 10^18
        s = 9
        u = 10000000000 * 10^18
        while s:
            if not u:
                if not bool(s):
                    t = t
                    s = s / 2
                    u = 0
                    continue 
                t = 0
                s = s / 2
                u = 0
                continue 
            require u
            require u * u / u == u
            require (u * u) + 500000000 * 10^18 >= u * u
            if not bool(s):
                t = t
                s = s / 2
                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
            if not (u * u) + 500000000 * 10^18 / 1000000000 * 10^18:
                t = 0
                s = s / 2
                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
            require (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
            require t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 / (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 == t
            require (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 >= t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
            t = (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
            s = s / 2
            u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
            continue 
        if not msg.value:
            require (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)
            require (0 / (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 >= 0 / (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)
            require (0 / (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 / 10000000000 * 10^18 > 995 * 10^15
            require (0 / (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 / 10000000000 * 10^18 < 1005 * 10^15
        else:
            require msg.value
            require msg.value * t / msg.value == t
            require (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)
            require (msg.value * t / (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 >= msg.value * t / (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)
            require (msg.value * t / (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 / 10000000000 * 10^18 > 995 * 10^15
            require (msg.value * t / (5 * 10^18 * sub_2cbaef16 / ext_call.return_data[0] / 1000) + (5 * sub_1c00930b / 1000)) + 5 / 10000000000 * 10^18 < 1005 * 10^15
        mem[idx + 479 len 0] = None
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[idx + 479 len 10])
    require ext_call.success
    mem[idx + 551] = 0, mem[idx + 551 len 28]
    mem[idx + 551] = mem[idx + 579 len 4]
    call address(ext_call.return_data[0]).mem[idx + 551 len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[idx + 555 len 28]
    require ext_call.success
    Mask(240, 0, stor13.field_16) = 1
    return 1
}

function activate() {
    require sub_d8a3819b + sub_e531e946 >= sub_d8a3819b
    require sub_2d0ab86d >= 0
    require sub_848f4925 >= 0
    require stage <= 8
    if stage > 3:
        require stage <= 8
        if stage != 4:
            require msg.sender == custodianAddress
            require stage <= 8
            require stage == 4
            require sub_394d8f49
            mem[96] = stor5
            idx = 96
            s = 5
            while 160 > idx + 32:
                mem[idx + 32] = uint256(stor1[s])
                idx = idx + 32
                s = s + 1
                continue 
            mem[160] = 64
            mem[64] = 256
            mem[192 len 2048] = code.data[14565 len 2048]
            mem[192] = stor5
            mem[224] = mem[128]
            idx = 0
            while idx < 64:
                require idx < 64
                if Mask(8, 248, mem[idx + 192]):
                    idx = idx + 1
                    continue 
                require idx
                stage = 7
                mem[288] = 'PoaLogger'
                s = 288
                t = 352
                idx = 9
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[352] = Mask(72, 0, 'PoaLogger') or Mask(184, 72, mem[352])
                s = 352
                t = 361
                idx = 9
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[361] = mem[375 len 9] or Mask(184, 72, mem[361])
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[361 len 9])
                require ext_call.success
                mem[433] = 7
                mem[429] = 0 or 0x2255480400000000000000000000000000000000000000000000000000000000
                idx = 0
                while idx < 36:
                    mem[idx + 465] = mem[idx + 429]
                    idx = idx + 32
                    continue 
                mem[497] = mem[525 len 4]
                call address(ext_call.return_data[0]).mem[465 len 4] with:
                     gas gas_remaining wei
                    args mem[469 len 60]
                require unclaimedPayoutTotals[stor3] + eth.balance(this.address) >= unclaimedPayoutTotals[stor3]
                unclaimedPayoutTotals[stor3] += eth.balance(this.address)
                paused = 0
                emit Unpause()
                return 1
            require idx
            stage = 7
            var50001 = 352
            var50002 = 361
            var50003 = 9
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(code.data[14734 len 9])
        else:
            if block.timestamp < sub_d8a3819b + sub_e531e946 + sub_2d0ab86d + sub_848f4925:
                require msg.sender == custodianAddress
                require stage <= 8
                require stage == 4
                require sub_394d8f49
                mem[96] = stor5
                idx = 96
                s = 5
                while 160 > idx + 32:
                    mem[idx + 32] = uint256(stor1[s])
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[160] = 64
                mem[64] = 256
                mem[192 len 2048] = code.data[14565 len 2048]
                mem[192] = stor5
                mem[224] = mem[128]
                idx = 0
                while idx < 64:
                    require idx < 64
                    if Mask(8, 248, mem[idx + 192]):
                        idx = idx + 1
                        continue 
                    require idx
                    stage = 7
                    mem[288] = 'PoaLogger'
                    s = 288
                    t = 352
                    idx = 9
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[352] = Mask(72, 0, 'PoaLogger') or Mask(184, 72, mem[352])
                    s = 352
                    t = 361
                    idx = 9
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[361] = mem[375 len 9] or Mask(184, 72, mem[361])
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[361 len 9])
                    require ext_call.success
                    mem[433] = 7
                    mem[429] = 0 or 0x2255480400000000000000000000000000000000000000000000000000000000
                    idx = 0
                    while idx < 36:
                        mem[idx + 465] = mem[idx + 429]
                        idx = idx + 32
                        continue 
                    mem[497] = mem[525 len 4]
                    call address(ext_call.return_data[0]).mem[465 len 4] with:
                         gas gas_remaining wei
                        args mem[469 len 60]
                    require unclaimedPayoutTotals[stor3] + eth.balance(this.address) >= unclaimedPayoutTotals[stor3]
                    unclaimedPayoutTotals[stor3] += eth.balance(this.address)
                    paused = 0
                    emit Unpause()
                    return 1
                require idx
                stage = 7
                var51001 = 352
                var51002 = 361
                var51003 = 9
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(code.data[14734 len 9])
            else:
                stage = 6
                mem[96] = 9
                mem[128] = 'PoaLogger'
                mem[192 len 0] = None
                mem[160] = 9
                mem[201 len 0] = None
                _172 = sha3(mem[201 len 9])
                mem[205] = sha3(mem[201 len 9])
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args _172
                mem[201] = ext_call.return_data[0]
                require ext_call.success
                mem[273] = 6
                mem[237] = 36
                mem[273 len 28] = 0
                mem[269 len 4] = 576014340
                mem[305 len 64] = 576014340, 0, 0, mem[305 len 28]
                mem[337] = mem[365 len 4]
                call address(ext_call.return_data[0]).mem[305 len 4] with:
                     gas gas_remaining wei
                    args mem[309 len 60]
                require msg.sender == custodianAddress
                require stage <= 8
                require stage == 4
                require sub_394d8f49
                mem[305] = stor5
                idx = 305
                s = 5
                while 369 > idx + 32:
                    mem[idx + 32] = uint256(stor1[s])
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[369] = 64
                mem[64] = 465
                mem[401 len 2048] = code.data[14565 len 2048]
                mem[401] = stor5
                mem[433] = mem[337]
                idx = 0
                while idx < 64:
                    require idx < 64
                    if Mask(8, 248, mem[idx + 401]):
                        idx = idx + 1
                        continue 
                    require idx
                    stage = 7
                    mem[497] = 'PoaLogger'
                    s = 497
                    t = 561
                    idx = 9
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[561] = Mask(72, 0, 'PoaLogger') or Mask(184, 72, mem[561])
                    s = 561
                    t = 570
                    idx = 9
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[570] = mem[584 len 9] or Mask(184, 72, mem[570])
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[570 len 9])
                    require ext_call.success
                    mem[642] = 7
                    mem[638] = 0 or 0x2255480400000000000000000000000000000000000000000000000000000000
                    idx = 0
                    while idx < 36:
                        mem[idx + 674] = mem[idx + 638]
                        idx = idx + 32
                        continue 
                    mem[706] = mem[734 len 4]
                    call address(ext_call.return_data[0]).mem[674 len 4] with:
                         gas gas_remaining wei
                        args mem[678 len 60]
                    require unclaimedPayoutTotals[stor3] + eth.balance(this.address) >= unclaimedPayoutTotals[stor3]
                    unclaimedPayoutTotals[stor3] += eth.balance(this.address)
                    paused = 0
                    emit Unpause()
                    return 1
                require idx
                stage = 7
                var70001 = 561
                var70002 = 570
                var70003 = 9
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(Mask(72, 112, code.data[14734 len 14]) >> 112)
        require ext_call.success
        call address(ext_call.return_data[0]) with:
           funct uint32(576014340, 0, 7)
             gas gas_remaining wei
            args code.data[14838 len 28], Mask(32, -256, code.data[14838 len 28]) << 256
    else:
        if block.timestamp >= sub_d8a3819b + sub_e531e946 + sub_2d0ab86d:
            stage = 6
            mem[96] = 9
            mem[128] = 'PoaLogger'
            mem[192 len 0] = None
            mem[160] = 9
            mem[201 len 0] = None
            _178 = sha3(mem[201 len 9])
            mem[205] = sha3(mem[201 len 9])
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args _178
            mem[201] = ext_call.return_data[0]
            require ext_call.success
            mem[273] = 6
            mem[237] = 36
            mem[273 len 28] = 0
            mem[269 len 4] = 576014340
            mem[305 len 64] = 576014340, 0, 0, mem[305 len 28]
            mem[337] = mem[365 len 4]
            call address(ext_call.return_data[0]).mem[305 len 4] with:
                 gas gas_remaining wei
                args mem[309 len 60]
            require msg.sender == custodianAddress
            require stage <= 8
            require stage == 4
            require sub_394d8f49
            mem[305] = stor5
            idx = 305
            s = 5
            while 369 > idx + 32:
                mem[idx + 32] = uint256(stor1[s])
                idx = idx + 32
                s = s + 1
                continue 
            mem[369] = 64
            mem[64] = 465
            mem[401 len 2048] = code.data[14565 len 2048]
            mem[401] = stor5
            mem[433] = mem[337]
            idx = 0
            while idx < 64:
                require idx < 64
                if Mask(8, 248, mem[idx + 401]):
                    idx = idx + 1
                    continue 
                require idx
                stage = 7
                mem[497] = 'PoaLogger'
                s = 497
                t = 561
                idx = 9
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[561] = Mask(72, 0, 'PoaLogger') or Mask(184, 72, mem[561])
                s = 561
                t = 570
                idx = 9
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[570] = mem[584 len 9] or Mask(184, 72, mem[570])
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[570 len 9])
                require ext_call.success
                mem[642] = 7
                mem[638] = 0 or 0x2255480400000000000000000000000000000000000000000000000000000000
                idx = 0
                while idx < 36:
                    mem[idx + 674] = mem[idx + 638]
                    idx = idx + 32
                    continue 
                mem[706] = mem[734 len 4]
                call address(ext_call.return_data[0]).mem[674 len 4] with:
                     gas gas_remaining wei
                    args mem[678 len 60]
                require unclaimedPayoutTotals[stor3] + eth.balance(this.address) >= unclaimedPayoutTotals[stor3]
                unclaimedPayoutTotals[stor3] += eth.balance(this.address)
                paused = 0
                emit Unpause()
                return 1
            require idx
            stage = 7
            var66001 = 561
            var66002 = 570
            var66003 = 9
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(code.data[14734 len 9])
            require ext_call.success
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args code.data[14838 len 28], Mask(32, -256, code.data[14838 len 28]) << 256
        else:
            require stage <= 8
            if stage != 4:
                require msg.sender == custodianAddress
                require stage <= 8
                require stage == 4
                require sub_394d8f49
                mem[96] = stor5
                idx = 96
                s = 5
                while 160 > idx + 32:
                    mem[idx + 32] = uint256(stor1[s])
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[160] = 64
                mem[64] = 256
                mem[192 len 2048] = code.data[14565 len 2048]
                mem[192] = stor5
                mem[224] = mem[128]
                idx = 0
                while idx < 64:
                    require idx < 64
                    if Mask(8, 248, mem[idx + 192]):
                        idx = idx + 1
                        continue 
                    require idx
                    stage = 7
                    mem[288] = 'PoaLogger'
                    s = 288
                    t = 352
                    idx = 9
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[352] = Mask(72, 0, 'PoaLogger') or Mask(184, 72, mem[352])
                    s = 352
                    t = 361
                    idx = 9
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[361] = mem[375 len 9] or Mask(184, 72, mem[361])
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[361 len 9])
                    require ext_call.success
                    mem[433] = 7
                    mem[429] = 0 or 0x2255480400000000000000000000000000000000000000000000000000000000
                    idx = 0
                    while idx < 36:
                        mem[idx + 465] = mem[idx + 429]
                        idx = idx + 32
                        continue 
                    mem[497] = mem[525 len 4]
                    call address(ext_call.return_data[0]).mem[465 len 4] with:
                         gas gas_remaining wei
                        args mem[469 len 60]
                    require unclaimedPayoutTotals[stor3] + eth.balance(this.address) >= unclaimedPayoutTotals[stor3]
                    unclaimedPayoutTotals[stor3] += eth.balance(this.address)
                    paused = 0
                    emit Unpause()
                    return 1
                require idx
                stage = 7
                var51001 = 352
                var51002 = 361
                var51003 = 9
            else:
                if block.timestamp < sub_d8a3819b + sub_e531e946 + sub_2d0ab86d + sub_848f4925:
                    require msg.sender == custodianAddress
                    require stage <= 8
                    require stage == 4
                    require sub_394d8f49
                    mem[96] = stor5
                    idx = 96
                    s = 5
                    while 160 > idx + 32:
                        mem[idx + 32] = uint256(stor1[s])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[160] = 64
                    mem[64] = 256
                    mem[192 len 2048] = code.data[14565 len 2048]
                    mem[192] = stor5
                    mem[224] = mem[128]
                    idx = 0
                    while idx < 64:
                        require idx < 64
                        if Mask(8, 248, mem[idx + 192]):
                            idx = idx + 1
                            continue 
                        require idx
                        stage = 7
                        mem[288] = 'PoaLogger'
                        s = 288
                        t = 352
                        idx = 9
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[352] = Mask(72, 0, 'PoaLogger') or Mask(184, 72, mem[352])
                        s = 352
                        t = 361
                        idx = 9
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[361] = mem[375 len 9] or Mask(184, 72, mem[361])
                        staticcall stor2 with:
                             funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                                gas gas_remaining wei
                               args sha3(mem[361 len 9])
                        require ext_call.success
                        mem[433] = 7
                        mem[429] = 0 or 0x2255480400000000000000000000000000000000000000000000000000000000
                        idx = 0
                        while idx < 36:
                            mem[idx + 465] = mem[idx + 429]
                            idx = idx + 32
                            continue 
                        mem[497] = mem[525 len 4]
                        call address(ext_call.return_data[0]).mem[465 len 4] with:
                             gas gas_remaining wei
                            args mem[469 len 60]
                        require unclaimedPayoutTotals[stor3] + eth.balance(this.address) >= unclaimedPayoutTotals[stor3]
                        unclaimedPayoutTotals[stor3] += eth.balance(this.address)
                        paused = 0
                        emit Unpause()
                        return 1
                    require idx
                    stage = 7
                    var52001 = 352
                    var52002 = 361
                    var52003 = 9
                else:
                    stage = 6
                    mem[96] = 9
                    mem[128] = 'PoaLogger'
                    mem[192 len 0] = None
                    mem[160] = 9
                    mem[201 len 0] = None
                    _186 = sha3(mem[201 len 9])
                    mem[205] = sha3(mem[201 len 9])
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args _186
                    mem[201] = ext_call.return_data[0]
                    require ext_call.success
                    mem[273] = 6
                    mem[237] = 36
                    mem[273 len 28] = 0
                    mem[269 len 4] = 576014340
                    mem[305 len 64] = 576014340, 0, 0, mem[305 len 28]
                    mem[337] = mem[365 len 4]
                    call address(ext_call.return_data[0]).mem[305 len 4] with:
                         gas gas_remaining wei
                        args mem[309 len 60]
                    require msg.sender == custodianAddress
                    require stage <= 8
                    require stage == 4
                    require sub_394d8f49
                    mem[305] = stor5
                    idx = 305
                    s = 5
                    while 369 > idx + 32:
                        mem[idx + 32] = uint256(stor1[s])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[369] = 64
                    mem[64] = 465
                    mem[401 len 2048] = code.data[14565 len 2048]
                    mem[401] = stor5
                    mem[433] = mem[337]
                    idx = 0
                    while idx < 64:
                        require idx < 64
                        if Mask(8, 248, mem[idx + 401]):
                            idx = idx + 1
                            continue 
                        require idx
                        stage = 7
                        mem[497] = 'PoaLogger'
                        s = 497
                        t = 561
                        idx = 9
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[561] = Mask(72, 0, 'PoaLogger') or Mask(184, 72, mem[561])
                        s = 561
                        t = 570
                        idx = 9
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[570] = mem[584 len 9] or Mask(184, 72, mem[570])
                        staticcall stor2 with:
                             funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                                gas gas_remaining wei
                               args sha3(mem[570 len 9])
                        require ext_call.success
                        mem[642] = 7
                        mem[638] = 0 or 0x2255480400000000000000000000000000000000000000000000000000000000
                        idx = 0
                        while idx < 36:
                            mem[idx + 674] = mem[idx + 638]
                            idx = idx + 32
                            continue 
                        mem[706] = mem[734 len 4]
                        call address(ext_call.return_data[0]).mem[674 len 4] with:
                             gas gas_remaining wei
                            args mem[678 len 60]
                        require unclaimedPayoutTotals[stor3] + eth.balance(this.address) >= unclaimedPayoutTotals[stor3]
                        unclaimedPayoutTotals[stor3] += eth.balance(this.address)
                        paused = 0
                        emit Unpause()
                        return 1
                    require idx
                    stage = 7
                    var71001 = 561
                    var71002 = 570
                    var71003 = 9
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(code.data[14734 len 9])
            require ext_call.success
            call address(ext_call.return_data[0]) with:
               funct uint32(576014340, 0, 7)
                 gas gas_remaining wei
                args code.data[14838 len 28], Mask(32, -256, code.data[14838 len 28]) << 256
    require unclaimedPayoutTotals[stor3] + eth.balance(this.address) >= unclaimedPayoutTotals[stor3]
    unclaimedPayoutTotals[stor3] += eth.balance(this.address)
    paused = 0
    emit Unpause()
    return 1
}



}
