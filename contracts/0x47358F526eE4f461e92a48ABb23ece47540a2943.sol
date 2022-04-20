contract main {


// =======================  Init code  ======================


address stor5;
address stor8;
array of uint256 stor9;
uint64 stor10;

function _fallback() payable {
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
    stor10 = 0
    require not msg.value
    mem[128 len -15992] = code.data[16604 len -15992]
    stor5 = msg.sender
    stor8 = mem[140 len 20]
    stor9[].field_0 = Array(len=mem[mem[160] + 128], data=mem[mem[160] + 160 len mem[mem[160] + 128]])
    stor10 = mem[216 len 8]
    return code.data[612 len 15992]
}



// =====================  Runtime code  =====================


#
#  - getDistributedAmount(uint64 arg1, string arg2, address arg3)
#
address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
address owner;
array of address moderators;
mapping of struct stor7;
address bytetherOVAddress;
array of uint256 verifyUrl;
uint64 crossForkBlockNumber;

function verifyUrl() {
    return verifyUrl[0 len verifyUrl.length]
}

function crossForkBlockNumber() {
    return crossForkBlockNumber
}

function owner() {
    return owner
}

function bytetherOVAddress() {
    return bytetherOVAddress
}

function moderators(uint256 arg1) {
    require arg1 < moderators.length
    return address(moderators[arg1])
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

function setBytetherOVAddress(address arg1) {
    if owner != msg.sender:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx]) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 6
            idx = idx + 1
            continue 
    bytetherOVAddress = arg1
}

function setCrossForkBlockNumber(uint64 arg1) {
    if owner != msg.sender:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx]) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 6
            idx = idx + 1
            continue 
    crossForkBlockNumber = arg1
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

function extractBTHAmount(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) != 0x7600000000000000000000000000000000000000000000000000000000000000:
        return 0
    require 1 < arg1.length
    if Mask(8, 248, mem[129]) != 0x3d00000000000000000000000000000000000000000000000000000000000000:
        return 0
    idx = 2
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 1
            s = s
            continue 
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 1
            s = s
            continue 
        require idx < arg1.length
        idx = idx + 1
        s = (10 * s) + mem[idx + 128 len 1] - 48
        continue 
    return s
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
                emit LogReceiveQuery(0, 0, 2, arg1);
            else:
                mem[0] = arg1
                mem[32] = 7
                if not address(stor7[arg1].field_320):
                    emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 2, arg1);
                else:
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 192] = 0
                    require 0 < arg2.length
                    if Mask(8, 248, mem[128]) != 0x7600000000000000000000000000000000000000000000000000000000000000:
                        require ext_code.size(address(stor7[arg1].field_320))
                        call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                             gas gas_remaining - 710 wei
                            args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                        require ext_call.success
                        emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                    else:
                        require 1 < arg2.length
                        if Mask(8, 248, mem[129]) != 0x3d00000000000000000000000000000000000000000000000000000000000000:
                            require ext_code.size(address(stor7[arg1].field_320))
                            call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                 gas gas_remaining - 710 wei
                                args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                            require ext_call.success
                            emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                        else:
                            idx = 2
                            s = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                require idx < arg2.length
                                if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                require idx < arg2.length
                                idx = idx + 1
                                s = (10 * s) + mem[idx + 128 len 1] - 48
                                continue 
                            require ext_code.size(address(stor7[arg1].field_320))
                            call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                 gas gas_remaining - 710 wei
                                args uint64(stor7[arg1].field_256), s, stor7[arg1].field_0
                            require ext_call.success
                            emit LogReceiveQuery(uint64(stor7[arg1].field_256), s, 0, arg1);
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
                    emit LogReceiveQuery(0, 0, 2, arg1);
                else:
                    mem[0] = arg1
                    mem[32] = 7
                    if not address(stor7[arg1].field_320):
                        emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 2, arg1);
                    else:
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 192] = 0
                        require 0 < arg2.length
                        if Mask(8, 248, mem[128]) != 0x7600000000000000000000000000000000000000000000000000000000000000:
                            require ext_code.size(address(stor7[arg1].field_320))
                            call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                 gas gas_remaining - 710 wei
                                args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                            require ext_call.success
                            emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                        else:
                            require 1 < arg2.length
                            if Mask(8, 248, mem[129]) != 0x3d00000000000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(address(stor7[arg1].field_320))
                                call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                     gas gas_remaining - 710 wei
                                    args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                                require ext_call.success
                                emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                            else:
                                idx = 2
                                s = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    require idx < arg2.length
                                    if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    require idx < arg2.length
                                    idx = idx + 1
                                    s = (10 * s) + mem[idx + 128 len 1] - 48
                                    continue 
                                require ext_code.size(address(stor7[arg1].field_320))
                                call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                     gas gas_remaining - 710 wei
                                    args uint64(stor7[arg1].field_256), s, stor7[arg1].field_0
                                require ext_call.success
                                emit LogReceiveQuery(uint64(stor7[arg1].field_256), s, 0, arg1);
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
                        emit LogReceiveQuery(0, 0, 2, arg1);
                    else:
                        mem[0] = arg1
                        mem[32] = 7
                        if not address(stor7[arg1].field_320):
                            emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 2, arg1);
                        else:
                            mem[64] = ceil32(arg2.length) + 224
                            mem[ceil32(arg2.length) + 192] = 0
                            require 0 < arg2.length
                            if Mask(8, 248, mem[128]) != 0x7600000000000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(address(stor7[arg1].field_320))
                                call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                     gas gas_remaining - 710 wei
                                    args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                                require ext_call.success
                                emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                            else:
                                require 1 < arg2.length
                                if Mask(8, 248, mem[129]) != 0x3d00000000000000000000000000000000000000000000000000000000000000:
                                    require ext_code.size(address(stor7[arg1].field_320))
                                    call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                         gas gas_remaining - 710 wei
                                        args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                                    require ext_call.success
                                    emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                                else:
                                    idx = 2
                                    s = 0
                                    while idx < arg2.length:
                                        require idx < arg2.length
                                        if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        require idx < arg2.length
                                        if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        require idx < arg2.length
                                        idx = idx + 1
                                        s = (10 * s) + mem[idx + 128 len 1] - 48
                                        continue 
                                    require ext_code.size(address(stor7[arg1].field_320))
                                    call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                         gas gas_remaining - 710 wei
                                        args uint64(stor7[arg1].field_256), s, stor7[arg1].field_0
                                    require ext_call.success
                                    emit LogReceiveQuery(uint64(stor7[arg1].field_256), s, 0, arg1);
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
                            emit LogReceiveQuery(0, 0, 2, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 7
                            if not address(stor7[arg1].field_320):
                                emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 2, arg1);
                            else:
                                mem[64] = ceil32(arg2.length) + 160
                                mem[ceil32(arg2.length) + 128] = 0
                                require 0 < arg2.length
                                if Mask(8, 248, mem[128]) != 0x7600000000000000000000000000000000000000000000000000000000000000:
                                    require ext_code.size(address(stor7[arg1].field_320))
                                    call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                         gas gas_remaining - 710 wei
                                        args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                                    require ext_call.success
                                    emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                                else:
                                    require 1 < arg2.length
                                    if Mask(8, 248, mem[129]) != 0x3d00000000000000000000000000000000000000000000000000000000000000:
                                        require ext_code.size(address(stor7[arg1].field_320))
                                        call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                             gas gas_remaining - 710 wei
                                            args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                                        require ext_call.success
                                        emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                                    else:
                                        idx = 2
                                        s = 0
                                        while idx < arg2.length:
                                            require idx < arg2.length
                                            if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                                                idx = idx + 1
                                                s = s
                                                continue 
                                            require idx < arg2.length
                                            if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                                                idx = idx + 1
                                                s = s
                                                continue 
                                            require idx < arg2.length
                                            idx = idx + 1
                                            s = (10 * s) + mem[idx + 128 len 1] - 48
                                            continue 
                                        require ext_code.size(address(stor7[arg1].field_320))
                                        call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                             gas gas_remaining - 710 wei
                                            args uint64(stor7[arg1].field_256), s, stor7[arg1].field_0
                                        require ext_call.success
                                        emit LogReceiveQuery(uint64(stor7[arg1].field_256), s, 0, arg1);
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
                            emit LogReceiveQuery(0, 0, 2, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 7
                            if not address(stor7[arg1].field_320):
                                emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 2, arg1);
                            else:
                                mem[64] = ceil32(arg2.length) + 224
                                mem[ceil32(arg2.length) + 192] = 0
                                require 0 < arg2.length
                                if Mask(8, 248, mem[128]) != 0x7600000000000000000000000000000000000000000000000000000000000000:
                                    require ext_code.size(address(stor7[arg1].field_320))
                                    call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                         gas gas_remaining - 710 wei
                                        args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                                    require ext_call.success
                                    emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                                else:
                                    require 1 < arg2.length
                                    if Mask(8, 248, mem[129]) != 0x3d00000000000000000000000000000000000000000000000000000000000000:
                                        require ext_code.size(address(stor7[arg1].field_320))
                                        call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                             gas gas_remaining - 710 wei
                                            args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                                        require ext_call.success
                                        emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                                    else:
                                        idx = 2
                                        s = 0
                                        while idx < arg2.length:
                                            require idx < arg2.length
                                            if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                                                idx = idx + 1
                                                s = s
                                                continue 
                                            require idx < arg2.length
                                            if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                                                idx = idx + 1
                                                s = s
                                                continue 
                                            require idx < arg2.length
                                            idx = idx + 1
                                            s = (10 * s) + mem[idx + 128 len 1] - 48
                                            continue 
                                        require ext_code.size(address(stor7[arg1].field_320))
                                        call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                             gas gas_remaining - 710 wei
                                            args uint64(stor7[arg1].field_256), s, stor7[arg1].field_0
                                        require ext_call.success
                                        emit LogReceiveQuery(uint64(stor7[arg1].field_256), s, 0, arg1);
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
                emit LogReceiveQuery(0, 0, 2, arg1);
            else:
                mem[0] = arg1
                mem[32] = 7
                if not address(stor7[arg1].field_320):
                    emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 2, arg1);
                else:
                    mem[64] = ceil32(arg2.length) + 160
                    mem[ceil32(arg2.length) + 128] = 0
                    require 0 < arg2.length
                    if Mask(8, 248, mem[128]) != 0x7600000000000000000000000000000000000000000000000000000000000000:
                        require ext_code.size(address(stor7[arg1].field_320))
                        call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                             gas gas_remaining - 710 wei
                            args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                        require ext_call.success
                        emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                    else:
                        require 1 < arg2.length
                        if Mask(8, 248, mem[129]) != 0x3d00000000000000000000000000000000000000000000000000000000000000:
                            require ext_code.size(address(stor7[arg1].field_320))
                            call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                 gas gas_remaining - 710 wei
                                args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                            require ext_call.success
                            emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                        else:
                            idx = 2
                            s = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                require idx < arg2.length
                                if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                require idx < arg2.length
                                idx = idx + 1
                                s = (10 * s) + mem[idx + 128 len 1] - 48
                                continue 
                            require ext_code.size(address(stor7[arg1].field_320))
                            call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                 gas gas_remaining - 710 wei
                                args uint64(stor7[arg1].field_256), s, stor7[arg1].field_0
                            require ext_call.success
                            emit LogReceiveQuery(uint64(stor7[arg1].field_256), s, 0, arg1);
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
                    emit LogReceiveQuery(0, 0, 2, arg1);
                else:
                    mem[0] = arg1
                    mem[32] = 7
                    if not address(stor7[arg1].field_320):
                        emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 2, arg1);
                    else:
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 192] = 0
                        require 0 < arg2.length
                        if Mask(8, 248, mem[128]) != 0x7600000000000000000000000000000000000000000000000000000000000000:
                            require ext_code.size(address(stor7[arg1].field_320))
                            call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                 gas gas_remaining - 710 wei
                                args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                            require ext_call.success
                            emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                        else:
                            require 1 < arg2.length
                            if Mask(8, 248, mem[129]) != 0x3d00000000000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(address(stor7[arg1].field_320))
                                call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                     gas gas_remaining - 710 wei
                                    args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                                require ext_call.success
                                emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                            else:
                                idx = 2
                                s = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    require idx < arg2.length
                                    if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    require idx < arg2.length
                                    idx = idx + 1
                                    s = (10 * s) + mem[idx + 128 len 1] - 48
                                    continue 
                                require ext_code.size(address(stor7[arg1].field_320))
                                call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                     gas gas_remaining - 710 wei
                                    args uint64(stor7[arg1].field_256), s, stor7[arg1].field_0
                                require ext_call.success
                                emit LogReceiveQuery(uint64(stor7[arg1].field_256), s, 0, arg1);
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
                        emit LogReceiveQuery(0, 0, 2, arg1);
                    else:
                        mem[0] = arg1
                        mem[32] = 7
                        if not address(stor7[arg1].field_320):
                            emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 2, arg1);
                        else:
                            mem[64] = ceil32(arg2.length) + 224
                            mem[ceil32(arg2.length) + 192] = 0
                            require 0 < arg2.length
                            if Mask(8, 248, mem[128]) != 0x7600000000000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(address(stor7[arg1].field_320))
                                call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                     gas gas_remaining - 710 wei
                                    args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                                require ext_call.success
                                emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                            else:
                                require 1 < arg2.length
                                if Mask(8, 248, mem[129]) != 0x3d00000000000000000000000000000000000000000000000000000000000000:
                                    require ext_code.size(address(stor7[arg1].field_320))
                                    call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                         gas gas_remaining - 710 wei
                                        args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                                    require ext_call.success
                                    emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                                else:
                                    idx = 2
                                    s = 0
                                    while idx < arg2.length:
                                        require idx < arg2.length
                                        if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        require idx < arg2.length
                                        if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        require idx < arg2.length
                                        idx = idx + 1
                                        s = (10 * s) + mem[idx + 128 len 1] - 48
                                        continue 
                                    require ext_code.size(address(stor7[arg1].field_320))
                                    call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                         gas gas_remaining - 710 wei
                                        args uint64(stor7[arg1].field_256), s, stor7[arg1].field_0
                                    require ext_call.success
                                    emit LogReceiveQuery(uint64(stor7[arg1].field_256), s, 0, arg1);
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
                            emit LogReceiveQuery(0, 0, 2, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 7
                            if not address(stor7[arg1].field_320):
                                emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 2, arg1);
                            else:
                                mem[64] = ceil32(arg2.length) + 224
                                mem[ceil32(arg2.length) + 192] = 0
                                require 0 < arg2.length
                                if Mask(8, 248, mem[128]) != 0x7600000000000000000000000000000000000000000000000000000000000000:
                                    require ext_code.size(address(stor7[arg1].field_320))
                                    call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                         gas gas_remaining - 710 wei
                                        args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                                    require ext_call.success
                                    emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                                else:
                                    require 1 < arg2.length
                                    if Mask(8, 248, mem[129]) != 0x3d00000000000000000000000000000000000000000000000000000000000000:
                                        require ext_code.size(address(stor7[arg1].field_320))
                                        call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                             gas gas_remaining - 710 wei
                                            args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                                        require ext_call.success
                                        emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                                    else:
                                        idx = 2
                                        s = 0
                                        while idx < arg2.length:
                                            require idx < arg2.length
                                            if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                                                idx = idx + 1
                                                s = s
                                                continue 
                                            require idx < arg2.length
                                            if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                                                idx = idx + 1
                                                s = s
                                                continue 
                                            require idx < arg2.length
                                            idx = idx + 1
                                            s = (10 * s) + mem[idx + 128 len 1] - 48
                                            continue 
                                        require ext_code.size(address(stor7[arg1].field_320))
                                        call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                             gas gas_remaining - 710 wei
                                            args uint64(stor7[arg1].field_256), s, stor7[arg1].field_0
                                        require ext_call.success
                                        emit LogReceiveQuery(uint64(stor7[arg1].field_256), s, 0, arg1);
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
                                emit LogReceiveQuery(0, 0, 2, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 7
                                if not address(stor7[arg1].field_320):
                                    emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 2, arg1);
                                else:
                                    mem[64] = ceil32(arg2.length) + 160
                                    mem[ceil32(arg2.length) + 128] = 0
                                    require 0 < arg2.length
                                    if Mask(8, 248, mem[128]) != 0x7600000000000000000000000000000000000000000000000000000000000000:
                                        require ext_code.size(address(stor7[arg1].field_320))
                                        call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                             gas gas_remaining - 710 wei
                                            args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                                        require ext_call.success
                                        emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                                    else:
                                        require 1 < arg2.length
                                        if Mask(8, 248, mem[129]) != 0x3d00000000000000000000000000000000000000000000000000000000000000:
                                            require ext_code.size(address(stor7[arg1].field_320))
                                            call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                                 gas gas_remaining - 710 wei
                                                args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                                            require ext_call.success
                                            emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                                        else:
                                            idx = 2
                                            s = 0
                                            while idx < arg2.length:
                                                require idx < arg2.length
                                                if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                                                    idx = idx + 1
                                                    s = s
                                                    continue 
                                                require idx < arg2.length
                                                if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                                                    idx = idx + 1
                                                    s = s
                                                    continue 
                                                require idx < arg2.length
                                                idx = idx + 1
                                                s = (10 * s) + mem[idx + 128 len 1] - 48
                                                continue 
                                            require ext_code.size(address(stor7[arg1].field_320))
                                            call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                                 gas gas_remaining - 710 wei
                                                args uint64(stor7[arg1].field_256), s, stor7[arg1].field_0
                                            require ext_call.success
                                            emit LogReceiveQuery(uint64(stor7[arg1].field_256), s, 0, arg1);
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
                                emit LogReceiveQuery(0, 0, 2, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 7
                                if not address(stor7[arg1].field_320):
                                    emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 2, arg1);
                                else:
                                    mem[64] = ceil32(arg2.length) + 224
                                    mem[ceil32(arg2.length) + 192] = 0
                                    require 0 < arg2.length
                                    if Mask(8, 248, mem[128]) != 0x7600000000000000000000000000000000000000000000000000000000000000:
                                        require ext_code.size(address(stor7[arg1].field_320))
                                        call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                             gas gas_remaining - 710 wei
                                            args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                                        require ext_call.success
                                        emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                                    else:
                                        require 1 < arg2.length
                                        if Mask(8, 248, mem[129]) != 0x3d00000000000000000000000000000000000000000000000000000000000000:
                                            require ext_code.size(address(stor7[arg1].field_320))
                                            call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                                 gas gas_remaining - 710 wei
                                                args uint64(stor7[arg1].field_256), 0, stor7[arg1].field_0
                                            require ext_call.success
                                            emit LogReceiveQuery(uint64(stor7[arg1].field_256), 0, 0, arg1);
                                        else:
                                            idx = 2
                                            s = 0
                                            while idx < arg2.length:
                                                require idx < arg2.length
                                                if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                                                    idx = idx + 1
                                                    s = s
                                                    continue 
                                                require idx < arg2.length
                                                if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                                                    idx = idx + 1
                                                    s = s
                                                    continue 
                                                require idx < arg2.length
                                                idx = idx + 1
                                                s = (10 * s) + mem[idx + 128 len 1] - 48
                                                continue 
                                            require ext_code.size(address(stor7[arg1].field_320))
                                            call address(stor7[arg1].field_320).callbackCrossFork(uint64 rg1, uint256 rg2, bytes32 rg3) with:
                                                 gas gas_remaining - 710 wei
                                                args uint64(stor7[arg1].field_256), s, stor7[arg1].field_0
                                            require ext_call.success
                                            emit LogReceiveQuery(uint64(stor7[arg1].field_256), s, 0, arg1);
}



}
