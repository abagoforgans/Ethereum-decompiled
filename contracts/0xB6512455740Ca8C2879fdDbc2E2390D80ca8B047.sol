contract main {




// =====================  Runtime code  =====================


const sub_73c209aa(?) = 5

const sub_d1676089(?) = 10000

const sub_d5375bb0(?) = 30

const sub_e28897a1(?) = 18

const sub_f3bc843e(?) = 'governance'

const BASE_MULTIPLIER = 10^18


address resolverAddress;
array of uint256 sub_374382e3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor9;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
array of uint256 sub_26d94911;
address loanTokenAddress;
address debtTokenAddress;
address equityTokenAddress;
address sub_c0924b80Address;
address tokenManagerAddress;
address registryAddress;
address sub_9ff78c30Address;
address sub_85d1ed51Address;
address sub_47225692Address;
array of struct collateralTokens;
array of struct loans;
array of uint256 sub_24f34c0c;
array of uint256 sub_a35b0488;
mapping of uint8 stor99;
array of uint256 stor2481041784956016742021570618494952475758789857281704946240779902470294861374;

function resolver() {
    return resolverAddress
}

function loanToken() {
    return loanTokenAddress
}

function collateralTokens(uint256 arg1) {
    require arg1 < collateralTokens.length
    return address(collateralTokens[arg1].field_0)
}

function sub_24f34c0c(?) {
    require arg2 < sub_24f34c0c[arg1]
    return sub_24f34c0c[arg1][arg2]
}

function sub_26d94911(?) {
    require arg2 < sub_26d94911[arg1]
    return sub_26d94911[arg1][arg2]
}

function tokenManager() {
    return tokenManagerAddress
}

function sub_374382e3(?) {
    require arg1 < 14
    return sub_374382e3[arg1]
}

function sub_47225692(?) {
    return sub_47225692Address
}

function registry() {
    return registryAddress
}

function sub_85d1ed51(?) {
    return sub_85d1ed51Address
}

function sub_9ff78c30(?) {
    return sub_9ff78c30Address
}

function sub_a35b0488(?) {
    require arg2 < sub_a35b0488[arg1]
    return sub_a35b0488[arg1][arg2]
}

function sub_c0924b80(?) {
    return sub_c0924b80Address
}

function equityToken() {
    return equityTokenAddress
}

function loans(uint256 arg1) {
    require arg1 < loans.length
    return uint256(loans[arg1].field_0), 
           uint256(loans[arg1].field_256),
           uint256(loans[arg1].field_512),
           uint256(loans[arg1].field_768),
           address(loans[arg1].field_1024),
           address(loans[arg1].field_1280),
           uint256(loans[arg1].field_1536)
}

function debtToken() {
    return debtTokenAddress
}

function _fallback() payable {
    revert
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    require uint8(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    mem[ceil32(arg2.length) + 128] = bool(uint8(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]))
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_e8f0e1ca(?) payable {
    mem[704 len arg1.length] = arg1[all]
    if stor15:
        revert with 0, 'Function can not be called directly'
    sub_9ff78c30Address = address(call.data[4])
    _9 = mem[704]
    mem[ceil32(arg1.length) + 704] = mem[704]
    collateralTokens.length = _9
    idx = 0
    s = 0
    while idx < _9:
        mem[ceil32(arg1.length) + 756] = mem[(32 * s) + 756]
        mem[ceil32(arg1.length) + 768] = 0
        mem[ceil32(arg1.length) + 780] = mem[(32 * s) + 736]
        mem[ceil32(arg1.length) + 800] = 0
        mem[ceil32(arg1.length) + 1036] = mem[(32 * s) + 736]
        mem[ceil32(arg1.length) + 1068] = 0
        stor57C3[idx] = 0, mem[ceil32(arg1.length) + 780 len 20]
        mem[ceil32(arg1.length) + 800] = 28
        mem[ceil32(arg1.length) + 1056] = 29
        mem[ceil32(arg1.length) + 896] = sha3(0, mem[ceil32(arg1.length) + 780 len 20], 28)
        mem[ceil32(arg1.length) + 1152] = sha3(mem[ceil32(arg1.length) + 1024], 29)
        t = 0
        while t < mem[ceil32(arg1.length) + 736]:
            mem[ceil32(arg1.length) + 848] = mem[(32 * s) + (32 * t) + 768]
            mem[ceil32(arg1.length) + 864] = 0
            require mem[ceil32(arg1.length) + 832] >= 10000
            mem[ceil32(arg1.length) + 1104] = mem[(32 * s) + (32 * t) + 784]
            mem[ceil32(arg1.length) + 1120] = 0
            require 9999 >= 0, mem[ceil32(arg1.length) + 1100 len 20]
            uint256(stor[sha3(sha3(0, mem[ceil32(arg1.length) + 780 len 20], 28)) + t]) = mem[ceil32(arg1.length) + 832]
            sub_a35b0488[mem[ceil32(arg1.length) + 1024]][t] = 0, mem[ceil32(arg1.length) + 1100 len 20]
            t = t + 1
            continue 
        uint256(stor[sha3(0, mem[ceil32(arg1.length) + 780 len 20], 28)]) = mem[ceil32(arg1.length) + 736]
        sub_a35b0488[mem[ceil32(arg1.length) + 1024]] = mem[ceil32(arg1.length) + 736]
        idx = idx + 1
        s = mem[ceil32(arg1.length) + 736] + s + 1
        continue 
    if 0 >= collateralTokens.length:
        revert with 0, 'Collateral necessary for bank creation doesn't exist'
    idx = 0
    while idx < collateralTokens.length:
        mem[32] = 28
        if sub_24f34c0c[address(stor26[idx].field_0)] <= 0:
            revert with 0, 'Bank creation error. No LTV rate present for the collateral.'
        require idx < collateralTokens.length
        mem[0] = 26
        mem[ceil32(arg1.length) + 708] = address(collateralTokens[idx].field_0)
        require ext_code.size(sub_9ff78c30Address)
        call sub_9ff78c30Address.0xd63da297 with:
             gas gas_remaining wei
            args address(collateralTokens[idx].field_0)
        mem[ceil32(arg1.length) + 704] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    sub_c0924b80Address = call.data[48 len 20]
    tokenManagerAddress = call.data[80 len 20]
    sub_85d1ed51Address = call.data[112 len 20]
    sub_47225692Address = call.data[144 len 20]
    mem[ceil32(arg1.length) + 708 len 128] = call.data[452 len 128]
    require ext_code.size(sub_85d1ed51Address)
    call sub_85d1ed51Address.0x8f82d273 with:
         gas gas_remaining wei
        args call.data[452 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'date arguments are not valid'
    stor6 = call.data[452]
    stor12 = call.data[484]
    stor13 = call.data[516]
    stor14 = call.data[548]
    require ext_code.size(call.data[240 len 20])
    call call.data[240 len 20].validateToken(address arg1) with:
         gas gas_remaining wei
        args call.data[176 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not collateralTokens.length:
        require ext_code.size(call.data[240 len 20])
        call call.data[240 len 20].0xc8fe2c68 with:
             gas gas_remaining wei
            args 32, collateralTokens.length
    else:
        mem[ceil32(arg1.length) + 772] = address(collateralTokens.field_0)
        idx = ceil32(arg1.length) + 772
        s = 0
        while ceil32(arg1.length) + (32 * collateralTokens.length) + 772 > idx + 32:
            mem[idx + 32] = address(collateralTokens[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(address(call.data[228]))
        call address(call.data[228]).0xc8fe2c68 with:
             gas gas_remaining wei
            args Array(len=collateralTokens.length, data=mem[ceil32(arg1.length) + 772 len 32 * collateralTokens.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < call.data[260]
    require 10000 > call.data[260]
    require 10000 > call.data[324]
    require 10000 > call.data[420]
    require not stor11
    sub_374382e3.length = call.data[324]
    stor11 = 1
    stor7 = call.data[260]
    stor5 = call.data[420]
    loanTokenAddress = call.data[176 len 20]
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0x785c7cf6 with:
         gas gas_remaining wei
        args loanTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0x23c47015 with:
         gas gas_remaining wei
        args sub_9ff78c30Address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    debtTokenAddress = address(ext_call.return_data[0])
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0xad58295f with:
         gas gas_remaining wei
        args sub_9ff78c30Address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    equityTokenAddress = address(ext_call.return_data[0])
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0x17bfdd57 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not call.data[356]:
        require 0 <= call.data[388]
    else:
        require sub_374382e3.length * call.data[356] / call.data[356] == sub_374382e3.length
        require sub_374382e3.length * call.data[356] / 10000 <= call.data[388]
    if loanTokenAddress == address(ext_call.return_data[0]):
        require call.data[356] >= call.data[292]
        require call.data[388] + call.data[356] >= call.data[356]
        require call.data[388] + call.data[356] == msg.value
        call sub_47225692Address with:
           value call.data[388] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require call.data[356] + stor9 >= stor9
        stor9 += call.data[356]
        require ext_code.size(equityTokenAddress)
        call equityTokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args call.data[208 len 20], call.data[356]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_9ff78c30Address)
        call sub_9ff78c30Address.0x4215caf3 with:
             gas gas_remaining wei
            args call.data[208 len 20], call.data[356]
    else:
        if msg.value:
            revert with 0, 'Please do not send ETH in that scenario'
        require ext_code.size(sub_c0924b80Address)
        call sub_c0924b80Address.0x6b441d8a with:
             gas gas_remaining wei
            args loanTokenAddress, address(ext_call.return_data[0]), call.data[356]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require 0 >= call.data[292]
        else:
            require call.data[356] * ext_call.return_data[0] / ext_call.return_data[0] == call.data[356]
            require call.data[356] * ext_call.return_data[0] / 10^18 >= call.data[292]
        require call.data[388] + call.data[356] >= call.data[356]
        require ext_code.size(tokenManagerAddress)
        call tokenManagerAddress.0xe53719cf with:
             gas gas_remaining wei
            args address(call.data[196]), loanTokenAddress, call.data[388] + call.data[356]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(tokenManagerAddress)
        call tokenManagerAddress.0x35163b43 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(ext_call.return_data[0])
        mem[ceil32(arg1.length) + 836 len 128] = 0, loanTokenAddress, sub_47225692Address, call.data[388], mem[ceil32(arg1.length) + 836 len 28]
        mem[ceil32(arg1.length) + 932] = mem[ceil32(arg1.length) + 960 len 4]
        delegate address(ext_call.return_data[0]).mem[ceil32(arg1.length) + 836 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg1.length) + 840 len 124]
        if not delegate.return_code:
            revert with 0, 'safeTransfer() failed.'
        require call.data[356] + stor9 >= stor9
        stor9 += call.data[356]
        require ext_code.size(equityTokenAddress)
        call equityTokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(call.data[196]), call.data[356]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_9ff78c30Address)
        call sub_9ff78c30Address.0x4215caf3 with:
             gas gas_remaining wei
            args address(call.data[196]), call.data[356]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}



}
