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
uint256 stor3;
uint256 stor4;
uint256 stor6;
uint256 stor8;
uint256 stor9;
uint256 stor10;
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

function sub_5b7613be(?) {
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < stor3:
        return ext_call.return_data[0]
    return stor3
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

function sub_bc97faaa(?) {
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= stor3:
        if stor3 <= stor3:
            if stor9:
                return (0 / stor9)
    else:
        if ext_call.return_data[0] <= stor3:
            if not stor3 - ext_call.return_data[0]:
                if stor9:
                    return (0 / stor9)
            else:
                if (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor3 - ext_call.return_data[0] == arg1:
                    if stor9:
                        return ((stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor9)
    revert
}

function sub_2d549120(?) {
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < stor3:
        if not ext_call.return_data[0]:
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0])
        else:
            if arg1 * ext_call.return_data[0] / ext_call.return_data[0] == arg1:
                if ext_call.return_data[0]:
                    return (arg1 * ext_call.return_data[0] / ext_call.return_data[0])
    else:
        if not stor3:
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0])
        else:
            if arg1 * stor3 / stor3 == arg1:
                if ext_call.return_data[0]:
                    return (arg1 * stor3 / ext_call.return_data[0])
    revert
}

function sub_97eedd96(?) {
    require arg1 > 0
    require block.timestamp > stor6
    require ext_code.size(equityTokenAddress)
    call equityTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if 1 == stor4:
        require ext_code.size(debtTokenAddress)
        call debtTokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= stor3:
            require stor3 <= stor3
            require stor9
            require ext_code.size(tokenManagerAddress)
            call tokenManagerAddress.0x17bfdd57 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(loanTokenAddress) == ext_call.return_data[12 len 20]:
                call msg.sender with:
                   value 0 / stor9 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(tokenManagerAddress)
                call tokenManagerAddress.0x35163b43 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(ext_call.return_data[0])
                mem[228 len 128] = unknown_0xd1660f99(?????), Mask(224, 0, stor17), uint32(stor17), msg.sender, 0 / stor9, mem[228 len 28]
                mem[324] = mem[352 len 4]
                delegate address(ext_call.return_data[0]).mem[228 len 4] with:
                     gas gas_remaining wei
                    args mem[232 len 124]
                if not delegate.return_code:
                    revert with 0, 'safeTransfer() failed.'
            require ext_code.size(sub_9ff78c30Address)
            call sub_9ff78c30Address.0xf173aed9 with:
                 gas gas_remaining wei
                args msg.sender, arg1, 0 / stor9
        else:
            require ext_call.return_data[0] <= stor3
            if not stor3 - ext_call.return_data[0]:
                require stor9
                require ext_code.size(tokenManagerAddress)
                call tokenManagerAddress.0x17bfdd57 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(loanTokenAddress) == ext_call.return_data[12 len 20]:
                    call msg.sender with:
                       value 0 / stor9 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0x35163b43 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(ext_call.return_data[0])
                    mem[228 len 128] = unknown_0xd1660f99(?????), Mask(224, 0, stor17), uint32(stor17), msg.sender, 0 / stor9, mem[228 len 28]
                    mem[324] = mem[352 len 4]
                    delegate address(ext_call.return_data[0]).mem[228 len 4] with:
                         gas gas_remaining wei
                        args mem[232 len 124]
                    if not delegate.return_code:
                        revert with 0, 'safeTransfer() failed.'
                require ext_code.size(sub_9ff78c30Address)
                call sub_9ff78c30Address.0xf173aed9 with:
                     gas gas_remaining wei
                    args msg.sender, arg1, 0 / stor9
            else:
                require (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor3 - ext_call.return_data[0] == arg1
                require stor9
                require ext_code.size(tokenManagerAddress)
                call tokenManagerAddress.0x17bfdd57 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(loanTokenAddress) == ext_call.return_data[12 len 20]:
                    call msg.sender with:
                       value (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor9 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0x35163b43 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(ext_call.return_data[0])
                    mem[228 len 128] = unknown_0xd1660f99(?????), Mask(224, 0, stor17), uint32(stor17), msg.sender, (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor9, mem[228 len 28]
                    mem[324] = mem[352 len 4]
                    delegate address(ext_call.return_data[0]).mem[228 len 4] with:
                         gas gas_remaining wei
                        args mem[232 len 124]
                    if not delegate.return_code:
                        revert with 0, 'safeTransfer() failed.'
                require ext_code.size(sub_9ff78c30Address)
                call sub_9ff78c30Address.0xf173aed9 with:
                     gas gas_remaining wei
                    args msg.sender, arg1, (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor9
    else:
        mem[96] = 0
        mem[128] = 0
        mem[160] = 0
        mem[192] = 0
        mem[224] = 0
        mem[256] = 0
        mem[288] = 0
        mem[320] = loans.length
        mem[64] = (32 * loans.length) + 352
        if not loans.length:
            idx = 0
            s = 0
            t = 96
            while idx < loans.length:
                mem[0] = 27
                _401 = mem[64]
                mem[64] = mem[64] + 224
                mem[_401] = uint256(loans[idx].field_0)
                mem[_401 + 32] = uint256(loans[idx].field_256)
                mem[_401 + 64] = uint256(loans[idx].field_512)
                mem[_401 + 96] = uint256(loans[idx].field_768)
                mem[_401 + 128] = address(loans[idx].field_1024)
                mem[_401 + 160] = address(loans[idx].field_1280)
                mem[_401 + 192] = uint256(loans[idx].field_1536)
                if not uint256(loans[idx].field_0):
                    idx = idx + 1
                    s = s
                    t = _401
                    continue 
                require s < mem[320]
                mem[(32 * s) + 352] = idx
                require s + 1 >= s
                idx = idx + 1
                s = s + 1
                t = _401
                continue 
            require stor9 + stor8 >= stor8
            require stor10 <= stor9 + stor8
            if s <= 0:
                stor4 = 1
                stor3 = stor9 + stor8 - stor10
                mem[mem[64] + 4] = stor9 + stor8 - stor10
                require ext_code.size(sub_9ff78c30Address)
                call sub_9ff78c30Address.0xd563028a with:
                     gas gas_remaining wei
                    args (stor9 + stor8 - stor10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(debtTokenAddress)
                call debtTokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= stor3:
                    require stor3 <= stor3
                    require stor9
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0x17bfdd57 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(loanTokenAddress) == address(ext_call.return_data[0]):
                        call msg.sender with:
                           value 0 / stor9 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x35163b43 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[0])
                        _699 = mem[64]
                        mem[mem[64] + 36] = address(loanTokenAddress)
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = 0 / stor9
                        _700 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_700 + 32 len 4] = unknown_0xd1660f99(?????)
                        _703 = mem[_700]
                        mem[_699 + 132 len ceil32(mem[_700])] = mem[_700 + 32 len ceil32(mem[_700])]
                        if not _703 % 32:
                            delegate address(ext_call.return_data[0]).0x0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _703 + _699 + -mem[64] + 128]
                        else:
                            mem[floor32(_703) + _699 + 132] = mem[floor32(_703) + _699 + -(_703 % 32) + 164 len _703 % 32]
                            delegate address(ext_call.return_data[0]).0x0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_703) + _699 + -mem[64] + 160]
                        if not delegate.return_code:
                            revert with 0, 'safeTransfer() failed.'
                    require ext_code.size(sub_9ff78c30Address)
                    call sub_9ff78c30Address.0xf173aed9 with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 0 / stor9
                else:
                    require ext_call.return_data[0] <= stor3
                    if not stor3 - ext_call.return_data[0]:
                        require stor9
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(loanTokenAddress) == address(ext_call.return_data[0]):
                            call msg.sender with:
                               value 0 / stor9 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _648 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 0 / stor9
                            _649 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_649 + 32 len 4] = unknown_0xd1660f99(?????)
                            _652 = mem[_649]
                            mem[_648 + 132 len ceil32(mem[_649])] = mem[_649 + 32 len ceil32(mem[_649])]
                            if not _652 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _652 + _648 + -mem[64] + 128]
                            else:
                                mem[floor32(_652) + _648 + 132] = mem[floor32(_652) + _648 + -(_652 % 32) + 164 len _652 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_652) + _648 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0xf173aed9 with:
                             gas gas_remaining wei
                            args msg.sender, arg1, 0 / stor9
                    else:
                        require (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor3 - ext_call.return_data[0] == arg1
                        require stor9
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(loanTokenAddress) == address(ext_call.return_data[0]):
                            call msg.sender with:
                               value (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor9 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _671 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor9
                            _672 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_672 + 32 len 4] = unknown_0xd1660f99(?????)
                            _675 = mem[_672]
                            mem[_671 + 132 len ceil32(mem[_672])] = mem[_672 + 32 len ceil32(mem[_672])]
                            if not _675 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _675 + _671 + -mem[64] + 128]
                            else:
                                mem[floor32(_675) + _671 + 132] = mem[floor32(_675) + _671 + -(_675 % 32) + 164 len _675 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_675) + _671 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0xf173aed9 with:
                             gas gas_remaining wei
                            args msg.sender, arg1, (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor9
            else:
                require ext_code.size(tokenManagerAddress)
                call tokenManagerAddress.0x17bfdd57 with:
                     gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                t = 0
                while t < s:
                    require t < mem[320]
                    require mem[(32 * t) + 352] < loans.length
                    if address(loans[mem[(32 * t) + 352]].field_1024) == address(ext_call.return_data[0]):
                        if t < mem[320]:
                            _1149 = mem[(32 * t) + 352]
                            if mem[(32 * t) + 352] < loans.length:
                                mem[0] = 27
                                mem[mem[64] + 4] = address(loans[mem[(32 * t) + 352]].field_1024)
                                mem[mem[64] + 36] = address(loanTokenAddress)
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = uint256(loans[_1149].field_768)
                                require ext_code.size(sub_c0924b80Address)
                                call sub_c0924b80Address.0xdca751a6 with:
                                   value uint256(loans[_1149].field_768) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(loanTokenAddress), this.address, uint256(loans[_1149].field_768)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 0:
                                    t = t + 1
                                    continue 
                    else:
                        if t < mem[320]:
                            _1148 = mem[(32 * t) + 352]
                            if mem[(32 * t) + 352] < loans.length:
                                require ext_code.size(tokenManagerAddress)
                                call tokenManagerAddress.0x35163b43 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(ext_call.return_data[0])
                                if mem[(32 * t) + 352] < loans.length:
                                    mem[0] = 27
                                    _1228 = mem[64]
                                    mem[mem[64] + 36] = address(loans[mem[(32 * t) + 352]].field_1024)
                                    mem[mem[64] + 68] = sub_c0924b80Address
                                    mem[mem[64] + 100] = uint256(loans[_1148].field_768)
                                    _1229 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_1229 + 32] = 0xd1660f9900000000000000000000000000000000000000000000000000000000 or mem[_1229 + 36 len 28]
                                    _1232 = mem[_1229]
                                    idx = 0
                                    while idx < _1232:
                                        mem[idx + _1228 + 132] = mem[idx + _1229 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not _1232 % 32:
                                        delegate address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1232 + _1228 + -mem[64] + 128]
                                    else:
                                        mem[floor32(_1232) + _1228 + 132] = mem[floor32(_1232) + _1228 + -(_1232 % 32) + 164 len _1232 % 32]
                                        delegate address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_1232) + _1228 + -mem[64] + 160]
                                    if not delegate.return_code:
                                        revert with 0, 'safeTransfer() failed.'
                                    if _1148 < loans.length:
                                        mem[0] = 27
                                        mem[mem[64] + 4] = address(loans[_1148].field_1024)
                                        mem[mem[64] + 36] = address(loanTokenAddress)
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = uint256(loans[_1148].field_768)
                                        require ext_code.size(sub_c0924b80Address)
                                        call sub_c0924b80Address.0xdca751a6 with:
                                             gas gas_remaining wei
                                            args address(loans[_1148].field_1024), address(loanTokenAddress), this.address, uint256(loans[_1148].field_768)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] >= 0:
                                            t = t + 1
                                            continue 
                    revert
                stor4 = 1
                stor3 = stor9 + stor8 - stor10
                mem[mem[64] + 4] = stor9 + stor8 - stor10
                require ext_code.size(sub_9ff78c30Address)
                call sub_9ff78c30Address.0xd563028a with:
                     gas gas_remaining wei
                    args (stor9 + stor8 - stor10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(debtTokenAddress)
                call debtTokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= stor3:
                    require stor3 <= stor3
                    require stor9
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0x17bfdd57 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(loanTokenAddress) == address(ext_call.return_data[0]):
                        call msg.sender with:
                           value 0 / stor9 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x35163b43 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[0])
                        _1369 = mem[64]
                        mem[mem[64] + 36] = address(loanTokenAddress)
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = 0 / stor9
                        _1370 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_1370 + 32 len 4] = unknown_0xd1660f99(?????)
                        _1373 = mem[_1370]
                        mem[_1369 + 132 len ceil32(mem[_1370])] = mem[_1370 + 32 len ceil32(mem[_1370])]
                        if not _1373 % 32:
                            delegate address(ext_call.return_data[0]).0x0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1373 + _1369 + -mem[64] + 128]
                        else:
                            mem[floor32(_1373) + _1369 + 132] = mem[floor32(_1373) + _1369 + -(_1373 % 32) + 164 len _1373 % 32]
                            delegate address(ext_call.return_data[0]).0x0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1373) + _1369 + -mem[64] + 160]
                        if not delegate.return_code:
                            revert with 0, 'safeTransfer() failed.'
                    require ext_code.size(sub_9ff78c30Address)
                    call sub_9ff78c30Address.0xf173aed9 with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 0 / stor9
                else:
                    require ext_call.return_data[0] <= stor3
                    if not stor3 - ext_call.return_data[0]:
                        require stor9
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(loanTokenAddress) == address(ext_call.return_data[0]):
                            call msg.sender with:
                               value 0 / stor9 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _1332 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 0 / stor9
                            _1333 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1333 + 32 len 4] = unknown_0xd1660f99(?????)
                            _1336 = mem[_1333]
                            mem[_1332 + 132 len ceil32(mem[_1333])] = mem[_1333 + 32 len ceil32(mem[_1333])]
                            if not _1336 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1336 + _1332 + -mem[64] + 128]
                            else:
                                mem[floor32(_1336) + _1332 + 132] = mem[floor32(_1336) + _1332 + -(_1336 % 32) + 164 len _1336 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1336) + _1332 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0xf173aed9 with:
                             gas gas_remaining wei
                            args msg.sender, arg1, 0 / stor9
                    else:
                        require (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor3 - ext_call.return_data[0] == arg1
                        require stor9
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(loanTokenAddress) == address(ext_call.return_data[0]):
                            call msg.sender with:
                               value (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor9 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _1351 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor9
                            _1352 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1352 + 32 len 4] = unknown_0xd1660f99(?????)
                            _1355 = mem[_1352]
                            mem[_1351 + 132 len ceil32(mem[_1352])] = mem[_1352 + 32 len ceil32(mem[_1352])]
                            if not _1355 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1355 + _1351 + -mem[64] + 128]
                            else:
                                mem[floor32(_1355) + _1351 + 132] = mem[floor32(_1355) + _1351 + -(_1355 % 32) + 164 len _1355 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1355) + _1351 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0xf173aed9 with:
                             gas gas_remaining wei
                            args msg.sender, arg1, (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor9
        else:
            mem[352 len 32 * loans.length] = code.data[6889 len 32 * loans.length]
            idx = 0
            s = 0
            t = 96
            while idx < loans.length:
                mem[0] = 27
                _403 = mem[64]
                mem[64] = mem[64] + 224
                mem[_403] = uint256(loans[idx].field_0)
                mem[_403 + 32] = uint256(loans[idx].field_256)
                mem[_403 + 64] = uint256(loans[idx].field_512)
                mem[_403 + 96] = uint256(loans[idx].field_768)
                mem[_403 + 128] = address(loans[idx].field_1024)
                mem[_403 + 160] = address(loans[idx].field_1280)
                mem[_403 + 192] = uint256(loans[idx].field_1536)
                if not uint256(loans[idx].field_0):
                    idx = idx + 1
                    s = s
                    t = _403
                    continue 
                require s < mem[320]
                mem[(32 * s) + 352] = idx
                require s + 1 >= s
                idx = idx + 1
                s = s + 1
                t = _403
                continue 
            require stor9 + stor8 >= stor8
            require stor10 <= stor9 + stor8
            if s <= 0:
                stor4 = 1
                stor3 = stor9 + stor8 - stor10
                mem[mem[64] + 4] = stor9 + stor8 - stor10
                require ext_code.size(sub_9ff78c30Address)
                call sub_9ff78c30Address.0xd563028a with:
                     gas gas_remaining wei
                    args (stor9 + stor8 - stor10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(debtTokenAddress)
                call debtTokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= stor3:
                    require stor3 <= stor3
                    require stor9
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0x17bfdd57 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(loanTokenAddress) == address(ext_call.return_data[0]):
                        call msg.sender with:
                           value 0 / stor9 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x35163b43 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[0])
                        _711 = mem[64]
                        mem[mem[64] + 36] = address(loanTokenAddress)
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = 0 / stor9
                        _712 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_712 + 32 len 4] = unknown_0xd1660f99(?????)
                        _715 = mem[_712]
                        mem[_711 + 132 len ceil32(mem[_712])] = mem[_712 + 32 len ceil32(mem[_712])]
                        if not _715 % 32:
                            delegate address(ext_call.return_data[0]).0x0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _715 + _711 + -mem[64] + 128]
                        else:
                            mem[floor32(_715) + _711 + 132] = mem[floor32(_715) + _711 + -(_715 % 32) + 164 len _715 % 32]
                            delegate address(ext_call.return_data[0]).0x0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_715) + _711 + -mem[64] + 160]
                        if not delegate.return_code:
                            revert with 0, 'safeTransfer() failed.'
                    require ext_code.size(sub_9ff78c30Address)
                    call sub_9ff78c30Address.0xf173aed9 with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 0 / stor9
                else:
                    require ext_call.return_data[0] <= stor3
                    if not stor3 - ext_call.return_data[0]:
                        require stor9
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(loanTokenAddress) == address(ext_call.return_data[0]):
                            call msg.sender with:
                               value 0 / stor9 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _660 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 0 / stor9
                            _661 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_661 + 32 len 4] = unknown_0xd1660f99(?????)
                            _664 = mem[_661]
                            mem[_660 + 132 len ceil32(mem[_661])] = mem[_661 + 32 len ceil32(mem[_661])]
                            if not _664 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _664 + _660 + -mem[64] + 128]
                            else:
                                mem[floor32(_664) + _660 + 132] = mem[floor32(_664) + _660 + -(_664 % 32) + 164 len _664 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_664) + _660 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0xf173aed9 with:
                             gas gas_remaining wei
                            args msg.sender, arg1, 0 / stor9
                    else:
                        require (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor3 - ext_call.return_data[0] == arg1
                        require stor9
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(loanTokenAddress) == address(ext_call.return_data[0]):
                            call msg.sender with:
                               value (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor9 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _684 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor9
                            _685 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_685 + 32 len 4] = unknown_0xd1660f99(?????)
                            _688 = mem[_685]
                            mem[_684 + 132 len ceil32(mem[_685])] = mem[_685 + 32 len ceil32(mem[_685])]
                            if not _688 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _688 + _684 + -mem[64] + 128]
                            else:
                                mem[floor32(_688) + _684 + 132] = mem[floor32(_688) + _684 + -(_688 % 32) + 164 len _688 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_688) + _684 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0xf173aed9 with:
                             gas gas_remaining wei
                            args msg.sender, arg1, (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor9
            else:
                require ext_code.size(tokenManagerAddress)
                call tokenManagerAddress.0x17bfdd57 with:
                     gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                t = 0
                while t < s:
                    require t < mem[320]
                    require mem[(32 * t) + 352] < loans.length
                    if address(loans[mem[(32 * t) + 352]].field_1024) == address(ext_call.return_data[0]):
                        if t < mem[320]:
                            _1154 = mem[(32 * t) + 352]
                            if mem[(32 * t) + 352] < loans.length:
                                mem[0] = 27
                                mem[mem[64] + 4] = address(loans[mem[(32 * t) + 352]].field_1024)
                                mem[mem[64] + 36] = address(loanTokenAddress)
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = uint256(loans[_1154].field_768)
                                require ext_code.size(sub_c0924b80Address)
                                call sub_c0924b80Address.0xdca751a6 with:
                                   value uint256(loans[_1154].field_768) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(loanTokenAddress), this.address, uint256(loans[_1154].field_768)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 0:
                                    t = t + 1
                                    continue 
                    else:
                        if t < mem[320]:
                            _1153 = mem[(32 * t) + 352]
                            if mem[(32 * t) + 352] < loans.length:
                                require ext_code.size(tokenManagerAddress)
                                call tokenManagerAddress.0x35163b43 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(ext_call.return_data[0])
                                if mem[(32 * t) + 352] < loans.length:
                                    mem[0] = 27
                                    _1234 = mem[64]
                                    mem[mem[64] + 36] = address(loans[mem[(32 * t) + 352]].field_1024)
                                    mem[mem[64] + 68] = sub_c0924b80Address
                                    mem[mem[64] + 100] = uint256(loans[_1153].field_768)
                                    _1235 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_1235 + 32] = 0xd1660f9900000000000000000000000000000000000000000000000000000000 or mem[_1235 + 36 len 28]
                                    _1238 = mem[_1235]
                                    idx = 0
                                    while idx < _1238:
                                        mem[idx + _1234 + 132] = mem[idx + _1235 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not _1238 % 32:
                                        delegate address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1238 + _1234 + -mem[64] + 128]
                                    else:
                                        mem[floor32(_1238) + _1234 + 132] = mem[floor32(_1238) + _1234 + -(_1238 % 32) + 164 len _1238 % 32]
                                        delegate address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_1238) + _1234 + -mem[64] + 160]
                                    if not delegate.return_code:
                                        revert with 0, 'safeTransfer() failed.'
                                    if _1153 < loans.length:
                                        mem[0] = 27
                                        mem[mem[64] + 4] = address(loans[_1153].field_1024)
                                        mem[mem[64] + 36] = address(loanTokenAddress)
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = uint256(loans[_1153].field_768)
                                        require ext_code.size(sub_c0924b80Address)
                                        call sub_c0924b80Address.0xdca751a6 with:
                                             gas gas_remaining wei
                                            args address(loans[_1153].field_1024), address(loanTokenAddress), this.address, uint256(loans[_1153].field_768)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] >= 0:
                                            t = t + 1
                                            continue 
                    revert
                stor4 = 1
                stor3 = stor9 + stor8 - stor10
                mem[mem[64] + 4] = stor9 + stor8 - stor10
                require ext_code.size(sub_9ff78c30Address)
                call sub_9ff78c30Address.0xd563028a with:
                     gas gas_remaining wei
                    args (stor9 + stor8 - stor10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(debtTokenAddress)
                call debtTokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= stor3:
                    require stor3 <= stor3
                    require stor9
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0x17bfdd57 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(loanTokenAddress) == address(ext_call.return_data[0]):
                        call msg.sender with:
                           value 0 / stor9 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x35163b43 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[0])
                        _1377 = mem[64]
                        mem[mem[64] + 36] = address(loanTokenAddress)
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = 0 / stor9
                        _1378 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_1378 + 32 len 4] = unknown_0xd1660f99(?????)
                        _1381 = mem[_1378]
                        mem[_1377 + 132 len ceil32(mem[_1378])] = mem[_1378 + 32 len ceil32(mem[_1378])]
                        if not _1381 % 32:
                            delegate address(ext_call.return_data[0]).0x0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1381 + _1377 + -mem[64] + 128]
                        else:
                            mem[floor32(_1381) + _1377 + 132] = mem[floor32(_1381) + _1377 + -(_1381 % 32) + 164 len _1381 % 32]
                            delegate address(ext_call.return_data[0]).0x0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1381) + _1377 + -mem[64] + 160]
                        if not delegate.return_code:
                            revert with 0, 'safeTransfer() failed.'
                    require ext_code.size(sub_9ff78c30Address)
                    call sub_9ff78c30Address.0xf173aed9 with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 0 / stor9
                else:
                    require ext_call.return_data[0] <= stor3
                    if not stor3 - ext_call.return_data[0]:
                        require stor9
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(loanTokenAddress) == address(ext_call.return_data[0]):
                            call msg.sender with:
                               value 0 / stor9 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _1342 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 0 / stor9
                            _1343 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1343 + 32 len 4] = unknown_0xd1660f99(?????)
                            _1346 = mem[_1343]
                            mem[_1342 + 132 len ceil32(mem[_1343])] = mem[_1343 + 32 len ceil32(mem[_1343])]
                            if not _1346 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1346 + _1342 + -mem[64] + 128]
                            else:
                                mem[floor32(_1346) + _1342 + 132] = mem[floor32(_1346) + _1342 + -(_1346 % 32) + 164 len _1346 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1346) + _1342 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0xf173aed9 with:
                             gas gas_remaining wei
                            args msg.sender, arg1, 0 / stor9
                    else:
                        require (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor3 - ext_call.return_data[0] == arg1
                        require stor9
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(loanTokenAddress) == address(ext_call.return_data[0]):
                            call msg.sender with:
                               value (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor9 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _1359 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor9
                            _1360 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1360 + 32 len 4] = unknown_0xd1660f99(?????)
                            _1363 = mem[_1360]
                            mem[_1359 + 132 len ceil32(mem[_1360])] = mem[_1360 + 32 len ceil32(mem[_1360])]
                            if not _1363 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1363 + _1359 + -mem[64] + 128]
                            else:
                                mem[floor32(_1363) + _1359 + 132] = mem[floor32(_1363) + _1359 + -(_1363 % 32) + 164 len _1363 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1363) + _1359 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0xf173aed9 with:
                             gas gas_remaining wei
                            args msg.sender, arg1, (stor3 * arg1) - (ext_call.return_data[0] * arg1) / stor9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function sub_60fcbb7e(?) {
    require block.timestamp > stor6
    require arg1 > 0
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if 1 == stor4:
        require ext_code.size(debtTokenAddress)
        call debtTokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(debtTokenAddress)
        call debtTokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < stor3:
            if not ext_call.return_data[0]:
                require ext_call.return_data[0]
                require ext_code.size(tokenManagerAddress)
                call tokenManagerAddress.0x17bfdd57 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == address(loanTokenAddress):
                    call msg.sender with:
                       value 0 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0x35163b43 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(ext_call.return_data[0])
                    mem[228 len 128] = unknown_0xd1660f99(?????), Mask(224, 0, stor17), uint32(stor17), msg.sender, 0 / ext_call.return_data[0], mem[228 len 28]
                    mem[324] = mem[352 len 4]
                    delegate address(ext_call.return_data[0]).mem[228 len 4] with:
                         gas gas_remaining wei
                        args mem[232 len 124]
                    if not delegate.return_code:
                        revert with 0, 'safeTransfer() failed.'
                require ext_code.size(sub_9ff78c30Address)
                call sub_9ff78c30Address.0x14b4d3c with:
                     gas gas_remaining wei
                    args msg.sender, arg1, 0 / ext_call.return_data[0]
            else:
                require arg1 * ext_call.return_data[0] / ext_call.return_data[0] == arg1
                require ext_call.return_data[0]
                require ext_code.size(tokenManagerAddress)
                call tokenManagerAddress.0x17bfdd57 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == address(loanTokenAddress):
                    call msg.sender with:
                       value arg1 * ext_call.return_data[0] / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0x35163b43 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(ext_call.return_data[0])
                    mem[228 len 128] = unknown_0xd1660f99(?????), Mask(224, 0, stor17), uint32(stor17), msg.sender, arg1 * ext_call.return_data[0] / ext_call.return_data[0], mem[228 len 28]
                    mem[324] = mem[352 len 4]
                    delegate address(ext_call.return_data[0]).mem[228 len 4] with:
                         gas gas_remaining wei
                        args mem[232 len 124]
                    if not delegate.return_code:
                        revert with 0, 'safeTransfer() failed.'
                require ext_code.size(sub_9ff78c30Address)
                call sub_9ff78c30Address.0x14b4d3c with:
                     gas gas_remaining wei
                    args msg.sender, arg1, arg1 * ext_call.return_data[0] / ext_call.return_data[0]
        else:
            if not stor3:
                require ext_call.return_data[0]
                require ext_code.size(tokenManagerAddress)
                call tokenManagerAddress.0x17bfdd57 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == address(loanTokenAddress):
                    call msg.sender with:
                       value 0 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0x35163b43 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(ext_call.return_data[0])
                    mem[228 len 128] = unknown_0xd1660f99(?????), Mask(224, 0, stor17), uint32(stor17), msg.sender, 0 / ext_call.return_data[0], mem[228 len 28]
                    mem[324] = mem[352 len 4]
                    delegate address(ext_call.return_data[0]).mem[228 len 4] with:
                         gas gas_remaining wei
                        args mem[232 len 124]
                    if not delegate.return_code:
                        revert with 0, 'safeTransfer() failed.'
                require ext_code.size(sub_9ff78c30Address)
                call sub_9ff78c30Address.0x14b4d3c with:
                     gas gas_remaining wei
                    args msg.sender, arg1, 0 / ext_call.return_data[0]
            else:
                require arg1 * stor3 / stor3 == arg1
                require ext_call.return_data[0]
                require ext_code.size(tokenManagerAddress)
                call tokenManagerAddress.0x17bfdd57 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == address(loanTokenAddress):
                    call msg.sender with:
                       value arg1 * stor3 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0x35163b43 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(ext_call.return_data[0])
                    mem[228 len 128] = unknown_0xd1660f99(?????), Mask(224, 0, stor17), uint32(stor17), msg.sender, arg1 * stor3 / ext_call.return_data[0], mem[228 len 28]
                    mem[324] = mem[352 len 4]
                    delegate address(ext_call.return_data[0]).mem[228 len 4] with:
                         gas gas_remaining wei
                        args mem[232 len 124]
                    if not delegate.return_code:
                        revert with 0, 'safeTransfer() failed.'
                require ext_code.size(sub_9ff78c30Address)
                call sub_9ff78c30Address.0x14b4d3c with:
                     gas gas_remaining wei
                    args msg.sender, arg1, arg1 * stor3 / ext_call.return_data[0]
    else:
        mem[96] = 0
        mem[128] = 0
        mem[160] = 0
        mem[192] = 0
        mem[224] = 0
        mem[256] = 0
        mem[288] = 0
        mem[320] = loans.length
        mem[64] = (32 * loans.length) + 352
        if not loans.length:
            idx = 0
            s = 0
            t = 96
            while idx < loans.length:
                mem[0] = 27
                _536 = mem[64]
                mem[64] = mem[64] + 224
                mem[_536] = uint256(loans[idx].field_0)
                mem[_536 + 32] = uint256(loans[idx].field_256)
                mem[_536 + 64] = uint256(loans[idx].field_512)
                mem[_536 + 96] = uint256(loans[idx].field_768)
                mem[_536 + 128] = address(loans[idx].field_1024)
                mem[_536 + 160] = address(loans[idx].field_1280)
                mem[_536 + 192] = uint256(loans[idx].field_1536)
                if not uint256(loans[idx].field_0):
                    idx = idx + 1
                    s = s
                    t = _536
                    continue 
                require s < mem[320]
                mem[(32 * s) + 352] = idx
                require s + 1 >= s
                idx = idx + 1
                s = s + 1
                t = _536
                continue 
            require stor9 + stor8 >= stor8
            require stor10 <= stor9 + stor8
            if s <= 0:
                stor4 = 1
                stor3 = stor9 + stor8 - stor10
                mem[mem[64] + 4] = stor9 + stor8 - stor10
                require ext_code.size(sub_9ff78c30Address)
                call sub_9ff78c30Address.0xd563028a with:
                     gas gas_remaining wei
                    args (stor9 + stor8 - stor10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(debtTokenAddress)
                call debtTokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(debtTokenAddress)
                call debtTokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < stor3:
                    if not ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(loanTokenAddress):
                            call msg.sender with:
                               value 0 / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _830 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0]
                            _831 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_831 + 32 len 4] = unknown_0xd1660f99(?????)
                            _834 = mem[_831]
                            mem[_830 + 132 len ceil32(mem[_831])] = mem[_831 + 32 len ceil32(mem[_831])]
                            if not _834 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _834 + _830 + -mem[64] + 128]
                            else:
                                mem[floor32(_834) + _830 + 132] = mem[floor32(_834) + _830 + -(_834 % 32) + 164 len _834 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_834) + _830 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0x14b4d3c with:
                             gas gas_remaining wei
                            args msg.sender, arg1, 0 / ext_call.return_data[0]
                    else:
                        require arg1 * ext_call.return_data[0] / ext_call.return_data[0] == arg1
                        require ext_call.return_data[0]
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(loanTokenAddress):
                            call msg.sender with:
                               value arg1 * ext_call.return_data[0] / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _857 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = arg1 * ext_call.return_data[0] / ext_call.return_data[0]
                            _858 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_858 + 32 len 4] = unknown_0xd1660f99(?????)
                            _861 = mem[_858]
                            mem[_857 + 132 len ceil32(mem[_858])] = mem[_858 + 32 len ceil32(mem[_858])]
                            if not _861 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _861 + _857 + -mem[64] + 128]
                            else:
                                mem[floor32(_861) + _857 + 132] = mem[floor32(_861) + _857 + -(_861 % 32) + 164 len _861 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_861) + _857 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0x14b4d3c with:
                             gas gas_remaining wei
                            args msg.sender, arg1, arg1 * ext_call.return_data[0] / ext_call.return_data[0]
                else:
                    if not stor3:
                        require ext_call.return_data[0]
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(loanTokenAddress):
                            call msg.sender with:
                               value 0 / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _892 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0]
                            _893 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_893 + 32 len 4] = unknown_0xd1660f99(?????)
                            _896 = mem[_893]
                            mem[_892 + 132 len ceil32(mem[_893])] = mem[_893 + 32 len ceil32(mem[_893])]
                            if not _896 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _896 + _892 + -mem[64] + 128]
                            else:
                                mem[floor32(_896) + _892 + 132] = mem[floor32(_896) + _892 + -(_896 % 32) + 164 len _896 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_896) + _892 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0x14b4d3c with:
                             gas gas_remaining wei
                            args msg.sender, arg1, 0 / ext_call.return_data[0]
                    else:
                        require arg1 * stor3 / stor3 == arg1
                        require ext_call.return_data[0]
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(loanTokenAddress):
                            call msg.sender with:
                               value arg1 * stor3 / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _922 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = arg1 * stor3 / ext_call.return_data[0]
                            _923 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_923 + 32 len 4] = unknown_0xd1660f99(?????)
                            _926 = mem[_923]
                            mem[_922 + 132 len ceil32(mem[_923])] = mem[_923 + 32 len ceil32(mem[_923])]
                            if not _926 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _926 + _922 + -mem[64] + 128]
                            else:
                                mem[floor32(_926) + _922 + 132] = mem[floor32(_926) + _922 + -(_926 % 32) + 164 len _926 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_926) + _922 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0x14b4d3c with:
                             gas gas_remaining wei
                            args msg.sender, arg1, arg1 * stor3 / ext_call.return_data[0]
            else:
                require ext_code.size(tokenManagerAddress)
                call tokenManagerAddress.0x17bfdd57 with:
                     gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                t = 0
                while t < s:
                    require t < mem[320]
                    require mem[(32 * t) + 352] < loans.length
                    if address(loans[mem[(32 * t) + 352]].field_1024) == address(ext_call.return_data[0]):
                        if t < mem[320]:
                            _1502 = mem[(32 * t) + 352]
                            if mem[(32 * t) + 352] < loans.length:
                                mem[0] = 27
                                mem[mem[64] + 4] = address(loans[mem[(32 * t) + 352]].field_1024)
                                mem[mem[64] + 36] = address(loanTokenAddress)
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = uint256(loans[_1502].field_768)
                                require ext_code.size(sub_c0924b80Address)
                                call sub_c0924b80Address.0xdca751a6 with:
                                   value uint256(loans[_1502].field_768) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(loanTokenAddress), this.address, uint256(loans[_1502].field_768)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 0:
                                    t = t + 1
                                    continue 
                    else:
                        if t < mem[320]:
                            _1501 = mem[(32 * t) + 352]
                            if mem[(32 * t) + 352] < loans.length:
                                require ext_code.size(tokenManagerAddress)
                                call tokenManagerAddress.0x35163b43 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(ext_call.return_data[0])
                                if mem[(32 * t) + 352] < loans.length:
                                    mem[0] = 27
                                    _1600 = mem[64]
                                    mem[mem[64] + 36] = address(loans[mem[(32 * t) + 352]].field_1024)
                                    mem[mem[64] + 68] = sub_c0924b80Address
                                    mem[mem[64] + 100] = uint256(loans[_1501].field_768)
                                    _1601 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_1601 + 32] = 0xd1660f9900000000000000000000000000000000000000000000000000000000 or mem[_1601 + 36 len 28]
                                    _1604 = mem[_1601]
                                    idx = 0
                                    while idx < _1604:
                                        mem[idx + _1600 + 132] = mem[idx + _1601 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not _1604 % 32:
                                        delegate address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1604 + _1600 + -mem[64] + 128]
                                    else:
                                        mem[floor32(_1604) + _1600 + 132] = mem[floor32(_1604) + _1600 + -(_1604 % 32) + 164 len _1604 % 32]
                                        delegate address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_1604) + _1600 + -mem[64] + 160]
                                    if not delegate.return_code:
                                        revert with 0, 'safeTransfer() failed.'
                                    if _1501 < loans.length:
                                        mem[0] = 27
                                        mem[mem[64] + 4] = address(loans[_1501].field_1024)
                                        mem[mem[64] + 36] = address(loanTokenAddress)
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = uint256(loans[_1501].field_768)
                                        require ext_code.size(sub_c0924b80Address)
                                        call sub_c0924b80Address.0xdca751a6 with:
                                             gas gas_remaining wei
                                            args address(loans[_1501].field_1024), address(loanTokenAddress), this.address, uint256(loans[_1501].field_768)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] >= 0:
                                            t = t + 1
                                            continue 
                    revert
                stor4 = 1
                stor3 = stor9 + stor8 - stor10
                mem[mem[64] + 4] = stor9 + stor8 - stor10
                require ext_code.size(sub_9ff78c30Address)
                call sub_9ff78c30Address.0xd563028a with:
                     gas gas_remaining wei
                    args (stor9 + stor8 - stor10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(debtTokenAddress)
                call debtTokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(debtTokenAddress)
                call debtTokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < stor3:
                    if not ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(loanTokenAddress):
                            call msg.sender with:
                               value 0 / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _1722 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0]
                            _1723 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1723 + 32 len 4] = unknown_0xd1660f99(?????)
                            _1726 = mem[_1723]
                            mem[_1722 + 132 len ceil32(mem[_1723])] = mem[_1723 + 32 len ceil32(mem[_1723])]
                            if not _1726 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1726 + _1722 + -mem[64] + 128]
                            else:
                                mem[floor32(_1726) + _1722 + 132] = mem[floor32(_1726) + _1722 + -(_1726 % 32) + 164 len _1726 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1726) + _1722 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0x14b4d3c with:
                             gas gas_remaining wei
                            args msg.sender, arg1, 0 / ext_call.return_data[0]
                    else:
                        require arg1 * ext_call.return_data[0] / ext_call.return_data[0] == arg1
                        require ext_call.return_data[0]
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(loanTokenAddress):
                            call msg.sender with:
                               value arg1 * ext_call.return_data[0] / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _1741 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = arg1 * ext_call.return_data[0] / ext_call.return_data[0]
                            _1742 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1742 + 32 len 4] = unknown_0xd1660f99(?????)
                            _1745 = mem[_1742]
                            mem[_1741 + 132 len ceil32(mem[_1742])] = mem[_1742 + 32 len ceil32(mem[_1742])]
                            if not _1745 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1745 + _1741 + -mem[64] + 128]
                            else:
                                mem[floor32(_1745) + _1741 + 132] = mem[floor32(_1745) + _1741 + -(_1745 % 32) + 164 len _1745 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1745) + _1741 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0x14b4d3c with:
                             gas gas_remaining wei
                            args msg.sender, arg1, arg1 * ext_call.return_data[0] / ext_call.return_data[0]
                else:
                    if not stor3:
                        require ext_call.return_data[0]
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(loanTokenAddress):
                            call msg.sender with:
                               value 0 / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _1766 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0]
                            _1767 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1767 + 32 len 4] = unknown_0xd1660f99(?????)
                            _1770 = mem[_1767]
                            mem[_1766 + 132 len ceil32(mem[_1767])] = mem[_1767 + 32 len ceil32(mem[_1767])]
                            if not _1770 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1770 + _1766 + -mem[64] + 128]
                            else:
                                mem[floor32(_1770) + _1766 + 132] = mem[floor32(_1770) + _1766 + -(_1770 % 32) + 164 len _1770 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1770) + _1766 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0x14b4d3c with:
                             gas gas_remaining wei
                            args msg.sender, arg1, 0 / ext_call.return_data[0]
                    else:
                        require arg1 * stor3 / stor3 == arg1
                        require ext_call.return_data[0]
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(loanTokenAddress):
                            call msg.sender with:
                               value arg1 * stor3 / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _1786 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = arg1 * stor3 / ext_call.return_data[0]
                            _1787 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1787 + 32 len 4] = unknown_0xd1660f99(?????)
                            _1790 = mem[_1787]
                            mem[_1786 + 132 len ceil32(mem[_1787])] = mem[_1787 + 32 len ceil32(mem[_1787])]
                            if not _1790 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1790 + _1786 + -mem[64] + 128]
                            else:
                                mem[floor32(_1790) + _1786 + 132] = mem[floor32(_1790) + _1786 + -(_1790 % 32) + 164 len _1790 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1790) + _1786 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0x14b4d3c with:
                             gas gas_remaining wei
                            args msg.sender, arg1, arg1 * stor3 / ext_call.return_data[0]
        else:
            mem[352 len 32 * loans.length] = code.data[6889 len 32 * loans.length]
            idx = 0
            s = 0
            t = 96
            while idx < loans.length:
                mem[0] = 27
                _538 = mem[64]
                mem[64] = mem[64] + 224
                mem[_538] = uint256(loans[idx].field_0)
                mem[_538 + 32] = uint256(loans[idx].field_256)
                mem[_538 + 64] = uint256(loans[idx].field_512)
                mem[_538 + 96] = uint256(loans[idx].field_768)
                mem[_538 + 128] = address(loans[idx].field_1024)
                mem[_538 + 160] = address(loans[idx].field_1280)
                mem[_538 + 192] = uint256(loans[idx].field_1536)
                if not uint256(loans[idx].field_0):
                    idx = idx + 1
                    s = s
                    t = _538
                    continue 
                require s < mem[320]
                mem[(32 * s) + 352] = idx
                require s + 1 >= s
                idx = idx + 1
                s = s + 1
                t = _538
                continue 
            require stor9 + stor8 >= stor8
            require stor10 <= stor9 + stor8
            if s <= 0:
                stor4 = 1
                stor3 = stor9 + stor8 - stor10
                mem[mem[64] + 4] = stor9 + stor8 - stor10
                require ext_code.size(sub_9ff78c30Address)
                call sub_9ff78c30Address.0xd563028a with:
                     gas gas_remaining wei
                    args (stor9 + stor8 - stor10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(debtTokenAddress)
                call debtTokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(debtTokenAddress)
                call debtTokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < stor3:
                    if not ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(loanTokenAddress):
                            call msg.sender with:
                               value 0 / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _844 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0]
                            _845 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_845 + 32 len 4] = unknown_0xd1660f99(?????)
                            _848 = mem[_845]
                            mem[_844 + 132 len ceil32(mem[_845])] = mem[_845 + 32 len ceil32(mem[_845])]
                            if not _848 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _848 + _844 + -mem[64] + 128]
                            else:
                                mem[floor32(_848) + _844 + 132] = mem[floor32(_848) + _844 + -(_848 % 32) + 164 len _848 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_848) + _844 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0x14b4d3c with:
                             gas gas_remaining wei
                            args msg.sender, arg1, 0 / ext_call.return_data[0]
                    else:
                        require arg1 * ext_call.return_data[0] / ext_call.return_data[0] == arg1
                        require ext_call.return_data[0]
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(loanTokenAddress):
                            call msg.sender with:
                               value arg1 * ext_call.return_data[0] / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _873 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = arg1 * ext_call.return_data[0] / ext_call.return_data[0]
                            _874 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_874 + 32 len 4] = unknown_0xd1660f99(?????)
                            _877 = mem[_874]
                            mem[_873 + 132 len ceil32(mem[_874])] = mem[_874 + 32 len ceil32(mem[_874])]
                            if not _877 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _877 + _873 + -mem[64] + 128]
                            else:
                                mem[floor32(_877) + _873 + 132] = mem[floor32(_877) + _873 + -(_877 % 32) + 164 len _877 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_877) + _873 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0x14b4d3c with:
                             gas gas_remaining wei
                            args msg.sender, arg1, arg1 * ext_call.return_data[0] / ext_call.return_data[0]
                else:
                    if not stor3:
                        require ext_call.return_data[0]
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(loanTokenAddress):
                            call msg.sender with:
                               value 0 / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _906 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0]
                            _907 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_907 + 32 len 4] = unknown_0xd1660f99(?????)
                            _910 = mem[_907]
                            mem[_906 + 132 len ceil32(mem[_907])] = mem[_907 + 32 len ceil32(mem[_907])]
                            if not _910 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _910 + _906 + -mem[64] + 128]
                            else:
                                mem[floor32(_910) + _906 + 132] = mem[floor32(_910) + _906 + -(_910 % 32) + 164 len _910 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_910) + _906 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0x14b4d3c with:
                             gas gas_remaining wei
                            args msg.sender, arg1, 0 / ext_call.return_data[0]
                    else:
                        require arg1 * stor3 / stor3 == arg1
                        require ext_call.return_data[0]
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(loanTokenAddress):
                            call msg.sender with:
                               value arg1 * stor3 / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _941 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = arg1 * stor3 / ext_call.return_data[0]
                            _942 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_942 + 32 len 4] = unknown_0xd1660f99(?????)
                            _945 = mem[_942]
                            mem[_941 + 132 len ceil32(mem[_942])] = mem[_942 + 32 len ceil32(mem[_942])]
                            if not _945 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _945 + _941 + -mem[64] + 128]
                            else:
                                mem[floor32(_945) + _941 + 132] = mem[floor32(_945) + _941 + -(_945 % 32) + 164 len _945 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_945) + _941 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0x14b4d3c with:
                             gas gas_remaining wei
                            args msg.sender, arg1, arg1 * stor3 / ext_call.return_data[0]
            else:
                require ext_code.size(tokenManagerAddress)
                call tokenManagerAddress.0x17bfdd57 with:
                     gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                t = 0
                while t < s:
                    require t < mem[320]
                    require mem[(32 * t) + 352] < loans.length
                    if address(loans[mem[(32 * t) + 352]].field_1024) == address(ext_call.return_data[0]):
                        if t < mem[320]:
                            _1508 = mem[(32 * t) + 352]
                            if mem[(32 * t) + 352] < loans.length:
                                mem[0] = 27
                                mem[mem[64] + 4] = address(loans[mem[(32 * t) + 352]].field_1024)
                                mem[mem[64] + 36] = address(loanTokenAddress)
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = uint256(loans[_1508].field_768)
                                require ext_code.size(sub_c0924b80Address)
                                call sub_c0924b80Address.0xdca751a6 with:
                                   value uint256(loans[_1508].field_768) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(loanTokenAddress), this.address, uint256(loans[_1508].field_768)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 0:
                                    t = t + 1
                                    continue 
                    else:
                        if t < mem[320]:
                            _1507 = mem[(32 * t) + 352]
                            if mem[(32 * t) + 352] < loans.length:
                                require ext_code.size(tokenManagerAddress)
                                call tokenManagerAddress.0x35163b43 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(ext_call.return_data[0])
                                if mem[(32 * t) + 352] < loans.length:
                                    mem[0] = 27
                                    _1606 = mem[64]
                                    mem[mem[64] + 36] = address(loans[mem[(32 * t) + 352]].field_1024)
                                    mem[mem[64] + 68] = sub_c0924b80Address
                                    mem[mem[64] + 100] = uint256(loans[_1507].field_768)
                                    _1607 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_1607 + 32] = 0xd1660f9900000000000000000000000000000000000000000000000000000000 or mem[_1607 + 36 len 28]
                                    _1610 = mem[_1607]
                                    idx = 0
                                    while idx < _1610:
                                        mem[idx + _1606 + 132] = mem[idx + _1607 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not _1610 % 32:
                                        delegate address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1610 + _1606 + -mem[64] + 128]
                                    else:
                                        mem[floor32(_1610) + _1606 + 132] = mem[floor32(_1610) + _1606 + -(_1610 % 32) + 164 len _1610 % 32]
                                        delegate address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(_1610) + _1606 + -mem[64] + 160]
                                    if not delegate.return_code:
                                        revert with 0, 'safeTransfer() failed.'
                                    if _1507 < loans.length:
                                        mem[0] = 27
                                        mem[mem[64] + 4] = address(loans[_1507].field_1024)
                                        mem[mem[64] + 36] = address(loanTokenAddress)
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = uint256(loans[_1507].field_768)
                                        require ext_code.size(sub_c0924b80Address)
                                        call sub_c0924b80Address.0xdca751a6 with:
                                             gas gas_remaining wei
                                            args address(loans[_1507].field_1024), address(loanTokenAddress), this.address, uint256(loans[_1507].field_768)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] >= 0:
                                            t = t + 1
                                            continue 
                    revert
                stor4 = 1
                stor3 = stor9 + stor8 - stor10
                mem[mem[64] + 4] = stor9 + stor8 - stor10
                require ext_code.size(sub_9ff78c30Address)
                call sub_9ff78c30Address.0xd563028a with:
                     gas gas_remaining wei
                    args (stor9 + stor8 - stor10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(debtTokenAddress)
                call debtTokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(debtTokenAddress)
                call debtTokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < stor3:
                    if not ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(loanTokenAddress):
                            call msg.sender with:
                               value 0 / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _1732 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0]
                            _1733 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1733 + 32 len 4] = unknown_0xd1660f99(?????)
                            _1736 = mem[_1733]
                            mem[_1732 + 132 len ceil32(mem[_1733])] = mem[_1733 + 32 len ceil32(mem[_1733])]
                            if not _1736 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1736 + _1732 + -mem[64] + 128]
                            else:
                                mem[floor32(_1736) + _1732 + 132] = mem[floor32(_1736) + _1732 + -(_1736 % 32) + 164 len _1736 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1736) + _1732 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0x14b4d3c with:
                             gas gas_remaining wei
                            args msg.sender, arg1, 0 / ext_call.return_data[0]
                    else:
                        require arg1 * ext_call.return_data[0] / ext_call.return_data[0] == arg1
                        require ext_call.return_data[0]
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(loanTokenAddress):
                            call msg.sender with:
                               value arg1 * ext_call.return_data[0] / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _1752 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = arg1 * ext_call.return_data[0] / ext_call.return_data[0]
                            _1753 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1753 + 32 len 4] = unknown_0xd1660f99(?????)
                            _1756 = mem[_1753]
                            mem[_1752 + 132 len ceil32(mem[_1753])] = mem[_1753 + 32 len ceil32(mem[_1753])]
                            if not _1756 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1756 + _1752 + -mem[64] + 128]
                            else:
                                mem[floor32(_1756) + _1752 + 132] = mem[floor32(_1756) + _1752 + -(_1756 % 32) + 164 len _1756 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1756) + _1752 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0x14b4d3c with:
                             gas gas_remaining wei
                            args msg.sender, arg1, arg1 * ext_call.return_data[0] / ext_call.return_data[0]
                else:
                    if not stor3:
                        require ext_call.return_data[0]
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(loanTokenAddress):
                            call msg.sender with:
                               value 0 / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _1775 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0]
                            _1776 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1776 + 32 len 4] = unknown_0xd1660f99(?????)
                            _1779 = mem[_1776]
                            mem[_1775 + 132 len ceil32(mem[_1776])] = mem[_1776 + 32 len ceil32(mem[_1776])]
                            if not _1779 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1779 + _1775 + -mem[64] + 128]
                            else:
                                mem[floor32(_1779) + _1775 + 132] = mem[floor32(_1779) + _1775 + -(_1779 % 32) + 164 len _1779 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1779) + _1775 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0x14b4d3c with:
                             gas gas_remaining wei
                            args msg.sender, arg1, 0 / ext_call.return_data[0]
                    else:
                        require arg1 * stor3 / stor3 == arg1
                        require ext_call.return_data[0]
                        require ext_code.size(tokenManagerAddress)
                        call tokenManagerAddress.0x17bfdd57 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == address(loanTokenAddress):
                            call msg.sender with:
                               value arg1 * stor3 / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(tokenManagerAddress)
                            call tokenManagerAddress.0x35163b43 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(ext_call.return_data[0])
                            _1798 = mem[64]
                            mem[mem[64] + 36] = address(loanTokenAddress)
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = arg1 * stor3 / ext_call.return_data[0]
                            _1799 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1799 + 32 len 4] = unknown_0xd1660f99(?????)
                            _1802 = mem[_1799]
                            mem[_1798 + 132 len ceil32(mem[_1799])] = mem[_1799 + 32 len ceil32(mem[_1799])]
                            if not _1802 % 32:
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1802 + _1798 + -mem[64] + 128]
                            else:
                                mem[floor32(_1802) + _1798 + 132] = mem[floor32(_1802) + _1798 + -(_1802 % 32) + 164 len _1802 % 32]
                                delegate address(ext_call.return_data[0]).0x0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1802) + _1798 + -mem[64] + 160]
                            if not delegate.return_code:
                                revert with 0, 'safeTransfer() failed.'
                        require ext_code.size(sub_9ff78c30Address)
                        call sub_9ff78c30Address.0x14b4d3c with:
                             gas gas_remaining wei
                            args msg.sender, arg1, arg1 * stor3 / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}



}
