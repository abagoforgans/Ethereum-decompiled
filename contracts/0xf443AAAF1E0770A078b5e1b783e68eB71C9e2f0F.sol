contract main {


// =======================  Init code  ======================


address stor5;
uint256 stor7;
uint8 stor8;
array of uint256 stor9;

function _fallback() payable {
    stor7 = 0
    stor8 = 0
    mem[96] = 0
    bool(stor9.length) = 0
    stor9.length.field_1 = 0
    stor9.length.field_8 = mem[128 len 31]
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[128 len -17017] = code.data[17489 len -17017]
    stor5 = msg.sender
    stor9[].field_0 = Array(len=mem[mem[128] + 128], data=mem[mem[128] + 160 len mem[mem[128] + 128]])
    stor5 = msg.sender
    return code.data[472 len 17017]
}



// =====================  Runtime code  =====================


#
#  - sub_4422df09(?)
#
address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
address owner;
array of address moderators;
uint256 total;
uint8 stor8;
uint256 stor8;
array of uint256 verifyUrl;
mapping of uint256 stor10;
mapping of struct sub_122363d8;

function sub_122363d8(?) {
    mem[160] = sub_122363d8[arg1].field_0
    idx = 160
    s = 0
    while sub_122363d8[arg1].length + 128 > idx:
        mem[idx + 32] = sub_122363d8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_122363d8[arg1].length, data=mem[160 len sub_122363d8[arg1].length]), 
           address(sub_122363d8[arg1].field_256),
           sub_122363d8[arg1].field_512
}

function verifyUrl() {
    return verifyUrl[0 len verifyUrl.length]
}

function total() {
    return total
}

function owner() {
    return owner
}

function moderators(uint256 arg1) {
    require arg1 < moderators.length
    return address(moderators[arg1])
}

function maintaining() {
    return bool(uint8(stor8))
}

function Kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function ChangeOwner(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setVerifyUrl(string arg1) {
    if owner != msg.sender:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx]) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 6
            idx = idx + 1
            continue 
    verifyUrl[] = Array(len=arg1.length, data=arg1[all])
}

function ToggleMaintenance() {
    if owner != msg.sender:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx]) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 6
            idx = idx + 1
            continue 
    uint256(stor8) = not bool(uint8(stor8)) or Mask(248, 8, uint256(stor8))
}

function AddModerator(address arg1) {
    require msg.sender == owner
    if arg1:
        idx = 0
        while idx < moderators.length:
            mem[0] = 6
            if address(moderators[idx]) != arg1:
                idx = idx + 1
                continue 
        moderators.length++
        if not moderators.length <= moderators.length + 1:
            idx = moderators.length + 1
            while moderators.length > idx:
                uint256(moderators[idx]) = 0
                idx = idx + 1
                continue 
        address(moderators[moderators.length]) = arg1
}

function sub_bb7a19bb(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    _18 = sha3(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]], 11)
    mem[ceil32(arg1.length) + 128] = address(sub_122363d8[stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]].field_256)
    return mem[ceil32(arg1.length) + 128], stor2[_18].field_0
}

function RemoveModerator(address arg1) {
    require msg.sender == owner
    idx = 0
    while idx < moderators.length:
        mem[0] = 6
        if address(moderators[idx]) != arg1:
            idx = idx + 1
            continue 
        if idx < moderators.length:
            require moderators.length - 1 < moderators.length
            require idx < moderators.length
            address(moderators[idx]) = address(moderators[moderators.length])
            require moderators.length - 1 < moderators.length
            address(moderators[moderators.length]) = 0
            moderators.length--
            if not moderators.length <= moderators.length - 1:
                idx = sha3(6) + moderators.length - 1
                while sha3(6) + moderators.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
}

function sub_84dacfef(?) {
    mem[128 len arg1.length] = arg1[all]
    if owner != msg.sender:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx]) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 6
            idx = idx + 1
            continue 
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    if stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]:
        stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] = 0
        total--
}

function __callback(bytes32 arg1, string arg2) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[ceil32(arg2.length) + 128] = 11
            mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
            bool(stor2.length) = 0
            uint255(stor2.length.field_1) = 11
            Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor0)
            call stor0.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if address(stor1) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
            mem[ceil32(arg2.length) + 224] = 0
            require ext_code.size(address(stor1))
            call address(stor1).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[12 len 20] != msg.sender:
                emit LogCreate(0, 5, arg1);
            else:
                mem[0] = arg1
                mem[32] = 11
                if not address(sub_122363d8[arg1].field_256):
                    emit LogCreate(0, 5, arg1);
                else:
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 192] = 0
                    s = 0
                    idx = 0
                    s = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        if mem[idx + 128 len 1] < 48:
                            s = mem[idx + 128 len 1]
                            idx = idx + 1
                            s = s
                            continue 
                        if mem[idx + 128 len 1] > 57:
                            s = mem[idx + 128 len 1]
                            idx = idx + 1
                            s = s
                            continue 
                        s = mem[idx + 128 len 1]
                        idx = idx + 1
                        s = (10 * s) + mem[idx + 128 len 1] - 48
                        continue 
                    if s != 1:
                        emit LogCreate(s, 6, arg1);
                    else:
                        mem[ceil32(arg2.length) + 224] = sub_122363d8[arg1].field_0
                        idx = ceil32(arg2.length) + 224
                        t = 0
                        while ceil32(arg2.length) + sub_122363d8[arg1].length + 224 > idx + 32:
                            mem[idx + 32] = sub_122363d8[arg1][t].field_256
                            idx = idx + 32
                            t = t + 1
                            continue 
                        if stor10[mem[ceil32(arg2.length) + 224 len stor11[arg1].length]]:
                            emit LogCreate(s, 1, arg1);
                        else:
                            total++
                            stor10[mem[ceil32(arg2.length) + 224 len stor11[arg1].length]] = arg1
                            emit LogCreate(s, 0, arg1);
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[ceil32(arg2.length) + 128] = 12
                mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 12
                Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(stor1) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                mem[ceil32(arg2.length) + 224] = 0
                require ext_code.size(address(stor1))
                call address(stor1).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if ext_call.return_data[12 len 20] != msg.sender:
                    emit LogCreate(0, 5, arg1);
                else:
                    mem[0] = arg1
                    mem[32] = 11
                    if not address(sub_122363d8[arg1].field_256):
                        emit LogCreate(0, 5, arg1);
                    else:
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 192] = 0
                        s = 0
                        idx = 0
                        s = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            if mem[idx + 128 len 1] < 48:
                                s = mem[idx + 128 len 1]
                                idx = idx + 1
                                s = s
                                continue 
                            if mem[idx + 128 len 1] > 57:
                                s = mem[idx + 128 len 1]
                                idx = idx + 1
                                s = s
                                continue 
                            s = mem[idx + 128 len 1]
                            idx = idx + 1
                            s = (10 * s) + mem[idx + 128 len 1] - 48
                            continue 
                        if s != 1:
                            emit LogCreate(s, 6, arg1);
                        else:
                            mem[ceil32(arg2.length) + 224] = sub_122363d8[arg1].field_0
                            idx = ceil32(arg2.length) + 224
                            t = 0
                            while ceil32(arg2.length) + sub_122363d8[arg1].length + 224 > idx + 32:
                                mem[idx + 32] = sub_122363d8[arg1][t].field_256
                                idx = idx + 32
                                t = t + 1
                                continue 
                            if stor10[mem[ceil32(arg2.length) + 224 len stor11[arg1].length]]:
                                emit LogCreate(s, 1, arg1);
                            else:
                                total++
                                stor10[mem[ceil32(arg2.length) + 224 len stor11[arg1].length]] = arg1
                                emit LogCreate(s, 0, arg1);
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[ceil32(arg2.length) + 128] = 9
                    mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 9
                    Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if address(stor1) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    mem[ceil32(arg2.length) + 224] = 0
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if ext_call.return_data[12 len 20] != msg.sender:
                        emit LogCreate(0, 5, arg1);
                    else:
                        mem[0] = arg1
                        mem[32] = 11
                        if not address(sub_122363d8[arg1].field_256):
                            emit LogCreate(0, 5, arg1);
                        else:
                            mem[64] = ceil32(arg2.length) + 224
                            mem[ceil32(arg2.length) + 192] = 0
                            s = 0
                            idx = 0
                            s = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                if mem[idx + 128 len 1] < 48:
                                    s = mem[idx + 128 len 1]
                                    idx = idx + 1
                                    s = s
                                    continue 
                                if mem[idx + 128 len 1] > 57:
                                    s = mem[idx + 128 len 1]
                                    idx = idx + 1
                                    s = s
                                    continue 
                                s = mem[idx + 128 len 1]
                                idx = idx + 1
                                s = (10 * s) + mem[idx + 128 len 1] - 48
                                continue 
                            if s != 1:
                                emit LogCreate(s, 6, arg1);
                            else:
                                mem[ceil32(arg2.length) + 224] = sub_122363d8[arg1].field_0
                                idx = ceil32(arg2.length) + 224
                                t = 0
                                while ceil32(arg2.length) + sub_122363d8[arg1].length + 224 > idx + 32:
                                    mem[idx + 32] = sub_122363d8[arg1][t].field_256
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                                if stor10[mem[ceil32(arg2.length) + 224 len stor11[arg1].length]]:
                                    emit LogCreate(s, 1, arg1);
                                else:
                                    total++
                                    stor10[mem[ceil32(arg2.length) + 224 len stor11[arg1].length]] = arg1
                                    emit LogCreate(s, 0, arg1);
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
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if address(stor1) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        mem[ceil32(arg2.length) + 160] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if ext_call.return_data[12 len 20] != msg.sender:
                            emit LogCreate(0, 5, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 11
                            if not address(sub_122363d8[arg1].field_256):
                                emit LogCreate(0, 5, arg1);
                            else:
                                mem[64] = ceil32(arg2.length) + 160
                                mem[ceil32(arg2.length) + 128] = 0
                                s = 0
                                idx = 0
                                s = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    if mem[idx + 128 len 1] < 48:
                                        s = mem[idx + 128 len 1]
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    if mem[idx + 128 len 1] > 57:
                                        s = mem[idx + 128 len 1]
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    s = mem[idx + 128 len 1]
                                    idx = idx + 1
                                    s = (10 * s) + mem[idx + 128 len 1] - 48
                                    continue 
                                if s != 1:
                                    emit LogCreate(s, 6, arg1);
                                else:
                                    mem[ceil32(arg2.length) + 160] = sub_122363d8[arg1].field_0
                                    idx = ceil32(arg2.length) + 160
                                    t = 0
                                    while ceil32(arg2.length) + sub_122363d8[arg1].length + 160 > idx + 32:
                                        mem[idx + 32] = sub_122363d8[arg1][t].field_256
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                    if stor10[mem[ceil32(arg2.length) + 160 len stor11[arg1].length]]:
                                        emit LogCreate(s, 1, arg1);
                                    else:
                                        total++
                                        stor10[mem[ceil32(arg2.length) + 160 len stor11[arg1].length]] = arg1
                                        emit LogCreate(s, 0, arg1);
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[ceil32(arg2.length) + 128] = 11
                        mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 11
                        Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if address(stor1) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        mem[ceil32(arg2.length) + 224] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if ext_call.return_data[12 len 20] != msg.sender:
                            emit LogCreate(0, 5, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 11
                            if not address(sub_122363d8[arg1].field_256):
                                emit LogCreate(0, 5, arg1);
                            else:
                                mem[64] = ceil32(arg2.length) + 224
                                mem[ceil32(arg2.length) + 192] = 0
                                s = 0
                                idx = 0
                                s = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    if mem[idx + 128 len 1] < 48:
                                        s = mem[idx + 128 len 1]
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    if mem[idx + 128 len 1] > 57:
                                        s = mem[idx + 128 len 1]
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    s = mem[idx + 128 len 1]
                                    idx = idx + 1
                                    s = (10 * s) + mem[idx + 128 len 1] - 48
                                    continue 
                                if s != 1:
                                    emit LogCreate(s, 6, arg1);
                                else:
                                    mem[ceil32(arg2.length) + 224] = sub_122363d8[arg1].field_0
                                    idx = ceil32(arg2.length) + 224
                                    t = 0
                                    while ceil32(arg2.length) + sub_122363d8[arg1].length + 224 > idx + 32:
                                        mem[idx + 32] = sub_122363d8[arg1][t].field_256
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                    if stor10[mem[ceil32(arg2.length) + 224 len stor11[arg1].length]]:
                                        emit LogCreate(s, 1, arg1);
                                    else:
                                        total++
                                        stor10[mem[ceil32(arg2.length) + 224 len stor11[arg1].length]] = arg1
                                        emit LogCreate(s, 0, arg1);
    else:
        if ext_code.size(stor0):
            require ext_code.size(stor0)
            call stor0.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if address(stor1) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
            mem[ceil32(arg2.length) + 160] = 0
            require ext_code.size(address(stor1))
            call address(stor1).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[12 len 20] != msg.sender:
                emit LogCreate(0, 5, arg1);
            else:
                mem[0] = arg1
                mem[32] = 11
                if not address(sub_122363d8[arg1].field_256):
                    emit LogCreate(0, 5, arg1);
                else:
                    mem[64] = ceil32(arg2.length) + 160
                    mem[ceil32(arg2.length) + 128] = 0
                    s = 0
                    idx = 0
                    s = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        if mem[idx + 128 len 1] < 48:
                            s = mem[idx + 128 len 1]
                            idx = idx + 1
                            s = s
                            continue 
                        if mem[idx + 128 len 1] > 57:
                            s = mem[idx + 128 len 1]
                            idx = idx + 1
                            s = s
                            continue 
                        s = mem[idx + 128 len 1]
                        idx = idx + 1
                        s = (10 * s) + mem[idx + 128 len 1] - 48
                        continue 
                    if s != 1:
                        emit LogCreate(s, 6, arg1);
                    else:
                        mem[ceil32(arg2.length) + 160] = sub_122363d8[arg1].field_0
                        idx = ceil32(arg2.length) + 160
                        t = 0
                        while ceil32(arg2.length) + sub_122363d8[arg1].length + 160 > idx + 32:
                            mem[idx + 32] = sub_122363d8[arg1][t].field_256
                            idx = idx + 32
                            t = t + 1
                            continue 
                        if stor10[mem[ceil32(arg2.length) + 160 len stor11[arg1].length]]:
                            emit LogCreate(s, 1, arg1);
                        else:
                            total++
                            stor10[mem[ceil32(arg2.length) + 160 len stor11[arg1].length]] = arg1
                            emit LogCreate(s, 0, arg1);
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[ceil32(arg2.length) + 128] = 11
                mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 11
                Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(stor1) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                mem[ceil32(arg2.length) + 224] = 0
                require ext_code.size(address(stor1))
                call address(stor1).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if ext_call.return_data[12 len 20] != msg.sender:
                    emit LogCreate(0, 5, arg1);
                else:
                    mem[0] = arg1
                    mem[32] = 11
                    if not address(sub_122363d8[arg1].field_256):
                        emit LogCreate(0, 5, arg1);
                    else:
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 192] = 0
                        s = 0
                        idx = 0
                        s = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            if mem[idx + 128 len 1] < 48:
                                s = mem[idx + 128 len 1]
                                idx = idx + 1
                                s = s
                                continue 
                            if mem[idx + 128 len 1] > 57:
                                s = mem[idx + 128 len 1]
                                idx = idx + 1
                                s = s
                                continue 
                            s = mem[idx + 128 len 1]
                            idx = idx + 1
                            s = (10 * s) + mem[idx + 128 len 1] - 48
                            continue 
                        if s != 1:
                            emit LogCreate(s, 6, arg1);
                        else:
                            mem[ceil32(arg2.length) + 224] = sub_122363d8[arg1].field_0
                            idx = ceil32(arg2.length) + 224
                            t = 0
                            while ceil32(arg2.length) + sub_122363d8[arg1].length + 224 > idx + 32:
                                mem[idx + 32] = sub_122363d8[arg1][t].field_256
                                idx = idx + 32
                                t = t + 1
                                continue 
                            if stor10[mem[ceil32(arg2.length) + 224 len stor11[arg1].length]]:
                                emit LogCreate(s, 1, arg1);
                            else:
                                total++
                                stor10[mem[ceil32(arg2.length) + 224 len stor11[arg1].length]] = arg1
                                emit LogCreate(s, 0, arg1);
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[ceil32(arg2.length) + 128] = 12
                    mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 12
                    Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if address(stor1) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    mem[ceil32(arg2.length) + 224] = 0
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if ext_call.return_data[12 len 20] != msg.sender:
                        emit LogCreate(0, 5, arg1);
                    else:
                        mem[0] = arg1
                        mem[32] = 11
                        if not address(sub_122363d8[arg1].field_256):
                            emit LogCreate(0, 5, arg1);
                        else:
                            mem[64] = ceil32(arg2.length) + 224
                            mem[ceil32(arg2.length) + 192] = 0
                            s = 0
                            idx = 0
                            s = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                if mem[idx + 128 len 1] < 48:
                                    s = mem[idx + 128 len 1]
                                    idx = idx + 1
                                    s = s
                                    continue 
                                if mem[idx + 128 len 1] > 57:
                                    s = mem[idx + 128 len 1]
                                    idx = idx + 1
                                    s = s
                                    continue 
                                s = mem[idx + 128 len 1]
                                idx = idx + 1
                                s = (10 * s) + mem[idx + 128 len 1] - 48
                                continue 
                            if s != 1:
                                emit LogCreate(s, 6, arg1);
                            else:
                                mem[ceil32(arg2.length) + 224] = sub_122363d8[arg1].field_0
                                idx = ceil32(arg2.length) + 224
                                t = 0
                                while ceil32(arg2.length) + sub_122363d8[arg1].length + 224 > idx + 32:
                                    mem[idx + 32] = sub_122363d8[arg1][t].field_256
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                                if stor10[mem[ceil32(arg2.length) + 224 len stor11[arg1].length]]:
                                    emit LogCreate(s, 1, arg1);
                                else:
                                    total++
                                    stor10[mem[ceil32(arg2.length) + 224 len stor11[arg1].length]] = arg1
                                    emit LogCreate(s, 0, arg1);
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[ceil32(arg2.length) + 128] = 9
                        mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 9
                        Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if address(stor1) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        mem[ceil32(arg2.length) + 224] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if ext_call.return_data[12 len 20] != msg.sender:
                            emit LogCreate(0, 5, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 11
                            if not address(sub_122363d8[arg1].field_256):
                                emit LogCreate(0, 5, arg1);
                            else:
                                mem[64] = ceil32(arg2.length) + 224
                                mem[ceil32(arg2.length) + 192] = 0
                                s = 0
                                idx = 0
                                s = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    if mem[idx + 128 len 1] < 48:
                                        s = mem[idx + 128 len 1]
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    if mem[idx + 128 len 1] > 57:
                                        s = mem[idx + 128 len 1]
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    s = mem[idx + 128 len 1]
                                    idx = idx + 1
                                    s = (10 * s) + mem[idx + 128 len 1] - 48
                                    continue 
                                if s != 1:
                                    emit LogCreate(s, 6, arg1);
                                else:
                                    mem[ceil32(arg2.length) + 224] = sub_122363d8[arg1].field_0
                                    idx = ceil32(arg2.length) + 224
                                    t = 0
                                    while ceil32(arg2.length) + sub_122363d8[arg1].length + 224 > idx + 32:
                                        mem[idx + 32] = sub_122363d8[arg1][t].field_256
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                    if stor10[mem[ceil32(arg2.length) + 224 len stor11[arg1].length]]:
                                        emit LogCreate(s, 1, arg1);
                                    else:
                                        total++
                                        stor10[mem[ceil32(arg2.length) + 224 len stor11[arg1].length]] = arg1
                                        emit LogCreate(s, 0, arg1);
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
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if address(stor1) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            mem[ceil32(arg2.length) + 160] = 0
                            require ext_code.size(address(stor1))
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if ext_call.return_data[12 len 20] != msg.sender:
                                emit LogCreate(0, 5, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 11
                                if not address(sub_122363d8[arg1].field_256):
                                    emit LogCreate(0, 5, arg1);
                                else:
                                    mem[64] = ceil32(arg2.length) + 160
                                    mem[ceil32(arg2.length) + 128] = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while idx < arg2.length:
                                        require idx < arg2.length
                                        if mem[idx + 128 len 1] < 48:
                                            s = mem[idx + 128 len 1]
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        if mem[idx + 128 len 1] > 57:
                                            s = mem[idx + 128 len 1]
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        s = mem[idx + 128 len 1]
                                        idx = idx + 1
                                        s = (10 * s) + mem[idx + 128 len 1] - 48
                                        continue 
                                    if s != 1:
                                        emit LogCreate(s, 6, arg1);
                                    else:
                                        mem[ceil32(arg2.length) + 160] = sub_122363d8[arg1].field_0
                                        idx = ceil32(arg2.length) + 160
                                        t = 0
                                        while ceil32(arg2.length) + sub_122363d8[arg1].length + 160 > idx + 32:
                                            mem[idx + 32] = sub_122363d8[arg1][t].field_256
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                        if stor10[mem[ceil32(arg2.length) + 160 len stor11[arg1].length]]:
                                            emit LogCreate(s, 1, arg1);
                                        else:
                                            total++
                                            stor10[mem[ceil32(arg2.length) + 160 len stor11[arg1].length]] = arg1
                                            emit LogCreate(s, 0, arg1);
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[ceil32(arg2.length) + 128] = 11
                            mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                            bool(stor2.length) = 0
                            uint255(stor2.length.field_1) = 11
                            Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if address(stor1) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            mem[ceil32(arg2.length) + 224] = 0
                            require ext_code.size(address(stor1))
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if ext_call.return_data[12 len 20] != msg.sender:
                                emit LogCreate(0, 5, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 11
                                if not address(sub_122363d8[arg1].field_256):
                                    emit LogCreate(0, 5, arg1);
                                else:
                                    mem[64] = ceil32(arg2.length) + 224
                                    mem[ceil32(arg2.length) + 192] = 0
                                    s = 0
                                    idx = 0
                                    s = 0
                                    while idx < arg2.length:
                                        require idx < arg2.length
                                        if mem[idx + 128 len 1] < 48:
                                            s = mem[idx + 128 len 1]
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        if mem[idx + 128 len 1] > 57:
                                            s = mem[idx + 128 len 1]
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        s = mem[idx + 128 len 1]
                                        idx = idx + 1
                                        s = (10 * s) + mem[idx + 128 len 1] - 48
                                        continue 
                                    if s != 1:
                                        emit LogCreate(s, 6, arg1);
                                    else:
                                        mem[ceil32(arg2.length) + 224] = sub_122363d8[arg1].field_0
                                        idx = ceil32(arg2.length) + 224
                                        t = 0
                                        while ceil32(arg2.length) + sub_122363d8[arg1].length + 224 > idx + 32:
                                            mem[idx + 32] = sub_122363d8[arg1][t].field_256
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                        if stor10[mem[ceil32(arg2.length) + 224 len stor11[arg1].length]]:
                                            emit LogCreate(s, 1, arg1);
                                        else:
                                            total++
                                            stor10[mem[ceil32(arg2.length) + 224 len stor11[arg1].length]] = arg1
                                            emit LogCreate(s, 0, arg1);
}



}
