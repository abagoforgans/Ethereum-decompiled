contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - sub_70675489(?)
#  - sub_a25aef48(?)
#
const sub_71c40de6(?) = -999999999

const sub_7883168f(?) = 999999999

const VERSION = 7


address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
address owner;
mapping of uint8 stor6;
uint8 stor7;
uint8 stor7; offset 8
uint256 stor7; offset 16
uint256 stor7; offset 8
mapping of struct stor8;
mapping of uint256 sub_3c70d232;
array of struct sub_fc2dced1;
array of uint256 sub_1f8bb6c5;
uint256 oraclizeGasLimit;
uint256 sub_6198a967;
uint256 sub_863007d0;

function sub_1f8bb6c5(?) {
    require arg1 < sub_1f8bb6c5.length
    return sub_1f8bb6c5[arg1]
}

function sub_3c70d232(?) {
    require owner == msg.sender
    return sub_3c70d232[address(arg1)][('signextend', 15, ('signextend', 15, ('param', 'arg3'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg2'))) << 128]
}

function sub_42ad5c86(?) {
    require stor6[address(msg.sender)]
    return sub_3c70d232[address(msg.sender)][('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128]
}

function sub_4d1cbf83(?) {
    return bool(uint8(stor7.field_0))
}

function oraclizeGasLimit() {
    return oraclizeGasLimit
}

function sub_6198a967(?) {
    return sub_6198a967
}

function sub_863007d0(?) {
    return sub_863007d0
}

function owner() {
    return owner
}

function sub_8e2df127(?) {
    require owner == msg.sender
    require arg3 < 256
    mem[160] = stor[sha3((2 * arg3) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1)].field_0
    idx = 160
    s = 0
    while stor[(2 * arg3) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((2 * arg3) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[(2 * arg3) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1].length, data=mem[160 len stor[(2 * arg3) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1].length]), 
           sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][arg3].field_512
}

function isMember(address arg1) {
    return bool(stor6[address(arg1)])
}

function sub_e96fb981(?) {
    return bool(uint8(stor7.field_8))
}

function sub_fc2dced1(?) {
    require owner == msg.sender
    mem[160] = sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_0
    idx = 160
    s = 0
    while sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].length + 128 > idx:
        mem[idx + 32] = sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].length, data=mem[160 len sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].length]), 
           sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_131328,
           sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_131584
}

function _fallback() payable {
    revert
}

function addMember(address arg1) {
    require owner == msg.sender
    if not stor6[address(arg1)]:
        stor6[address(arg1)] = 1
        emit MemberAdded(arg1);
}

function join() {
    require uint8(stor7.field_0)
    if not stor6[address(msg.sender)]:
        stor6[address(msg.sender)] = 1
        emit MemberAdded(msg.sender);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    require arg1
    owner = arg1
    emit OwnerChanged(owner, arg1);
}

function sub_8ce1ca7b(?) {
    require owner == msg.sender
    uint8(stor7.field_0) = uint8(arg1)
    Mask(248, 0, stor7.field_8) = Mask(248, 0, arg2)
    Mask(240, 0, stor7.field_16) = Mask(240, 16, arg1) >> 16
}

function withdraw(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= eth.balance(this.address)
    if arg1:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_7ce27a4e(?) {
    if 0 == sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_131584:
        if sub_863007d0:
            return ((sub_6198a967 * sub_863007d0 / sub_863007d0) + 10^14)
    else:
        if sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_131328 > arg3:
            if sub_863007d0:
                return ((sub_6198a967 * arg3 / sub_863007d0) + 10^14)
        else:
            if sub_863007d0:
                return ((sub_6198a967 * sub_863007d0 / sub_863007d0) + 10^14)
    ('iszero', ('stor', ('name', 'sub_863007d0', 14)))
    revert
}

function sub_20a14380(?) {
    require owner == msg.sender
    require arg1 > 0
    if arg1 != sub_863007d0:
        s = 0
        idx = 0
        while idx < sub_1f8bb6c5.length:
            mem[0] = sub_1f8bb6c5[idx]
            mem[32] = 10
            sub_fc2dced1[stor11[idx]].field_0 = 0
            if 31 < sub_fc2dced1[stor11[idx]].length:
                mem[0] = sha3(sub_1f8bb6c5[idx], 10)
                s = sha3(sha3(sub_1f8bb6c5[idx], 10))
                while sha3(sha3(sub_1f8bb6c5[idx], 10)) + (sub_fc2dced1[stor11[idx]].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            s = sub_1f8bb6c5[idx]
            idx = idx + 1
            continue 
    sub_863007d0 = arg1
}

function removeMember(address arg1) {
    require owner == msg.sender
    if stor6[address(arg1)]:
        s = 0
        s = 0
        idx = 0
        while idx < sub_1f8bb6c5.length:
            mem[0] = sub_1f8bb6c5[idx]
            mem[32] = sha3(address(arg1), 9)
            if sub_3c70d232[address(arg1)][stor11[idx]] > 0:
                mem[0] = sub_1f8bb6c5[idx]
                sub_3c70d232[address(arg1)][stor11[idx]] = 0
                mem[32] = 10
                sub_fc2dced1[stor11[idx]].field_131328 += sub_3c70d232[address(arg1)][stor11[idx]]
            s = sub_3c70d232[address(arg1)][stor11[idx]]
            s = sub_1f8bb6c5[idx]
            idx = idx + 1
            continue 
        stor6[address(arg1)] = 0
        emit MemberRemoved(arg1);
}

function quit() {
    require stor6[address(msg.sender)]
    require uint8(stor7.field_8)
    if stor6[address(msg.sender)]:
        s = 0
        s = 0
        idx = 0
        while idx < sub_1f8bb6c5.length:
            mem[0] = sub_1f8bb6c5[idx]
            mem[32] = sha3(address(msg.sender), 9)
            if sub_3c70d232[address(msg.sender)][stor11[idx]] > 0:
                mem[0] = sub_1f8bb6c5[idx]
                sub_3c70d232[address(msg.sender)][stor11[idx]] = 0
                mem[32] = 10
                sub_fc2dced1[stor11[idx]].field_131328 += sub_3c70d232[address(msg.sender)][stor11[idx]]
            s = sub_3c70d232[address(msg.sender)][stor11[idx]]
            s = sub_1f8bb6c5[idx]
            idx = idx + 1
            continue 
        stor6[address(msg.sender)] = 0
        emit MemberRemoved(msg.sender);
}

function sub_9d49ab2b(?) {
    require owner == msg.sender
    require arg1 > 0
    oraclizeGasLimit = arg1
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor2.length) = 0
            uint255(stor2.length.field_1) = 11
            Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 12
                Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 9
                    Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 11
                        Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor0)
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 11
                Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 12
                    Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 9
                        Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor2.length) = 0
                            uint255(stor2.length.field_1) = 11
                            Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor0)
    call stor0.0x38cc4831 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != address(stor1):
        require ext_code.size(stor0)
        call stor0.0x38cc4831 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 'URL', oraclizeGasLimit
    require ext_call.success
    sub_6198a967 = ext_call.return_data[0]
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 11
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 'eth_mainnet'
            bool(stor2.length) = 0
            uint255(stor2.length.field_1) = 11
            Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor0)
            call stor0.0x38cc4831 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[12 len 20] != address(stor1):
                require ext_code.size(stor0)
                call stor0.0x38cc4831 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
            require ext_code.size(address(stor1))
            call address(stor1).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            require address(stor8[arg1].field_0)
            mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 256
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = 0
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 12
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 'eth_ropsten3'
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 12
                Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor0)
                call stor0.0x38cc4831 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if ext_call.return_data[12 len 20] != address(stor1):
                    require ext_code.size(stor0)
                    call stor0.0x38cc4831 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
                require ext_code.size(address(stor1))
                call address(stor1).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                require address(stor8[arg1].field_0)
                mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 256
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = 0
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 9
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 'eth_kovan'
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 9
                    Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor0)
                    call stor0.0x38cc4831 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if ext_call.return_data[12 len 20] != address(stor1):
                        require ext_code.size(stor0)
                        call stor0.0x38cc4831 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    require address(stor8[arg1].field_0)
                    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 256
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = 0
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        require ext_code.size(stor0)
                        call stor0.0x38cc4831 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if ext_call.return_data[12 len 20] != address(stor1):
                            require ext_code.size(stor0)
                            call stor0.0x38cc4831 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        require address(stor8[arg1].field_0)
                        mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 192
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 11
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 'eth_rinkeby'
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 11
                        Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor0)
                        call stor0.0x38cc4831 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if ext_call.return_data[12 len 20] != address(stor1):
                            require ext_code.size(stor0)
                            call stor0.0x38cc4831 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        require address(stor8[arg1].field_0)
                        mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 256
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = 0
    else:
        if ext_code.size(stor0):
            call stor0.0x38cc4831 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[12 len 20] != address(stor1):
                require ext_code.size(stor0)
                call stor0.0x38cc4831 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 0
            require ext_code.size(address(stor1))
            call address(stor1).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            require address(stor8[arg1].field_0)
            mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 192
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 11
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 'eth_mainnet'
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 11
                Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor0)
                call stor0.0x38cc4831 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if ext_call.return_data[12 len 20] != address(stor1):
                    require ext_code.size(stor0)
                    call stor0.0x38cc4831 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
                require ext_code.size(address(stor1))
                call address(stor1).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                require address(stor8[arg1].field_0)
                mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 256
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = 0
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 12
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 'eth_ropsten3'
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 12
                    Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor0)
                    call stor0.0x38cc4831 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if ext_call.return_data[12 len 20] != address(stor1):
                        require ext_code.size(stor0)
                        call stor0.0x38cc4831 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    require address(stor8[arg1].field_0)
                    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 256
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = 0
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 9
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 'eth_kovan'
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 9
                        Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor0)
                        call stor0.0x38cc4831 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if ext_call.return_data[12 len 20] != address(stor1):
                            require ext_code.size(stor0)
                            call stor0.0x38cc4831 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        require address(stor8[arg1].field_0)
                        mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 256
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = 0
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor0)
                            call stor0.0x38cc4831 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if ext_call.return_data[12 len 20] != address(stor1):
                                require ext_code.size(stor0)
                                call stor0.0x38cc4831 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 0
                            require ext_code.size(address(stor1))
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            require address(stor8[arg1].field_0)
                            mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 192
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 11
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 'eth_rinkeby'
                            bool(stor2.length) = 0
                            uint255(stor2.length.field_1) = 11
                            Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor0)
                            call stor0.0x38cc4831 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if ext_call.return_data[12 len 20] != address(stor1):
                                require ext_code.size(stor0)
                                call stor0.0x38cc4831 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
                            require ext_code.size(address(stor1))
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            require address(stor8[arg1].field_0)
                            mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 256
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = 0
    if arg2.length > 2:
        require 0 < arg2.length
        if '[' == Mask(8, 248, mem[128]):
            require arg2.length - 1 < arg2.length
            if ']' == Mask(8, -(8 * arg2.length + -ceil32(arg2.length) + 31) + 248, mem[arg2.length + 127 len ceil32(arg2.length) + -arg2.length + 1]) << 8 * arg2.length + -ceil32(arg2.length) + 31:
                if stor8[arg1].field_512 <= sub_863007d0:
                    mem[0] = ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128
                    mem[32] = 10
                    idx = 0
                    s = 1
                    while idx < 256:
                        if s and sub_fc2dced1[('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128].field_131584:
                            idx = idx + 1
                            s = 2 * s
                            continue 
                        if idx < 0:
                            emit 0xb0e7f4f2: arg1, address(stor8[arg1].field_0), 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))))), stor8[arg1].field_512
                        else:
                            require idx < 256
                            sub_fc2dced1[('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128][idx].field_256 = 0
                            if 31 < stor[(2 * idx) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))))), ('name', 'sub_fc2dced1', 10)) + 1].length:
                                s = sha3((2 * idx) + sha3(('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128, 10) + 1)
                                while sha3((2 * idx) + sha3(('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128, 10) + 1) + (stor[(2 * idx) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))))), ('name', 'sub_fc2dced1', 10)) + 1].length + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            sub_fc2dced1[('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128][idx].field_512 = 0
                            require idx < 256
                            sub_fc2dced1[('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128][idx].field_256 = (2 * arg2.length) + 1
                            t = sha3((2 * idx) + sha3(('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128, 10) + 1)
                            s = 128
                            while arg2.length + 128 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128, 10) + 1) + (Mask(251, 0, arg2.length + 31) >> 5)
                            while sha3((2 * idx) + sha3(('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128, 10) + 1) + (stor[(2 * idx) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))))), ('name', 'sub_fc2dced1', 10)) + 1].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            sub_fc2dced1[('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128][idx].field_512 = 0
                            require idx >= 0
                            sub_fc2dced1[('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128].field_131584 = 2^idx or sub_fc2dced1[('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128].field_131584
                            sub_3c70d232[address(stor8[arg1].field_0)][('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128] += stor8[arg1].field_512
                            sub_fc2dced1[('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128].field_131328 = sub_863007d0 - stor8[arg1].field_512 + sub_fc2dced1[('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128].field_131328
                            idx = 0
                            while idx < sub_1f8bb6c5.length:
                                mem[0] = 11
                                if ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128 != sub_1f8bb6c5[idx]:
                                    idx = idx + 1
                                    continue 
                                emit 0xb0e7f4f2: arg1, address(stor8[arg1].field_0), 1, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))))), stor8[arg1].field_512
                                address(stor8[arg1].field_0) = 0
                                stor8[arg1].field_256 = 0
                                stor8[arg1].field_512 = 0
                            sub_1f8bb6c5.length++
                            if not sub_1f8bb6c5.length <= sub_1f8bb6c5.length + 1:
                                idx = sub_1f8bb6c5.length + sha3(11) + 1
                                while sha3(11) + sub_1f8bb6c5.length > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            sub_1f8bb6c5[sub_1f8bb6c5.length] = ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))) or ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))) << 128
                            emit 0xb0e7f4f2: arg1, address(stor8[arg1].field_0), 1, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))))), stor8[arg1].field_512
                        address(stor8[arg1].field_0) = 0
                        stor8[arg1].field_256 = 0
                        stor8[arg1].field_512 = 0
    emit 0xb0e7f4f2: arg1, address(stor8[arg1].field_0), 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))))))), stor8[arg1].field_512
    address(stor8[arg1].field_0) = 0
    stor8[arg1].field_256 = 0
    stor8[arg1].field_512 = 0
}

function sub_b92615f2(?) {
    require stor6[address(msg.sender)]
    require sub_3c70d232[address(msg.sender)][('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128] > 0
    mem[0] = ('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128
    require 0 < 256
    s = 0
    idx = 1
    while not idx or not sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_131584:
        require s + 1 < 256
        s = s + 1
        idx = 2 * idx
        continue 
    require s >= 0
    require s < 256
    require stor[(2 * s) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1].length > 2
    require 0 < stor[(2 * s) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1].length
    require not '['
    require stor[(2 * s) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1].length - 1 < stor[(2 * s) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1].length
    if not bool(sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_256):
        if not bool(sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_256):
            require ']' == Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, stor[(2 * s) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1].length - 1) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8
            t = 0
            t = sub_fc2dced1[mem[0]][s].field_512 + 1
            u = 0
            while t < stor[(2 * s) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1].length:
                require t < stor[(2 * s) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1].length
                if not bool(sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_256):
                    if Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8 >= '0':
                        if Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8 <= '9':
                            t = Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8
                            t = t + 1
                            u = (10 * u) + (Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 256) - 48
                            continue 
                    if Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8 == ',':
                        sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_512 = t
                    else:
                        if Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8 != ']':
                            t = Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8
                            t = t + 1
                            u = u
                            continue 
                        sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_512 = t
                        require s >= 0
                        sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_131584 = sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_131584 and !2^s
                else:
                    mem[0] = (2 * s) + sha3(('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128, 10) + 1
                    if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8 >= '0':
                        if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8 <= '9':
                            t = Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8
                            t = t + 1
                            u = (10 * u) + (Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 256) - 48
                            continue 
                    if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8 == ',':
                        sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_512 = t
                    else:
                        if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8 != ']':
                            t = Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8
                            t = t + 1
                            u = u
                            continue 
                        sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_512 = t
                        require s >= 0
                        sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_131584 = sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_131584 and !2^s
                emit 0xca760f9c: msg.sender, u
                sub_3c70d232[address(msg.sender)][('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128]--
                return u
        else:
            require ']' == Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('add', -1, ('stor', ('length', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, stor[(2 * s) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1].length - 1 % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('add', -1, ('stor', ('length', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8
            t = 0
            t = sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_512 + 1
            u = 0
            while t < stor[(2 * s) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1].length:
                require t < stor[(2 * s) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1].length
                if not bool(sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_256):
                    if Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8 >= '0':
                        if Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8 <= '9':
                            t = Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8
                            t = t + 1
                            u = (10 * u) + (Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 256) - 48
                            continue 
                    if Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8 == ',':
                        sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_512 = t
                    else:
                        if Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8 != ']':
                            t = Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8
                            t = t + 1
                            u = u
                            continue 
                        sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_512 = t
                        require s >= 0
                        sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_131584 = sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_131584 and !2^s
                else:
                    mem[0] = (2 * s) + sha3(('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128, 10) + 1
                    if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8 >= '0':
                        if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8 <= '9':
                            t = Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8
                            t = t + 1
                            u = (10 * u) + (Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 256) - 48
                            continue 
                    if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8 == ',':
                        sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_512 = t
                    else:
                        if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8 != ']':
                            t = Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8
                            t = t + 1
                            u = u
                            continue 
                        sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_512 = t
                        require s >= 0
                        sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_131584 = sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_131584 and !2^s
                emit 0xca760f9c: msg.sender, u
                sub_3c70d232[address(msg.sender)][('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128]--
                return u
    else:
        if not bool(sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_256):
            require ']' == Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, stor[(2 * s) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1].length - 1) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8
        else:
            require ']' == Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('add', -1, ('stor', ('length', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, stor[(2 * s) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1].length - 1 % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('add', -1, ('stor', ('length', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8
        t = 0
        t = sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_512 + 1
        u = 0
        while t < stor[(2 * s) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1].length:
            require t < stor[(2 * s) + ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10)) + 1].length
            if not bool(sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_256):
                if Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8 >= '0':
                    if Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8 <= '9':
                        t = Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8
                        t = t + 1
                        u = (10 * u) + (Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 256) - 48
                        continue 
                if Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8 == ',':
                    sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_512 = t
                else:
                    if Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8 != ']':
                        t = Mask(8, -(('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) + 256, t) << (('field', 259, ('stor', ('array', ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))), 0) - 8
                        t = t + 1
                        u = u
                        continue 
                    sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_512 = t
                    require s >= 0
                    sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_131584 = sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_131584 and !2^s
            else:
                mem[0] = (2 * s) + sha3(('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128, 10) + 1
                if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8 >= '0':
                    if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8 <= '9':
                        t = Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8
                        t = t + 1
                        u = (10 * u) + (Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 256) - 48
                        continue 
                if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8 == ',':
                    sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_512 = t
                else:
                    if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8 != ']':
                        t = Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) + 256, t % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 2)), ('sha3', ('add', 1, ('mul', 2, ('var', 1)), ('map', ('or', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), ('name', 'sub_fc2dced1', 10))))))), 0) - 8
                        t = t + 1
                        u = u
                        continue 
                    sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128][s].field_512 = t
                    require s >= 0
                    sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_131584 = sub_fc2dced1[('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128].field_131584 and !2^s
            emit 0xca760f9c: msg.sender, u
            sub_3c70d232[address(msg.sender)][('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128]--
            return u
    emit 0xca760f9c: msg.sender, 0
    sub_3c70d232[address(msg.sender)][('signextend', 15, ('signextend', 15, ('param', 'arg2'))) or ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128]--
    return 0
}



}
