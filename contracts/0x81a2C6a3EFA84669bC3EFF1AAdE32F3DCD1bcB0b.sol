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
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor12;
uint256 stor13;
array of uint256 sub_26d94911;
uint32 stor17;
address loanTokenAddress;
uint256 stor17;
address debtTokenAddress;
address equityTokenAddress;
address sub_c0924b80Address;
address tokenManagerAddress;
address registryAddress;
address sub_9ff78c30Address;
address sub_85d1ed51Address;
address sub_47225692Address;
array of address collateralTokens;
array of struct loans;
array of uint256 sub_24f34c0c;
array of uint256 sub_a35b0488;
mapping of uint8 stor99;

function resolver() {
    return resolverAddress
}

function loanToken() {
    return address(loanTokenAddress)
}

function collateralTokens(uint256 arg1) {
    require arg1 < collateralTokens.length
    return collateralTokens[arg1]
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
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_a0672e80(?) payable {
    require block.timestamp < stor12
    require block.timestamp < stor6
    require arg1 > 0
    require arg2 > 0
    if not arg1:
        require 0 <= arg2
    else:
        require sub_374382e3.length * arg1 / arg1 == sub_374382e3.length
        require sub_374382e3.length * arg1 / 10000 <= arg2
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0x17bfdd57 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == address(loanTokenAddress):
        require arg2 + arg1 >= arg1
        require arg2 + arg1 == msg.value
        call sub_47225692Address with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please do not send ETH in that scenario'
        require arg2 + arg1 >= arg1
        require ext_code.size(tokenManagerAddress)
        call tokenManagerAddress.0xe53719cf with:
             gas gas_remaining wei
            args msg.sender, address(loanTokenAddress), arg2 + arg1
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
        mem[228 len 128] = unknown_0xd1660f99(?????), Mask(224, 0, stor17), uint32(stor17), sub_47225692Address, arg2, mem[228 len 28]
        mem[324] = mem[352 len 4]
        delegate address(ext_call.return_data[0]).mem[228 len 4] with:
             gas gas_remaining wei
            args mem[232 len 124]
        if not delegate.return_code:
            revert with 0, 'safeTransfer() failed.'
    require ext_code.size(equityTokenAddress)
    call equityTokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9ff78c30Address)
    call sub_9ff78c30Address.0x4215caf3 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1 + stor9 >= stor9
    stor9 += arg1
    return 1
}

function sub_a4720e3e(?) payable {
    mem[64] = 96
    require block.timestamp < stor13
    require block.timestamp < stor6
    require arg1 > 0
    require arg2 > 0
    if not arg1:
        require 0 <= arg2
        require ext_code.size(tokenManagerAddress)
        call tokenManagerAddress.0x17bfdd57 with:
             gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == address(loanTokenAddress):
            require arg2 + arg1 >= arg1
            require arg2 + arg1 == msg.value
            call sub_47225692Address with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require stor7
            require block.timestamp <= stor6
            s = 0
            s = 0
            s = 0
            idx = 0
            while idx < 18:
                _80 = mem[64]
                mem[64] = mem[64] + 192
                mem[_80 len 192] = code.data[4868 len 192]
                if idx:
                    if idx != 1:
                        _92 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_92] = (10000 / stor7)^idx
                        mem[_92 + 32] = 365^idx
                        s = 1
                        while s <= idx:
                            require s == s
                            s = s + 1
                            continue 
                        mem[_92 + 64] = 1
                        if (10000 / stor7)^idx:
                            require (10000 / stor7)^idx / (10000 / stor7)^idx == 1
                            if (10000 / stor7)^idx:
                                require 365^idx * (10000 / stor7)^idx / (10000 / stor7)^idx == 365^idx
                                mem[_92 + 96] = 365^idx * (10000 / stor7)^idx
                                require 1 <= idx
                                if not bool(idx - 1):
                                    mem[_92 + 128] = 1
                                    mem[_92 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_92 + 160]:
                                                require (-365 * mem[_92 + 160]) + (365 * s * mem[_92 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160]) / mem[_92 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_92 + 160] = (-365 * mem[_92 + 160]) + (365 * s * mem[_92 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_92 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_92 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160] / mem[_92 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_92 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_92 + 160] = 0
                                                s = s + 1
                                                continue 
                                    if arg1:
                                        require mem[_92 + 160] * arg1 / arg1 == mem[_92 + 160]
                                        require 365^idx * (10000 / stor7)^idx
                                        require mem[_92 + 160] * arg1 / 365^idx * (10000 / stor7)^idx >= 0
                                        s = 1
                                        s = 365^idx * (10000 / stor7)^idx
                                        s = mem[_92 + 160]
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 365^idx * (10000 / stor7)^idx
                                        require 0 / 365^idx * (10000 / stor7)^idx >= 0
                                        s = 1
                                        s = 365^idx * (10000 / stor7)^idx
                                        s = mem[_92 + 160]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_92 + 128] = 0
                                    mem[_92 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_92 + 160]:
                                                require (-365 * mem[_92 + 160]) + (365 * s * mem[_92 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160]) / mem[_92 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_92 + 160] = (-365 * mem[_92 + 160]) + (365 * s * mem[_92 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_92 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_92 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160] / mem[_92 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_92 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_92 + 160] = 0
                                                s = s + 1
                                                continue 
                                    if arg1:
                                        require mem[_92 + 160] * arg1 / arg1 == mem[_92 + 160]
                                        require 365^idx * (10000 / stor7)^idx
                                        require mem[_92 + 160] * arg1 / 365^idx * (10000 / stor7)^idx <= 0
                                        s = 0
                                        s = 365^idx * (10000 / stor7)^idx
                                        s = mem[_92 + 160]
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 365^idx * (10000 / stor7)^idx
                                        require 0 / 365^idx * (10000 / stor7)^idx <= 0
                                        s = 0
                                        s = 365^idx * (10000 / stor7)^idx
                                        s = mem[_92 + 160]
                                        idx = idx + 1
                                        continue 
                            else:
                                require 1 <= idx
                                if not bool(idx - 1):
                                    mem[_92 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_92 + 160]:
                                                require (-365 * mem[_92 + 160]) + (365 * s * mem[_92 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160]) / mem[_92 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_92 + 160] = (-365 * mem[_92 + 160]) + (365 * s * mem[_92 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_92 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_92 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160] / mem[_92 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_92 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_92 + 160] = 0
                                                s = s + 1
                                                continue 
                                    require arg1
                                    require mem[_92 + 160] * arg1 / arg1 == mem[_92 + 160]
                                    revert
                                else:
                                    mem[_92 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_92 + 160]:
                                                require (-365 * mem[_92 + 160]) + (365 * s * mem[_92 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160]) / mem[_92 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_92 + 160] = (-365 * mem[_92 + 160]) + (365 * s * mem[_92 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_92 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_92 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160] / mem[_92 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_92 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_92 + 160] = 0
                                                s = s + 1
                                                continue 
                                    require arg1
                                    require mem[_92 + 160] * arg1 / arg1 == mem[_92 + 160]
                                    revert
                        else:
                            require 1 <= idx
                            if not bool(idx - 1):
                                mem[_92 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_92 + 160]:
                                            require (-365 * mem[_92 + 160]) + (365 * s * mem[_92 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160]) / mem[_92 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_92 + 160] = (-365 * mem[_92 + 160]) + (365 * s * mem[_92 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_92 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_92 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160] / mem[_92 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_92 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_92 + 160] = 0
                                            s = s + 1
                                            continue 
                                require arg1
                                require mem[_92 + 160] * arg1 / arg1 == mem[_92 + 160]
                                revert
                            else:
                                mem[_92 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_92 + 160]:
                                            require (-365 * mem[_92 + 160]) + (365 * s * mem[_92 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160]) / mem[_92 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_92 + 160] = (-365 * mem[_92 + 160]) + (365 * s * mem[_92 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_92 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_92 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160] / mem[_92 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_92 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_92 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_92 + 160] = 0
                                            s = s + 1
                                            continue 
                                require arg1
                                require mem[_92 + 160] * arg1 / arg1 == mem[_92 + 160]
                                revert
                    else:
                        if 10000 / stor7:
                            require 365 * 10000 / stor7 / 10000 / stor7 == 365
                            if arg1:
                                require stor6 - block.timestamp / 24 * 3600 * arg1 / arg1 == stor6 - block.timestamp / 24 * 3600
                                require 365 * 10000 / stor7
                                require stor6 - block.timestamp / 24 * 3600 * arg1 / 365 * 10000 / stor7 >= 0
                                s = 1
                                s = 365 * 10000 / stor7
                                s = stor6 - block.timestamp / 24 * 3600
                                idx = idx + 1
                                continue 
                            else:
                                require 365 * 10000 / stor7
                                require 0 / 365 * 10000 / stor7 >= 0
                                s = 1
                                s = 365 * 10000 / stor7
                                s = stor6 - block.timestamp / 24 * 3600
                                idx = idx + 1
                                continue 
                        else:
                            require arg1
                            require stor6 - block.timestamp / 24 * 3600 * arg1 / arg1 == stor6 - block.timestamp / 24 * 3600
                            revert
                else:
                    if arg1:
                        require arg1 / arg1 == 1
                        require arg1 >= 0
                        s = 1
                        s = 1
                        s = 1
                        idx = idx + 1
                        continue 
                    else:
                        s = 1
                        s = 1
                        s = 1
                        idx = idx + 1
                        continue 
        else:
            if msg.value:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please do not send ETH in that scenario'
            require arg2 + arg1 >= arg1
            require ext_code.size(tokenManagerAddress)
            call tokenManagerAddress.0xe53719cf with:
                 gas gas_remaining wei
                args msg.sender, address(loanTokenAddress), arg2 + arg1
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
            mem[132] = address(loanTokenAddress)
            mem[164] = sub_47225692Address
            mem[196] = arg2
            mem[96] = 100
            mem[64] = 228
            mem[132 len 28] = Mask(224, 0, stor17)
            mem[128 len 4] = unknown_0xd1660f99(?????)
            mem[228 len 128] = unknown_0xd1660f99(?????), Mask(224, 0, stor17), uint32(stor17), sub_47225692Address, arg2, mem[228 len 28]
            mem[324] = mem[352 len 4]
            delegate address(ext_call.return_data[0]).mem[228 len 4] with:
                 gas gas_remaining wei
                args mem[232 len 124]
            if not delegate.return_code:
                revert with 0, 'safeTransfer() failed.'
            require stor7
            require block.timestamp <= stor6
            s = 0
            s = 0
            s = 0
            idx = 0
            while idx < 18:
                _175 = mem[64]
                mem[64] = mem[64] + 192
                mem[_175 len 192] = code.data[4868 len 192]
                if idx:
                    if idx != 1:
                        _192 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_192] = (10000 / stor7)^idx
                        mem[_192 + 32] = 365^idx
                        s = 1
                        while s <= idx:
                            require s == s
                            s = s + 1
                            continue 
                        mem[_192 + 64] = 1
                        if (10000 / stor7)^idx:
                            require (10000 / stor7)^idx / (10000 / stor7)^idx == 1
                            if (10000 / stor7)^idx:
                                require 365^idx * (10000 / stor7)^idx / (10000 / stor7)^idx == 365^idx
                                mem[_192 + 96] = 365^idx * (10000 / stor7)^idx
                                require 1 <= idx
                                if not bool(idx - 1):
                                    mem[_192 + 128] = 1
                                    mem[_192 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_192 + 160]:
                                                require (-365 * mem[_192 + 160]) + (365 * s * mem[_192 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160]) / mem[_192 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_192 + 160] = (-365 * mem[_192 + 160]) + (365 * s * mem[_192 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_192 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_192 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160] / mem[_192 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_192 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_192 + 160] = 0
                                                s = s + 1
                                                continue 
                                    if arg1:
                                        require mem[_192 + 160] * arg1 / arg1 == mem[_192 + 160]
                                        require 365^idx * (10000 / stor7)^idx
                                        require mem[_192 + 160] * arg1 / 365^idx * (10000 / stor7)^idx >= 0
                                        s = 1
                                        s = 365^idx * (10000 / stor7)^idx
                                        s = mem[_192 + 160]
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 365^idx * (10000 / stor7)^idx
                                        require 0 / 365^idx * (10000 / stor7)^idx >= 0
                                        s = 1
                                        s = 365^idx * (10000 / stor7)^idx
                                        s = mem[_192 + 160]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_192 + 128] = 0
                                    mem[_192 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_192 + 160]:
                                                require (-365 * mem[_192 + 160]) + (365 * s * mem[_192 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160]) / mem[_192 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_192 + 160] = (-365 * mem[_192 + 160]) + (365 * s * mem[_192 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_192 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_192 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160] / mem[_192 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_192 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_192 + 160] = 0
                                                s = s + 1
                                                continue 
                                    if arg1:
                                        require mem[_192 + 160] * arg1 / arg1 == mem[_192 + 160]
                                        require 365^idx * (10000 / stor7)^idx
                                        require mem[_192 + 160] * arg1 / 365^idx * (10000 / stor7)^idx <= 0
                                        s = 0
                                        s = 365^idx * (10000 / stor7)^idx
                                        s = mem[_192 + 160]
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 365^idx * (10000 / stor7)^idx
                                        require 0 / 365^idx * (10000 / stor7)^idx <= 0
                                        s = 0
                                        s = 365^idx * (10000 / stor7)^idx
                                        s = mem[_192 + 160]
                                        idx = idx + 1
                                        continue 
                            else:
                                require 1 <= idx
                                if not bool(idx - 1):
                                    mem[_192 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_192 + 160]:
                                                require (-365 * mem[_192 + 160]) + (365 * s * mem[_192 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160]) / mem[_192 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_192 + 160] = (-365 * mem[_192 + 160]) + (365 * s * mem[_192 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_192 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_192 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160] / mem[_192 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_192 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_192 + 160] = 0
                                                s = s + 1
                                                continue 
                                    require arg1
                                    require mem[_192 + 160] * arg1 / arg1 == mem[_192 + 160]
                                    revert
                                else:
                                    mem[_192 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_192 + 160]:
                                                require (-365 * mem[_192 + 160]) + (365 * s * mem[_192 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160]) / mem[_192 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_192 + 160] = (-365 * mem[_192 + 160]) + (365 * s * mem[_192 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_192 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_192 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160] / mem[_192 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_192 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_192 + 160] = 0
                                                s = s + 1
                                                continue 
                                    require arg1
                                    require mem[_192 + 160] * arg1 / arg1 == mem[_192 + 160]
                                    revert
                        else:
                            require 1 <= idx
                            if not bool(idx - 1):
                                mem[_192 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_192 + 160]:
                                            require (-365 * mem[_192 + 160]) + (365 * s * mem[_192 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160]) / mem[_192 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_192 + 160] = (-365 * mem[_192 + 160]) + (365 * s * mem[_192 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_192 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_192 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160] / mem[_192 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_192 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_192 + 160] = 0
                                            s = s + 1
                                            continue 
                                require arg1
                                require mem[_192 + 160] * arg1 / arg1 == mem[_192 + 160]
                                revert
                            else:
                                mem[_192 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_192 + 160]:
                                            require (-365 * mem[_192 + 160]) + (365 * s * mem[_192 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160]) / mem[_192 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_192 + 160] = (-365 * mem[_192 + 160]) + (365 * s * mem[_192 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_192 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_192 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160] / mem[_192 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_192 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_192 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_192 + 160] = 0
                                            s = s + 1
                                            continue 
                                require arg1
                                require mem[_192 + 160] * arg1 / arg1 == mem[_192 + 160]
                                revert
                    else:
                        if 10000 / stor7:
                            require 365 * 10000 / stor7 / 10000 / stor7 == 365
                            if arg1:
                                require stor6 - block.timestamp / 24 * 3600 * arg1 / arg1 == stor6 - block.timestamp / 24 * 3600
                                require 365 * 10000 / stor7
                                require stor6 - block.timestamp / 24 * 3600 * arg1 / 365 * 10000 / stor7 >= 0
                                s = 1
                                s = 365 * 10000 / stor7
                                s = stor6 - block.timestamp / 24 * 3600
                                idx = idx + 1
                                continue 
                            else:
                                require 365 * 10000 / stor7
                                require 0 / 365 * 10000 / stor7 >= 0
                                s = 1
                                s = 365 * 10000 / stor7
                                s = stor6 - block.timestamp / 24 * 3600
                                idx = idx + 1
                                continue 
                        else:
                            require arg1
                            require stor6 - block.timestamp / 24 * 3600 * arg1 / arg1 == stor6 - block.timestamp / 24 * 3600
                            revert
                else:
                    if arg1:
                        require arg1 / arg1 == 1
                        require arg1 >= 0
                        s = 1
                        s = 1
                        s = 1
                        idx = idx + 1
                        continue 
                    else:
                        s = 1
                        s = 1
                        s = 1
                        idx = idx + 1
                        continue 
    else:
        require sub_374382e3.length * arg1 / arg1 == sub_374382e3.length
        require sub_374382e3.length * arg1 / 10000 <= arg2
        require ext_code.size(tokenManagerAddress)
        call tokenManagerAddress.0x17bfdd57 with:
             gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == address(loanTokenAddress):
            require arg2 + arg1 >= arg1
            require arg2 + arg1 == msg.value
            call sub_47225692Address with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require stor7
            require block.timestamp <= stor6
            s = 0
            s = 0
            s = 0
            idx = 0
            while idx < 18:
                _74 = mem[64]
                mem[64] = mem[64] + 192
                mem[_74 len 192] = code.data[4868 len 192]
                if idx:
                    if idx != 1:
                        _89 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_89] = (10000 / stor7)^idx
                        mem[_89 + 32] = 365^idx
                        s = 1
                        while s <= idx:
                            require s == s
                            s = s + 1
                            continue 
                        mem[_89 + 64] = 1
                        if (10000 / stor7)^idx:
                            require (10000 / stor7)^idx / (10000 / stor7)^idx == 1
                            if (10000 / stor7)^idx:
                                require 365^idx * (10000 / stor7)^idx / (10000 / stor7)^idx == 365^idx
                                mem[_89 + 96] = 365^idx * (10000 / stor7)^idx
                                require 1 <= idx
                                if not bool(idx - 1):
                                    mem[_89 + 128] = 1
                                    mem[_89 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_89 + 160]:
                                                require (-365 * mem[_89 + 160]) + (365 * s * mem[_89 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160]) / mem[_89 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_89 + 160] = (-365 * mem[_89 + 160]) + (365 * s * mem[_89 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_89 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_89 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160] / mem[_89 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_89 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_89 + 160] = 0
                                                s = s + 1
                                                continue 
                                    if arg1:
                                        require mem[_89 + 160] * arg1 / arg1 == mem[_89 + 160]
                                        require 365^idx * (10000 / stor7)^idx
                                        require mem[_89 + 160] * arg1 / 365^idx * (10000 / stor7)^idx >= 0
                                        s = 1
                                        s = 365^idx * (10000 / stor7)^idx
                                        s = mem[_89 + 160]
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 365^idx * (10000 / stor7)^idx
                                        require 0 / 365^idx * (10000 / stor7)^idx >= 0
                                        s = 1
                                        s = 365^idx * (10000 / stor7)^idx
                                        s = mem[_89 + 160]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_89 + 128] = 0
                                    mem[_89 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_89 + 160]:
                                                require (-365 * mem[_89 + 160]) + (365 * s * mem[_89 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160]) / mem[_89 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_89 + 160] = (-365 * mem[_89 + 160]) + (365 * s * mem[_89 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_89 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_89 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160] / mem[_89 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_89 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_89 + 160] = 0
                                                s = s + 1
                                                continue 
                                    if arg1:
                                        require mem[_89 + 160] * arg1 / arg1 == mem[_89 + 160]
                                        require 365^idx * (10000 / stor7)^idx
                                        require mem[_89 + 160] * arg1 / 365^idx * (10000 / stor7)^idx <= 0
                                        s = 0
                                        s = 365^idx * (10000 / stor7)^idx
                                        s = mem[_89 + 160]
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 365^idx * (10000 / stor7)^idx
                                        require 0 / 365^idx * (10000 / stor7)^idx <= 0
                                        s = 0
                                        s = 365^idx * (10000 / stor7)^idx
                                        s = mem[_89 + 160]
                                        idx = idx + 1
                                        continue 
                            else:
                                require 1 <= idx
                                if not bool(idx - 1):
                                    mem[_89 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_89 + 160]:
                                                require (-365 * mem[_89 + 160]) + (365 * s * mem[_89 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160]) / mem[_89 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_89 + 160] = (-365 * mem[_89 + 160]) + (365 * s * mem[_89 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_89 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_89 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160] / mem[_89 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_89 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_89 + 160] = 0
                                                s = s + 1
                                                continue 
                                    require arg1
                                    require mem[_89 + 160] * arg1 / arg1 == mem[_89 + 160]
                                    revert
                                else:
                                    mem[_89 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_89 + 160]:
                                                require (-365 * mem[_89 + 160]) + (365 * s * mem[_89 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160]) / mem[_89 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_89 + 160] = (-365 * mem[_89 + 160]) + (365 * s * mem[_89 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_89 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_89 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160] / mem[_89 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_89 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_89 + 160] = 0
                                                s = s + 1
                                                continue 
                                    require arg1
                                    require mem[_89 + 160] * arg1 / arg1 == mem[_89 + 160]
                                    revert
                        else:
                            require 1 <= idx
                            if not bool(idx - 1):
                                mem[_89 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_89 + 160]:
                                            require (-365 * mem[_89 + 160]) + (365 * s * mem[_89 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160]) / mem[_89 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_89 + 160] = (-365 * mem[_89 + 160]) + (365 * s * mem[_89 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_89 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_89 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160] / mem[_89 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_89 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_89 + 160] = 0
                                            s = s + 1
                                            continue 
                                require arg1
                                require mem[_89 + 160] * arg1 / arg1 == mem[_89 + 160]
                                revert
                            else:
                                mem[_89 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_89 + 160]:
                                            require (-365 * mem[_89 + 160]) + (365 * s * mem[_89 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160]) / mem[_89 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_89 + 160] = (-365 * mem[_89 + 160]) + (365 * s * mem[_89 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_89 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_89 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160] / mem[_89 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_89 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_89 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_89 + 160] = 0
                                            s = s + 1
                                            continue 
                                require arg1
                                require mem[_89 + 160] * arg1 / arg1 == mem[_89 + 160]
                                revert
                    else:
                        if 10000 / stor7:
                            require 365 * 10000 / stor7 / 10000 / stor7 == 365
                            if arg1:
                                require stor6 - block.timestamp / 24 * 3600 * arg1 / arg1 == stor6 - block.timestamp / 24 * 3600
                                require 365 * 10000 / stor7
                                require stor6 - block.timestamp / 24 * 3600 * arg1 / 365 * 10000 / stor7 >= 0
                                s = 1
                                s = 365 * 10000 / stor7
                                s = stor6 - block.timestamp / 24 * 3600
                                idx = idx + 1
                                continue 
                            else:
                                require 365 * 10000 / stor7
                                require 0 / 365 * 10000 / stor7 >= 0
                                s = 1
                                s = 365 * 10000 / stor7
                                s = stor6 - block.timestamp / 24 * 3600
                                idx = idx + 1
                                continue 
                        else:
                            require arg1
                            require stor6 - block.timestamp / 24 * 3600 * arg1 / arg1 == stor6 - block.timestamp / 24 * 3600
                            revert
                else:
                    if arg1:
                        require arg1 / arg1 == 1
                        require arg1 >= 0
                        s = 1
                        s = 1
                        s = 1
                        idx = idx + 1
                        continue 
                    else:
                        s = 1
                        s = 1
                        s = 1
                        idx = idx + 1
                        continue 
        else:
            if msg.value:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please do not send ETH in that scenario'
            require arg2 + arg1 >= arg1
            require ext_code.size(tokenManagerAddress)
            call tokenManagerAddress.0xe53719cf with:
                 gas gas_remaining wei
                args msg.sender, address(loanTokenAddress), arg2 + arg1
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
            mem[132] = address(loanTokenAddress)
            mem[164] = sub_47225692Address
            mem[196] = arg2
            mem[96] = 100
            mem[64] = 228
            mem[132 len 28] = Mask(224, 0, stor17)
            mem[128 len 4] = unknown_0xd1660f99(?????)
            mem[228 len 128] = unknown_0xd1660f99(?????), Mask(224, 0, stor17), uint32(stor17), sub_47225692Address, arg2, mem[228 len 28]
            mem[324] = mem[352 len 4]
            delegate address(ext_call.return_data[0]).mem[228 len 4] with:
                 gas gas_remaining wei
                args mem[232 len 124]
            if not delegate.return_code:
                revert with 0, 'safeTransfer() failed.'
            require stor7
            require block.timestamp <= stor6
            s = 0
            s = 0
            s = 0
            idx = 0
            while idx < 18:
                _168 = mem[64]
                mem[64] = mem[64] + 192
                mem[_168 len 192] = code.data[4868 len 192]
                if idx:
                    if idx != 1:
                        _186 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_186] = (10000 / stor7)^idx
                        mem[_186 + 32] = 365^idx
                        s = 1
                        while s <= idx:
                            require s == s
                            s = s + 1
                            continue 
                        mem[_186 + 64] = 1
                        if (10000 / stor7)^idx:
                            require (10000 / stor7)^idx / (10000 / stor7)^idx == 1
                            if (10000 / stor7)^idx:
                                require 365^idx * (10000 / stor7)^idx / (10000 / stor7)^idx == 365^idx
                                mem[_186 + 96] = 365^idx * (10000 / stor7)^idx
                                require 1 <= idx
                                if not bool(idx - 1):
                                    mem[_186 + 128] = 1
                                    mem[_186 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_186 + 160]:
                                                require (-365 * mem[_186 + 160]) + (365 * s * mem[_186 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160]) / mem[_186 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_186 + 160] = (-365 * mem[_186 + 160]) + (365 * s * mem[_186 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_186 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_186 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160] / mem[_186 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_186 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_186 + 160] = 0
                                                s = s + 1
                                                continue 
                                    if arg1:
                                        require mem[_186 + 160] * arg1 / arg1 == mem[_186 + 160]
                                        require 365^idx * (10000 / stor7)^idx
                                        require mem[_186 + 160] * arg1 / 365^idx * (10000 / stor7)^idx >= 0
                                        s = 1
                                        s = 365^idx * (10000 / stor7)^idx
                                        s = mem[_186 + 160]
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 365^idx * (10000 / stor7)^idx
                                        require 0 / 365^idx * (10000 / stor7)^idx >= 0
                                        s = 1
                                        s = 365^idx * (10000 / stor7)^idx
                                        s = mem[_186 + 160]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_186 + 128] = 0
                                    mem[_186 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_186 + 160]:
                                                require (-365 * mem[_186 + 160]) + (365 * s * mem[_186 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160]) / mem[_186 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_186 + 160] = (-365 * mem[_186 + 160]) + (365 * s * mem[_186 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_186 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_186 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160] / mem[_186 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_186 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_186 + 160] = 0
                                                s = s + 1
                                                continue 
                                    if arg1:
                                        require mem[_186 + 160] * arg1 / arg1 == mem[_186 + 160]
                                        require 365^idx * (10000 / stor7)^idx
                                        require mem[_186 + 160] * arg1 / 365^idx * (10000 / stor7)^idx <= 0
                                        s = 0
                                        s = 365^idx * (10000 / stor7)^idx
                                        s = mem[_186 + 160]
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require 365^idx * (10000 / stor7)^idx
                                        require 0 / 365^idx * (10000 / stor7)^idx <= 0
                                        s = 0
                                        s = 365^idx * (10000 / stor7)^idx
                                        s = mem[_186 + 160]
                                        idx = idx + 1
                                        continue 
                            else:
                                require 1 <= idx
                                if not bool(idx - 1):
                                    mem[_186 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_186 + 160]:
                                                require (-365 * mem[_186 + 160]) + (365 * s * mem[_186 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160]) / mem[_186 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_186 + 160] = (-365 * mem[_186 + 160]) + (365 * s * mem[_186 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_186 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_186 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160] / mem[_186 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_186 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_186 + 160] = 0
                                                s = s + 1
                                                continue 
                                    require arg1
                                    require mem[_186 + 160] * arg1 / arg1 == mem[_186 + 160]
                                    revert
                                else:
                                    mem[_186 + 160] = stor6 - block.timestamp / 24 * 3600
                                    s = 2
                                    while s <= idx:
                                        require 1 <= s
                                        if s - 1:
                                            require (365 * s) - 365 / s - 1 == 365
                                            require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                            if mem[_186 + 160]:
                                                require (-365 * mem[_186 + 160]) + (365 * s * mem[_186 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160]) / mem[_186 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                                mem[_186 + 160] = (-365 * mem[_186 + 160]) + (365 * s * mem[_186 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160])
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_186 + 160] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            require stor6 - block.timestamp / 24 * 3600 <= 0
                                            if mem[_186 + 160]:
                                                require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160] / mem[_186 + 160] == -stor6 - block.timestamp / 24 * 3600
                                                mem[_186 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160]
                                                s = s + 1
                                                continue 
                                            else:
                                                mem[_186 + 160] = 0
                                                s = s + 1
                                                continue 
                                    require arg1
                                    require mem[_186 + 160] * arg1 / arg1 == mem[_186 + 160]
                                    revert
                        else:
                            require 1 <= idx
                            if not bool(idx - 1):
                                mem[_186 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_186 + 160]:
                                            require (-365 * mem[_186 + 160]) + (365 * s * mem[_186 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160]) / mem[_186 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_186 + 160] = (-365 * mem[_186 + 160]) + (365 * s * mem[_186 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_186 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_186 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160] / mem[_186 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_186 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_186 + 160] = 0
                                            s = s + 1
                                            continue 
                                require arg1
                                require mem[_186 + 160] * arg1 / arg1 == mem[_186 + 160]
                                revert
                            else:
                                mem[_186 + 160] = stor6 - block.timestamp / 24 * 3600
                                s = 2
                                while s <= idx:
                                    require 1 <= s
                                    if s - 1:
                                        require (365 * s) - 365 / s - 1 == 365
                                        require stor6 - block.timestamp / 24 * 3600 <= (365 * s) - 365
                                        if mem[_186 + 160]:
                                            require (-365 * mem[_186 + 160]) + (365 * s * mem[_186 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160]) / mem[_186 + 160] == (365 * s) + -(stor6 - block.timestamp / 24 * 3600) - 365
                                            mem[_186 + 160] = (-365 * mem[_186 + 160]) + (365 * s * mem[_186 + 160]) - (stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160])
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_186 + 160] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor6 - block.timestamp / 24 * 3600 <= 0
                                        if mem[_186 + 160]:
                                            require -1 * stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160] / mem[_186 + 160] == -stor6 - block.timestamp / 24 * 3600
                                            mem[_186 + 160] = -1 * stor6 - block.timestamp / 24 * 3600 * mem[_186 + 160]
                                            s = s + 1
                                            continue 
                                        else:
                                            mem[_186 + 160] = 0
                                            s = s + 1
                                            continue 
                                require arg1
                                require mem[_186 + 160] * arg1 / arg1 == mem[_186 + 160]
                                revert
                    else:
                        if 10000 / stor7:
                            require 365 * 10000 / stor7 / 10000 / stor7 == 365
                            if arg1:
                                require stor6 - block.timestamp / 24 * 3600 * arg1 / arg1 == stor6 - block.timestamp / 24 * 3600
                                require 365 * 10000 / stor7
                                require stor6 - block.timestamp / 24 * 3600 * arg1 / 365 * 10000 / stor7 >= 0
                                s = 1
                                s = 365 * 10000 / stor7
                                s = stor6 - block.timestamp / 24 * 3600
                                idx = idx + 1
                                continue 
                            else:
                                require 365 * 10000 / stor7
                                require 0 / 365 * 10000 / stor7 >= 0
                                s = 1
                                s = 365 * 10000 / stor7
                                s = stor6 - block.timestamp / 24 * 3600
                                idx = idx + 1
                                continue 
                        else:
                            require arg1
                            require stor6 - block.timestamp / 24 * 3600 * arg1 / arg1 == stor6 - block.timestamp / 24 * 3600
                            revert
                else:
                    if arg1:
                        require arg1 / arg1 == 1
                        require arg1 >= 0
                        s = 1
                        s = 1
                        s = 1
                        idx = idx + 1
                        continue 
                    else:
                        s = 1
                        s = 1
                        s = 1
                        idx = idx + 1
                        continue 
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9ff78c30Address)
    call sub_9ff78c30Address.0x1b831217 with:
         gas gas_remaining wei
        args msg.sender, 0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1 + stor8 >= stor8
    stor8 += arg1
    return 1
}



}
