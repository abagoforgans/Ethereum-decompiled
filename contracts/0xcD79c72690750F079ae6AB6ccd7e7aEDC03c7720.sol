contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint128 stor4; offset 160
address stor4;
array of struct stor5;
mapping of uint256 stor259;
uint256 stor262; offset 8
uint256 stor263;
uint256 stor264;
uint256 stor265;
uint256 stor266;
uint256 stor267;
array of address stor268;
mapping of uint8 stor269;
uint256 stor270;
uint256 stor271;
uint256 stor272;
uint256 stor273;
uint256 stor274;
uint256 stor275;
uint256 stor276;
uint256 stor277;
uint256 stor278;
array of address stor55954001492562661816917015032863736256784761308656431956626347128918478212404;

function _fallback() payable {
    mem[96 len -14520] = code.data[15551 len -14520]
    mem[64] = -14424
    stor2 = mem[mem[96] + 96] + 1
    address(stor4.field_0) = msg.sender
    Mask(96, 0, stor4.field_160) = 0
    mem[0] = msg.sender
    mem[32] = 259
    stor259[address(msg.sender)] = 1
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require idx + 2 < 256
        stor5[idx].field_0 = mem[(32 * idx) + mem[96] + 140 len 20]
        stor5[idx].field_160 = 0
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 259
        stor259[mem[(32 * idx) + mem[96] + 140 len 20]] = idx + 2
        idx = idx + 1
        continue 
    stor0 = mem[128]
    stor1 = mem[160]
    stor262 = mem[225 len 31]
    stor263 = mem[256]
    stor264 = mem[288]
    stor265 = mem[320]
    stor267 = mem[352]
    stor266 = mem[384]
    stor271 = mem[416]
    stor270 = mem[448]
    stor272 = block.number
    stor273 = 100
    stor274 = 30
    stor275 = 50
    stor276 = 3
    stor277 = 200
    stor278 = mem[480]
    idx = 0
    while idx < stor268.length:
        mem[0] = stor7BB4[idx]
        mem[32] = 269
        stor269[stor7BB4[idx]] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[mem[192] + 96]:
        require idx < mem[mem[192] + 96]
        mem[0] = mem[(32 * idx) + mem[192] + 140 len 20]
        mem[32] = 269
        stor269[mem[(32 * idx) + mem[192] + 140 len 20]] = 1
        idx = idx + 1
        continue 
    stor268.length = mem[mem[192] + 96]
    if not mem[mem[192] + 96]:
        idx = 0
        while stor268.length > idx:
            address(stor268[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[192] + 128
        while mem[192] + (32 * mem[mem[192] + 96]) + 128 > idx:
            uint256(stor268[s]) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[192] + 96]) + 31) >> 5
        while stor268.length > idx:
            address(stor268[idx]) = 0
            idx = idx + 1
            continue 
    return code.data[1031 len 14520]
}



// =====================  Runtime code  =====================


const sub_06c3a2fc(?) = 11

const sub_0d4a4723(?) = 9

const sub_6448f6e1(?) = 3

const sub_692a365d(?) = 1

const sub_95a19df5(?) = 14

const sub_97b7b03d(?) = 5

const sub_ac5d4234(?) = 7

const sub_c2b4748c(?) = 8

const sub_c75155fd(?) = 12

const sub_d2d209d9(?) = 2

const sub_e2ee74b9(?) = 10

const sub_e40e6294(?) = 13

const sub_eb5f9bb4(?) = 6

const sub_f5d2ad53(?) = 4


uint256 sub_5e59b39d;
uint256 sub_6c1a5f85;
uint256 m_numOwners;
array of struct stor3;
array of struct stor4;
mapping of uint256 stor259;
mapping of struct stor260;
array of uint256 stor261;
uint8 locked;
address sub_de890fc6Address; offset 8
address sub_76b12c37Address;
address sub_da78abbbAddress;
address exchangeAddress;
address sub_f3c5dcdeAddress;
address sub_d71a7c83Address;
uint256 stor267;
uint256 stor268;
mapping of uint8 sub_db2f9a2c;
uint256 stor270;
uint256 stor271;
uint256 stor272;
uint256 stor273;
uint256 stor274;
uint256 stor275;
uint256 stor276;
uint256 stor277;
uint256 sub_89001a85;
array of address sub_9bf6e147;

function m_numOwners() payable {
    return m_numOwners
}

function sub_5e59b39d(?) payable {
    return sub_5e59b39d
}

function sub_6c1a5f85(?) payable {
    return sub_6c1a5f85
}

function sub_76b12c37(?) payable {
    return sub_76b12c37Address
}

function sub_89001a85(?) payable {
    return sub_89001a85
}

function sub_9bf6e147(?) payable {
    require arg1 < stor268
    return sub_9bf6e147[arg1]
}

function locked() payable {
    return locked
}

function exchange() payable {
    return exchangeAddress
}

function sub_d71a7c83(?) payable {
    return address(sub_d71a7c83Address)
}

function sub_da78abbb(?) payable {
    return sub_da78abbbAddress
}

function sub_db2f9a2c(?) payable {
    return sub_db2f9a2c[arg1]
}

function sub_de890fc6(?) payable {
    return sub_de890fc6Address
}

function sub_f3c5dcde(?) payable {
    return sub_f3c5dcdeAddress
}

function _fallback() payable {
  stop
}

function isOwner(address arg1) payable {
    return (stor259[address(arg1)] > 0)
}

function rate() payable {
    return stor270, stor271, stor272, stor273, stor274, stor275, stor276, stor277
}

function lock() payable {
    if stor259[address(msg.sender)] > 0:
        locked = 1
        emit 0x6d8db0d9: 1
}

function sub_59e4aec6(?) payable {
    call sub_de890fc6Address.0x3b035df6 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function hasConfirmed(bytes32 arg1, address arg2) payable {
    if stor259[address(arg2)] != 0:
        return 2^stor259[address(arg2)] and uint256(stor260[arg1].field_256) != 0
    else:
        return 0
}

function sub_f440e537(?) payable {
    call sub_de890fc6Address.0x4e4a7fa3 with:
         gas gas_remaining - 25050 wei
        args arg1, arg2
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function revoke(bytes32 arg1) payable {
    if stor259[address(msg.sender)] != 0:
        if 2^stor259[address(msg.sender)] and uint256(stor260[arg1].field_256) > 0:
            uint256(stor260[arg1].field_0)++
            uint256(stor260[arg1].field_256) -= 2^stor259[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function sub_bf5a3266(?) payable {
    if locked:
        emit code.data[14456 len 32]: 9
    else:
        if stor259[address(msg.sender)] > 0:
            call sub_de890fc6Address.setLocked(uint256 rg1, bool rg2) with:
                 gas gas_remaining - 25050 wei
                args arg1, arg2
            require ext_call.success
}

function sub_3ee1d90a(?) payable {
    if locked:
        emit code.data[14456 len 32]: 9
    else:
        if stor259[address(msg.sender)] > 0:
            call sub_76b12c37Address.0x81a9c410 with:
                 gas gas_remaining - 25050 wei
                args 0, 0, address(arg2), arg3, arg4
            require ext_call.success
            if ext_call.return_data[0]:
                emit 0xcb999c85: arg1
}

function addUser(uint256 arg1, address arg2) payable {
    if locked:
        emit code.data[14456 len 32]: 9
    else:
        if stor259[address(msg.sender)] > 0:
            create contract with 0 wei
                            code: code.data[13012 len 722], sub_76b12c37Address, arg1
            call sub_de890fc6Address.0xad9495ac with:
                 gas gas_remaining - 25050 wei
                args arg1, address(arg2), Array(len=1, data=address(create.new_address))
            require ext_call.success
            if ext_call.return_data[0]:
                emit 0x785caf87: arg1, address(create.new_address)
}

function sub_5c6a82a9(?) payable {
    if locked:
        emit code.data[14456 len 32]: 9
    else:
        call sub_de890fc6Address.0x3b035df6 with:
             gas gas_remaining - 25050 wei
            args arg1
        require ext_call.success
        if ext_call.return_data[0]:
            emit code.data[14456 len 32]: 2
        else:
            if stor259[address(msg.sender)] > 0:
                call sub_76b12c37Address.0x5c6a82a9 with:
                     gas gas_remaining - 25050 wei
                    args 0, uint32(arg1), arg2, arg3, arg4
                require ext_call.success
                if ext_call.return_data[0]:
                    emit 0x2754f6cf: arg1, arg2, arg3, arg4
}

function sub_88d27cd4(?) payable {
    if locked:
        emit code.data[14456 len 32]: 9
    else:
        call sub_de890fc6Address.0x3b035df6 with:
             gas gas_remaining - 25050 wei
            args arg2
        require ext_call.success
        if ext_call.return_data[0]:
            emit code.data[14456 len 32]: 2
        else:
            if not sub_db2f9a2c[address(msg.sender)]:
                emit code.data[14456 len 32]: 1
            else:
                call sub_da78abbbAddress.deposit(uint256 rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining - 25050 wei
                    args arg2, arg3, arg4
                require ext_call.success
                require ext_call.return_data[0]
                emit 0xbe38fa79: arg1, arg2, arg3, arg4, Array(len=arg5.length, data=arg5[all])
}

function sub_58d5aa2b(?) payable {
    if locked:
        emit code.data[14456 len 32]: 9
    else:
        call sub_de890fc6Address.0x3b035df6 with:
             gas gas_remaining - 25050 wei
            args arg1
        require ext_call.success
        if ext_call.return_data[0]:
            emit code.data[14456 len 32]: 2
        else:
            if stor259[address(msg.sender)] > 0:
                call sub_de890fc6Address.0x4240a6f0 with:
                     gas gas_remaining - 25050 wei
                    args arg1
                require ext_call.success
                call sub_de890fc6Address.0x553dec93 with:
                     gas gas_remaining - 25050 wei
                    args arg1, arg2
                if ext_call.return_data[0]:
                    emit 0x66ca80da: arg1, address(ext_call.return_data[0]), arg2
}

function getUser(uint256 arg1) payable {
    call sub_de890fc6Address.0x4240a6f0 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    call sub_de890fc6Address.0x4e4a7fa3 with:
         gas gas_remaining - 25050 wei
        args arg1, 0
    call sub_de890fc6Address.0xb613a6ac with:
         gas gas_remaining - 25050 wei
        args arg1
    call sub_de890fc6Address.0x3b035df6 with:
         gas gas_remaining - 25050 wei
        args arg1
    call sub_76b12c37Address.0x9507d39a with:
         gas gas_remaining - 25050 wei
        args arg1
    call sub_da78abbbAddress.0x9507d39a with:
         gas gas_remaining - 25050 wei
        args arg1
    return address(ext_call.return_data[0]), 
           address(ext_call.return_data[0]),
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function sub_2e2e392b(?) payable {
    if locked:
        emit code.data[14456 len 32]: 9
    else:
        call sub_de890fc6Address.0x3b035df6 with:
             gas gas_remaining - 25050 wei
            args arg1
        require ext_call.success
        if ext_call.return_data[0]:
            emit code.data[14456 len 32]: 2
        else:
            if stor259[address(msg.sender)] > 0:
                create contract with 0 wei
                                code: code.data[13734 len 722], sub_76b12c37Address, arg1
                call sub_de890fc6Address.0x81de08d6 with:
                     gas gas_remaining - 25050 wei
                    args arg1, address(create.new_address)
                require ext_call.success
                if not ext_call.return_data[0]:
                    emit code.data[14456 len 32]: 10
                else:
                    emit 0xaeb1c3ca: arg1, address(create.new_address)
}

function closeSell(uint256 arg1) payable {
    if locked:
        emit code.data[14456 len 32]: 9
    else:
        if stor259[address(msg.sender)] > 0:
            call exchangeAddress.0xdd92a8b0 with:
                 gas gas_remaining - 25050 wei
                args arg1
            require ext_call.success
            if not ext_call.return_data[0]:
                emit code.data[14456 len 32]: 12
            else:
                call sub_da78abbbAddress.deposit(uint256 rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                require ext_call.success
                require ext_call.return_data[0]
                call sub_de890fc6Address.0x3b035df6 with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[32]
                require ext_call.success
                require not ext_call.return_data[0]
                emit 0xe0e81b55: arg1
}

function sub_bd1a1f9c(?) payable {
    if locked:
        emit code.data[14456 len 32]: 9
    else:
        if sub_f3c5dcdeAddress != msg.sender:
            emit code.data[14456 len 32]: 7
        else:
            call exchangeAddress.0x5ff1605 with:
                 gas gas_remaining - 25050 wei
                args arg1, msg.value
            require ext_call.success
            if not ext_call.return_data[0]:
                emit code.data[14456 len 32]: 14
            else:
                call sub_76b12c37Address.0x83f6506d with:
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                    args ext_call.return_data[32], ext_call.return_data[64]
                require ext_call.success
                require ext_call.return_data[0]
                call sub_de890fc6Address.0x3b035df6 with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[32]
                require ext_call.success
                require not ext_call.return_data[0]
                emit 0x2a1bac33: arg1
}

function sub_bd1ed5c3(?) payable {
    if locked:
        emit code.data[14456 len 32]: 9
    else:
        call sub_de890fc6Address.0xbb085deb with:
             gas gas_remaining - 25050 wei
            args msg.sender
        require ext_call.success
        if 0 == ext_call.return_data[0]:
            emit code.data[14456 len 32]: 6
        else:
            call sub_de890fc6Address.0x3b035df6 with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0]:
                emit code.data[14456 len 32]: 2
            else:
                if ext_call.return_data[0] != 0:
                    call sub_da78abbbAddress.0x96ab9576 with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0], arg2, arg3
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        emit code.data[14456 len 32]: 5
                    else:
                        call sub_da78abbbAddress.0xa41fe49f with:
                             gas gas_remaining - 25050 wei
                            args ext_call.return_data[0], arg2, arg3
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit 0x67cdfd75: arg1, ext_call.return_data[0], arg2, arg3, Array(len=arg4.length, data=arg4[all])
}

function sub_3fc981a0(?) payable {
    if locked:
        emit code.data[14456 len 32]: 9
    else:
        call sub_de890fc6Address.0xbb085deb with:
             gas gas_remaining - 25050 wei
            args msg.sender
        require ext_call.success
        if 0 == ext_call.return_data[0]:
            emit code.data[14456 len 32]: 6
        else:
            call sub_de890fc6Address.0x3b035df6 with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0]:
                emit code.data[14456 len 32]: 2
            else:
                if ext_call.return_data[0] != 0:
                    call sub_76b12c37Address.0x96ab9576 with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0], arg2, arg3
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        emit code.data[14456 len 32]: 5
                    else:
                        if eth.balance(sub_76b12c37Address) < arg2:
                            call sub_76b12c37Address.0xea5cff53 with:
                                 gas gas_remaining - 25050 wei
                                args ext_call.return_data[0], arg2, arg3
                            require ext_call.success
                            if ext_call.return_data[0]:
                                emit 0x877e2e76: arg1, ext_call.return_data[0], address(arg4), arg2, arg3, Array(len=arg5.length, data=arg5[all])
                        else:
                            if arg2 > sub_89001a85:
                                call sub_76b12c37Address.0xea5cff53 with:
                                     gas gas_remaining - 25050 wei
                                    args ext_call.return_data[0], arg2, arg3
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    emit 0x877e2e76: arg1, ext_call.return_data[0], address(arg4), arg2, arg3, Array(len=arg5.length, data=arg5[all])
                            else:
                                call sub_76b12c37Address.0x753f4c37 with:
                                     gas gas_remaining - 25050 wei
                                    args ext_call.return_data[0], msg.sender, arg2, arg3, 0, 192, 0
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    emit 0x57c62471: arg1, ext_call.return_data[0], address(arg4), arg2, arg3, Array(len=arg5.length, data=arg5[all])
}

function unlock() payable {
    if stor259[address(msg.sender)] != 0:
        if not uint256(stor260[call.data[0 len calldata.size]].field_0):
            uint256(stor260[call.data[0 len calldata.size]].field_0) = sub_6c1a5f85
            uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            uint256(stor260[call.data[0 len calldata.size]].field_512) = stor261.length
            require stor261.length < stor261.length
            uint256(stor[code.data[14488 len 32] + stor261.length]) = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and uint256(stor260[call.data[0 len calldata.size]].field_256):
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if uint256(stor260[call.data[0 len calldata.size]].field_0) > 1:
                uint256(stor260[call.data[0 len calldata.size]].field_0)--
                uint256(stor260[call.data[0 len calldata.size]].field_256) = 2^stor259[address(msg.sender)] or uint256(stor260[call.data[0 len calldata.size]].field_256)
            else:
                require uint256(stor260[call.data[0 len calldata.size]].field_512) < stor261.length
                uint256(stor[code.data[14488 len 32] + uint256(stor260[call.data[0 len calldata.size]].field_512)]) = 0
                uint256(stor260[call.data[0 len calldata.size]].field_0) = 0
                uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
                uint256(stor260[call.data[0 len calldata.size]].field_512) = 0
                idx = 0
                while idx < stor261.length:
                    mem[0] = 261
                    if uint256(stor[code.data[14488 len 32] + idx]):
                        require idx < stor261.length
                        mem[0] = uint256(stor[code.data[14488 len 32] + idx])
                        mem[32] = 260
                        uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_0) = 0
                        uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_256) = 0
                        uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_512) = 0
                    idx = idx + 1
                    continue 
                stor261.length = 0
                idx = code.data[14488 len 32]
                while code.data[14488 len 32] + stor261.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
                locked = 0
                emit 0x6d8db0d9: 0
}

function sub_a84ab58a(?) payable {
    if stor259[address(msg.sender)] != 0:
        if not uint256(stor260[call.data[0 len calldata.size]].field_0):
            uint256(stor260[call.data[0 len calldata.size]].field_0) = sub_6c1a5f85
            uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            uint256(stor260[call.data[0 len calldata.size]].field_512) = stor261.length
            require stor261.length < stor261.length
            uint256(stor[code.data[14488 len 32] + stor261.length]) = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and uint256(stor260[call.data[0 len calldata.size]].field_256):
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if uint256(stor260[call.data[0 len calldata.size]].field_0) > 1:
                uint256(stor260[call.data[0 len calldata.size]].field_0)--
                uint256(stor260[call.data[0 len calldata.size]].field_256) = 2^stor259[address(msg.sender)] or uint256(stor260[call.data[0 len calldata.size]].field_256)
            else:
                require uint256(stor260[call.data[0 len calldata.size]].field_512) < stor261.length
                uint256(stor[code.data[14488 len 32] + uint256(stor260[call.data[0 len calldata.size]].field_512)]) = 0
                uint256(stor260[call.data[0 len calldata.size]].field_0) = 0
                uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
                uint256(stor260[call.data[0 len calldata.size]].field_512) = 0
                idx = 0
                while idx < stor261.length:
                    mem[0] = 261
                    if uint256(stor[code.data[14488 len 32] + idx]):
                        require idx < stor261.length
                        mem[0] = uint256(stor[code.data[14488 len 32] + idx])
                        mem[32] = 260
                        uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_0) = 0
                        uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_256) = 0
                        uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_512) = 0
                    idx = idx + 1
                    continue 
                stor261.length = 0
                idx = code.data[14488 len 32]
                while code.data[14488 len 32] + stor261.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
                stor276 = arg1
                stor273 = arg2
                stor274 = arg4
                stor275 = arg5
                stor277 = arg3
}

function sub_823d6122(?) payable {
    if stor259[address(msg.sender)] != 0:
        if not uint256(stor260[call.data[0 len calldata.size]].field_0):
            uint256(stor260[call.data[0 len calldata.size]].field_0) = sub_6c1a5f85
            uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            uint256(stor260[call.data[0 len calldata.size]].field_512) = stor261.length
            require stor261.length < stor261.length
            uint256(stor[code.data[14488 len 32] + stor261.length]) = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and uint256(stor260[call.data[0 len calldata.size]].field_256):
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if uint256(stor260[call.data[0 len calldata.size]].field_0) > 1:
                uint256(stor260[call.data[0 len calldata.size]].field_0)--
                uint256(stor260[call.data[0 len calldata.size]].field_256) = 2^stor259[address(msg.sender)] or uint256(stor260[call.data[0 len calldata.size]].field_256)
            else:
                require uint256(stor260[call.data[0 len calldata.size]].field_512) < stor261.length
                uint256(stor[code.data[14488 len 32] + uint256(stor260[call.data[0 len calldata.size]].field_512)]) = 0
                uint256(stor260[call.data[0 len calldata.size]].field_0) = 0
                uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
                uint256(stor260[call.data[0 len calldata.size]].field_512) = 0
                idx = 0
                while idx < stor261.length:
                    mem[0] = 261
                    if uint256(stor[code.data[14488 len 32] + idx]):
                        require idx < stor261.length
                        mem[0] = uint256(stor[code.data[14488 len 32] + idx])
                        mem[32] = 260
                        uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_0) = 0
                        uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_256) = 0
                        uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_512) = 0
                    idx = idx + 1
                    continue 
                stor261.length = 0
                idx = code.data[14488 len 32]
                while code.data[14488 len 32] + stor261.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
                stor271 = arg1
                stor270 = arg2
                stor272 = block.number
                emit 0xdd20a4d3: arg1, arg2, stor271, stor270, stor272
}

function sub_0a8736d5(?) payable {
    if locked:
        emit code.data[14456 len 32]: 9
    else:
        if stor259[address(msg.sender)] != 0:
            if not uint256(stor260[call.data[0 len calldata.size]].field_0):
                uint256(stor260[call.data[0 len calldata.size]].field_0) = sub_6c1a5f85
                uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
                stor261.length++
                if not stor261.length <= stor261.length + 1:
                    idx = stor261.length + 1
                    while stor261.length > idx:
                        stor261[idx] = 0
                        idx = idx + 1
                        continue 
                uint256(stor260[call.data[0 len calldata.size]].field_512) = stor261.length
                require stor261.length < stor261.length
                uint256(stor[code.data[14488 len 32] + stor261.length]) = sha3(call.data[0 len calldata.size])
            if 0 == 2^stor259[address(msg.sender)] and uint256(stor260[call.data[0 len calldata.size]].field_256):
                emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
                if uint256(stor260[call.data[0 len calldata.size]].field_0) > 1:
                    uint256(stor260[call.data[0 len calldata.size]].field_0)--
                    uint256(stor260[call.data[0 len calldata.size]].field_256) = 2^stor259[address(msg.sender)] or uint256(stor260[call.data[0 len calldata.size]].field_256)
                else:
                    require uint256(stor260[call.data[0 len calldata.size]].field_512) < stor261.length
                    uint256(stor[code.data[14488 len 32] + uint256(stor260[call.data[0 len calldata.size]].field_512)]) = 0
                    uint256(stor260[call.data[0 len calldata.size]].field_0) = 0
                    uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
                    uint256(stor260[call.data[0 len calldata.size]].field_512) = 0
                    idx = 0
                    while idx < stor261.length:
                        mem[0] = 261
                        if uint256(stor[code.data[14488 len 32] + idx]):
                            require idx < stor261.length
                            mem[0] = uint256(stor[code.data[14488 len 32] + idx])
                            mem[32] = 260
                            uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_0) = 0
                            uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_256) = 0
                            uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_512) = 0
                        idx = idx + 1
                        continue 
                    stor261.length = 0
                    idx = code.data[14488 len 32]
                    while code.data[14488 len 32] + stor261.length > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                    uint256(stor267) = arg1 or Mask(96, 160, uint256(stor267))
                    emit 0x2febc185: address(arg1)
}

function sub_16ce5d54(?) payable {
    if stor259[address(msg.sender)] != 0:
        if not uint256(stor260[call.data[0 len calldata.size]].field_0):
            uint256(stor260[call.data[0 len calldata.size]].field_0) = sub_6c1a5f85
            uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            uint256(stor260[call.data[0 len calldata.size]].field_512) = stor261.length
            require stor261.length < stor261.length
            uint256(stor[code.data[14488 len 32] + stor261.length]) = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and uint256(stor260[call.data[0 len calldata.size]].field_256):
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if uint256(stor260[call.data[0 len calldata.size]].field_0) > 1:
                uint256(stor260[call.data[0 len calldata.size]].field_0)--
                uint256(stor260[call.data[0 len calldata.size]].field_256) = 2^stor259[address(msg.sender)] or uint256(stor260[call.data[0 len calldata.size]].field_256)
            else:
                require uint256(stor260[call.data[0 len calldata.size]].field_512) < stor261.length
                uint256(stor[code.data[14488 len 32] + uint256(stor260[call.data[0 len calldata.size]].field_512)]) = 0
                uint256(stor260[call.data[0 len calldata.size]].field_0) = 0
                uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
                uint256(stor260[call.data[0 len calldata.size]].field_512) = 0
                if arg1 <= m_numOwners:
                    if arg2 <= arg1:
                        sub_5e59b39d = arg1
                        sub_6c1a5f85 = arg2
                        idx = 0
                        while idx < stor261.length:
                            mem[0] = 261
                            if uint256(stor[code.data[14488 len 32] + idx]):
                                require idx < stor261.length
                                mem[0] = uint256(stor[code.data[14488 len 32] + idx])
                                mem[32] = 260
                                uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_0) = 0
                                uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_256) = 0
                                uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_512) = 0
                            idx = idx + 1
                            continue 
                        stor261.length = 0
                        idx = code.data[14488 len 32]
                        while code.data[14488 len 32] + stor261.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                        emit RequirementChanged(arg1, arg2);
}

function changeOwner(address arg1, address arg2) payable {
    if stor259[address(msg.sender)] != 0:
        if not uint256(stor260[call.data[0 len calldata.size]].field_0):
            uint256(stor260[call.data[0 len calldata.size]].field_0) = sub_6c1a5f85
            uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            uint256(stor260[call.data[0 len calldata.size]].field_512) = stor261.length
            require stor261.length < stor261.length
            uint256(stor[code.data[14488 len 32] + stor261.length]) = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and uint256(stor260[call.data[0 len calldata.size]].field_256):
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if uint256(stor260[call.data[0 len calldata.size]].field_0) > 1:
                uint256(stor260[call.data[0 len calldata.size]].field_0)--
                uint256(stor260[call.data[0 len calldata.size]].field_256) = 2^stor259[address(msg.sender)] or uint256(stor260[call.data[0 len calldata.size]].field_256)
            else:
                require uint256(stor260[call.data[0 len calldata.size]].field_512) < stor261.length
                uint256(stor[code.data[14488 len 32] + uint256(stor260[call.data[0 len calldata.size]].field_512)]) = 0
                uint256(stor260[call.data[0 len calldata.size]].field_0) = 0
                uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
                uint256(stor260[call.data[0 len calldata.size]].field_512) = 0
                if stor259[address(arg2)] <= 0:
                    if stor259[address(arg1)]:
                        idx = 0
                        while idx < stor261.length:
                            mem[0] = 261
                            if uint256(stor[code.data[14488 len 32] + idx]):
                                require idx < stor261.length
                                mem[0] = uint256(stor[code.data[14488 len 32] + idx])
                                mem[32] = 260
                                uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_0) = 0
                                uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_256) = 0
                                uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_512) = 0
                            idx = idx + 1
                            continue 
                        stor261.length = 0
                        idx = code.data[14488 len 32]
                        while code.data[14488 len 32] + stor261.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                        require stor259[address(arg1)] < 256
                        address(stor3[stor259[address(arg1)]].field_0) = arg2
                        Mask(96, 0, stor3[stor259[address(arg1)]].field_160) = 0
                        stor259[address(arg1)] = 0
                        stor259[arg2] = stor259[address(arg1)]
                        emit OwnerChanged(address(arg1), arg2);
}

function sub_91f6dc8f(?) payable {
    if locked:
        emit code.data[14456 len 32]: 9
    else:
        call sub_de890fc6Address.0x3b035df6 with:
             gas gas_remaining - 25050 wei
            args arg2
        require ext_call.success
        if ext_call.return_data[0]:
            emit code.data[14456 len 32]: 2
        else:
            if block.number - stor272 >= stor277:
                emit code.data[14456 len 32]: 4
            else:
                if block.number - stor272 < 0:
                    emit code.data[14456 len 32]: 3
                else:
                    if block.number - stor272 >= stor273:
                        if 100 * arg3 / arg4 / stor270 <= -stor275 + 100:
                            emit code.data[14456 len 32]: 3
                        else:
                            if 100 * arg3 / arg4 / stor270 >= stor275 + 100:
                                emit code.data[14456 len 32]: 3
                            else:
                                if stor259[address(msg.sender)] > 0:
                                    call sub_da78abbbAddress.0x96ab9576 with:
                                         gas gas_remaining - 25050 wei
                                        args arg2, arg4, arg6
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        emit code.data[14456 len 32]: 5
                                    else:
                                        call sub_da78abbbAddress.0xa41fe49f with:
                                             gas gas_remaining - 25050 wei
                                            args arg2, arg4, arg6
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            emit code.data[14456 len 32]: 13
                                        else:
                                            call exchangeAddress.0x91f6dc8f with:
                                                 gas gas_remaining - 25050 wei
                                                args arg1, arg2, arg3, arg4, arg5, arg6, Array(len=arg7.length, data=call.data[arg7 + 36 len 32 * arg7.length])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            emit 0x8bdc777c: arg1, arg2, arg3, arg4, arg5, arg6, Array(len=arg7.length, data=call.data[arg7 + 36 len 32 * arg7.length])
                    else:
                        if 100 * arg3 / arg4 / stor270 <= -stor274 + 100:
                            emit code.data[14456 len 32]: 3
                        else:
                            if 100 * arg3 / arg4 / stor270 >= stor274 + 100:
                                emit code.data[14456 len 32]: 3
                            else:
                                if stor259[address(msg.sender)] > 0:
                                    call sub_da78abbbAddress.0x96ab9576 with:
                                         gas gas_remaining - 25050 wei
                                        args arg2, arg4, arg6
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        emit code.data[14456 len 32]: 5
                                    else:
                                        call sub_da78abbbAddress.0xa41fe49f with:
                                             gas gas_remaining - 25050 wei
                                            args arg2, arg4, arg6
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            emit code.data[14456 len 32]: 13
                                        else:
                                            call exchangeAddress.0x91f6dc8f with:
                                                 gas gas_remaining - 25050 wei
                                                args arg1, arg2, arg3, arg4, arg5, arg6, Array(len=arg7.length, data=call.data[arg7 + 36 len 32 * arg7.length])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            emit 0x8bdc777c: arg1, arg2, arg3, arg4, arg5, arg6, Array(len=arg7.length, data=call.data[arg7 + 36 len 32 * arg7.length])
}

function sub_21096830(?) payable {
    if locked:
        emit code.data[14456 len 32]: 9
    else:
        call sub_de890fc6Address.0x3b035df6 with:
             gas gas_remaining - 25050 wei
            args arg2
        require ext_call.success
        if ext_call.return_data[0]:
            emit code.data[14456 len 32]: 2
        else:
            if block.number - stor272 >= stor277:
                emit code.data[14456 len 32]: 4
            else:
                if block.number - stor272 < 0:
                    emit code.data[14456 len 32]: 3
                else:
                    if block.number - stor272 >= stor273:
                        if 100 * arg3 / arg4 / stor271 <= -stor275 + 100:
                            emit code.data[14456 len 32]: 3
                        else:
                            if 100 * arg3 / arg4 / stor271 >= stor275 + 100:
                                emit code.data[14456 len 32]: 3
                            else:
                                if stor259[address(msg.sender)] > 0:
                                    call sub_76b12c37Address.0x96ab9576 with:
                                         gas gas_remaining - 25050 wei
                                        args arg2, arg3, arg5
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        emit code.data[14456 len 32]: 5
                                    else:
                                        call sub_76b12c37Address.0x753f4c37 with:
                                             gas gas_remaining - 25050 wei
                                            args arg2, address(sub_d71a7c83Address), arg3, arg5, 0, 192, 0
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            emit code.data[14456 len 32]: 11
                                        else:
                                            call exchangeAddress.0x21096830 with:
                                                 gas gas_remaining - 25050 wei
                                                args arg1, arg2, arg3, arg4, arg5, arg6, Array(len=arg7.length, data=call.data[arg7 + 36 len 32 * arg7.length])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            emit 0x943e5863: arg1, arg2, arg3, arg4, arg5, arg6, Array(len=arg7.length, data=call.data[arg7 + 36 len 32 * arg7.length])
                    else:
                        if 100 * arg3 / arg4 / stor271 <= -stor274 + 100:
                            emit code.data[14456 len 32]: 3
                        else:
                            if 100 * arg3 / arg4 / stor271 >= stor274 + 100:
                                emit code.data[14456 len 32]: 3
                            else:
                                if stor259[address(msg.sender)] > 0:
                                    call sub_76b12c37Address.0x96ab9576 with:
                                         gas gas_remaining - 25050 wei
                                        args arg2, arg3, arg5
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        emit code.data[14456 len 32]: 5
                                    else:
                                        call sub_76b12c37Address.0x753f4c37 with:
                                             gas gas_remaining - 25050 wei
                                            args arg2, address(sub_d71a7c83Address), arg3, arg5, 0, 192, 0
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            emit code.data[14456 len 32]: 11
                                        else:
                                            call exchangeAddress.0x21096830 with:
                                                 gas gas_remaining - 25050 wei
                                                args arg1, arg2, arg3, arg4, arg5, arg6, Array(len=arg7.length, data=call.data[arg7 + 36 len 32 * arg7.length])
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            emit 0x943e5863: arg1, arg2, arg3, arg4, arg5, arg6, Array(len=arg7.length, data=call.data[arg7 + 36 len 32 * arg7.length])
}

function sub_cf1e53da(?) payable {
    if locked:
        emit code.data[14456 len 32]: 9
    else:
        mem[96 len calldata.size] = call.data[0 len calldata.size]
        if stor259[address(msg.sender)] != 0:
            if not uint256(stor260[call.data[0 len calldata.size]].field_0):
                uint256(stor260[call.data[0 len calldata.size]].field_0) = sub_6c1a5f85
                uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
                stor261.length++
                if not stor261.length <= stor261.length + 1:
                    idx = stor261.length + 1
                    while stor261.length > idx:
                        stor261[idx] = 0
                        idx = idx + 1
                        continue 
                uint256(stor260[call.data[0 len calldata.size]].field_512) = stor261.length
                require stor261.length < stor261.length
                uint256(stor[code.data[14488 len 32] + stor261.length]) = sha3(call.data[0 len calldata.size])
            if 0 == 2^stor259[address(msg.sender)] and uint256(stor260[call.data[0 len calldata.size]].field_256):
                mem[128] = sha3(call.data[0 len calldata.size])
                emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
                if uint256(stor260[call.data[0 len calldata.size]].field_0) > 1:
                    uint256(stor260[call.data[0 len calldata.size]].field_0)--
                    uint256(stor260[call.data[0 len calldata.size]].field_256) = 2^stor259[address(msg.sender)] or uint256(stor260[call.data[0 len calldata.size]].field_256)
                else:
                    require uint256(stor260[call.data[0 len calldata.size]].field_512) < stor261.length
                    uint256(stor[code.data[14488 len 32] + uint256(stor260[call.data[0 len calldata.size]].field_512)]) = 0
                    uint256(stor260[call.data[0 len calldata.size]].field_0) = 0
                    uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
                    uint256(stor260[call.data[0 len calldata.size]].field_512) = 0
                    idx = 0
                    while idx < stor261.length:
                        mem[0] = 261
                        if uint256(stor[code.data[14488 len 32] + idx]):
                            require idx < stor261.length
                            mem[0] = uint256(stor[code.data[14488 len 32] + idx])
                            mem[32] = 260
                            uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_0) = 0
                            uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_256) = 0
                            uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_512) = 0
                        idx = idx + 1
                        continue 
                    stor261.length = 0
                    idx = code.data[14488 len 32]
                    while code.data[14488 len 32] + stor261.length > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
                    idx = 0
                    while idx < stor268:
                        mem[0] = sub_9bf6e147[idx]
                        mem[32] = 269
                        sub_db2f9a2c[stor7BB4[idx]] = 0
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg1.length:
                        require idx < arg1.length
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 269
                        sub_db2f9a2c[mem[(32 * idx) + 140 len 20]] = 1
                        idx = idx + 1
                        continue 
                    stor268 = arg1.length
                    if not arg1.length:
                        idx = 0x7bb4d7b0eaf94112c5cb7345d79f45887f7ebc12d67faa4efd6cf1d7c430cd34
                        while stor268 + 0x7bb4d7b0eaf94112c5cb7345d79f45887f7ebc12d67faa4efd6cf1d7c430cd34 > idx:
                            address(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0x7bb4d7b0eaf94112c5cb7345d79f45887f7ebc12d67faa4efd6cf1d7c430cd34
                        idx = 128
                        while (32 * arg1.length) + 128 > idx:
                            uint256(stor[s]) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = (Mask(251, 0, (32 * arg1.length) + 31) >> 5) + 0x7bb4d7b0eaf94112c5cb7345d79f45887f7ebc12d67faa4efd6cf1d7c430cd34
                        while stor268 + 0x7bb4d7b0eaf94112c5cb7345d79f45887f7ebc12d67faa4efd6cf1d7c430cd34 > idx:
                            address(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    emit 0xd2a8d773: Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
}

function setExchangeRates(uint256 arg1, uint256 arg2) payable {
    if stor259[address(msg.sender)] > 0:
        if block.number - stor272 < 0:
            emit code.data[14456 len 32]: 3
        else:
            if block.number - stor272 >= stor273:
                if 100 * arg1 / stor271 <= -stor275 + 100:
                    emit code.data[14456 len 32]: 3
                else:
                    if 100 * arg1 / stor271 >= stor275 + 100:
                        emit code.data[14456 len 32]: 3
                    else:
                        if block.number - stor272 < 0:
                            emit code.data[14456 len 32]: 3
                        else:
                            if block.number - stor272 >= stor273:
                                if 100 * arg2 / stor270 <= -stor275 + 100:
                                    emit code.data[14456 len 32]: 3
                                else:
                                    if 100 * arg2 / stor270 >= stor275 + 100:
                                        emit code.data[14456 len 32]: 3
                                    else:
                                        if stor272 > block.number:
                                            emit code.data[14456 len 32]: 8
                                        else:
                                            if block.number - stor272 < stor276:
                                                emit code.data[14456 len 32]: 8
                                            else:
                                                stor271 = arg1
                                                stor270 = arg2
                                                stor272 = block.number
                                                emit 0xdd20a4d3: arg1, arg2, stor271, stor270, stor272
                            else:
                                if 100 * arg2 / stor270 <= -stor274 + 100:
                                    emit code.data[14456 len 32]: 3
                                else:
                                    if 100 * arg2 / stor270 >= stor274 + 100:
                                        emit code.data[14456 len 32]: 3
                                    else:
                                        if stor272 > block.number:
                                            emit code.data[14456 len 32]: 8
                                        else:
                                            if block.number - stor272 < stor276:
                                                emit code.data[14456 len 32]: 8
                                            else:
                                                stor271 = arg1
                                                stor270 = arg2
                                                stor272 = block.number
                                                emit 0xdd20a4d3: arg1, arg2, stor271, stor270, stor272
            else:
                if 100 * arg1 / stor271 <= -stor274 + 100:
                    emit code.data[14456 len 32]: 3
                else:
                    if 100 * arg1 / stor271 >= stor274 + 100:
                        emit code.data[14456 len 32]: 3
                    else:
                        if block.number - stor272 < 0:
                            emit code.data[14456 len 32]: 3
                        else:
                            if block.number - stor272 >= stor273:
                                if 100 * arg2 / stor270 <= -stor275 + 100:
                                    emit code.data[14456 len 32]: 3
                                else:
                                    if 100 * arg2 / stor270 >= stor275 + 100:
                                        emit code.data[14456 len 32]: 3
                                    else:
                                        if stor272 > block.number:
                                            emit code.data[14456 len 32]: 8
                                        else:
                                            if block.number - stor272 < stor276:
                                                emit code.data[14456 len 32]: 8
                                            else:
                                                stor271 = arg1
                                                stor270 = arg2
                                                stor272 = block.number
                                                emit 0xdd20a4d3: arg1, arg2, stor271, stor270, stor272
                            else:
                                if 100 * arg2 / stor270 <= -stor274 + 100:
                                    emit code.data[14456 len 32]: 3
                                else:
                                    if 100 * arg2 / stor270 >= stor274 + 100:
                                        emit code.data[14456 len 32]: 3
                                    else:
                                        if stor272 > block.number:
                                            emit code.data[14456 len 32]: 8
                                        else:
                                            if block.number - stor272 < stor276:
                                                emit code.data[14456 len 32]: 8
                                            else:
                                                stor271 = arg1
                                                stor270 = arg2
                                                stor272 = block.number
                                                emit 0xdd20a4d3: arg1, arg2, stor271, stor270, stor272
}

function removeOwner(address arg1) payable {
    if 0 == stor259[address(msg.sender)]:
    if uint256(stor260[call.data[0 len calldata.size]].field_0):
        if 2^stor259[address(msg.sender)] and uint256(stor260[call.data[0 len calldata.size]].field_256) != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if uint256(stor260[call.data[0 len calldata.size]].field_0) > 1:
            uint256(stor260[call.data[0 len calldata.size]].field_0)--
            uint256(stor260[call.data[0 len calldata.size]].field_256) = 2^stor259[address(msg.sender)] or uint256(stor260[call.data[0 len calldata.size]].field_256)
        require uint256(stor260[call.data[0 len calldata.size]].field_512) < stor261.length
        uint256(stor[code.data[14488 len 32] + uint256(stor260[call.data[0 len calldata.size]].field_512)]) = 0
        uint256(stor260[call.data[0 len calldata.size]].field_0) = 0
        uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
        uint256(stor260[call.data[0 len calldata.size]].field_512) = 0
        if not stor259[address(arg1)]:
        if sub_5e59b39d > m_numOwners - 1:
        require stor259[address(arg1)] < 256
        uint256(stor3[stor259[address(arg1)]].field_0) = 0
        stor259[address(arg1)] = 0
        idx = 0
        while idx < stor261.length:
            mem[0] = 261
            if uint256(stor[code.data[14488 len 32] + idx]):
                require idx < stor261.length
                mem[0] = uint256(stor[code.data[14488 len 32] + idx])
                mem[32] = 260
                uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_0) = 0
                uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_256) = 0
                uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_512) = 0
            idx = idx + 1
            continue 
        stor261.length = 0
        idx = code.data[14488 len 32]
        while code.data[14488 len 32] + stor261.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        # nil
    else:
        uint256(stor260[call.data[0 len calldata.size]].field_0) = sub_6c1a5f85
        uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
        stor261.length++
        if not stor261.length > stor261.length + 1:
            uint256(stor260[call.data[0 len calldata.size]].field_512) = stor261.length
            require stor261.length < stor261.length
            uint256(stor[code.data[14488 len 32] + stor261.length]) = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and uint256(stor260[call.data[0 len calldata.size]].field_256) != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if uint256(stor260[call.data[0 len calldata.size]].field_0) > 1:
                uint256(stor260[call.data[0 len calldata.size]].field_0)--
                uint256(stor260[call.data[0 len calldata.size]].field_256) = 2^stor259[address(msg.sender)] or uint256(stor260[call.data[0 len calldata.size]].field_256)
            require uint256(stor260[call.data[0 len calldata.size]].field_512) < stor261.length
            uint256(stor[code.data[14488 len 32] + uint256(stor260[call.data[0 len calldata.size]].field_512)]) = 0
            uint256(stor260[call.data[0 len calldata.size]].field_0) = 0
            uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
            uint256(stor260[call.data[0 len calldata.size]].field_512) = 0
            if not stor259[address(arg1)]:
            if sub_5e59b39d > m_numOwners - 1:
            require stor259[address(arg1)] < 256
            uint256(stor3[stor259[address(arg1)]].field_0) = 0
            stor259[address(arg1)] = 0
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if uint256(stor[code.data[14488 len 32] + idx]):
                    require idx < stor261.length
                    mem[0] = uint256(stor[code.data[14488 len 32] + idx])
                    mem[32] = 260
                    uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_0) = 0
                    uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_256) = 0
                    uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_512) = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = code.data[14488 len 32]
            while code.data[14488 len 32] + stor261.length > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
            # nil
        else:
            idx = stor261.length + 1
            while stor261.length > idx:
                stor261[idx] = 0
                idx = idx + 1
                continue 
            uint256(stor260[call.data[0 len calldata.size]].field_512) = stor261.length
            require stor261.length < stor261.length
            uint256(stor[code.data[14488 len 32] + stor261.length]) = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and uint256(stor260[call.data[0 len calldata.size]].field_256) != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if uint256(stor260[call.data[0 len calldata.size]].field_0) > 1:
                uint256(stor260[call.data[0 len calldata.size]].field_0)--
                uint256(stor260[call.data[0 len calldata.size]].field_256) = 2^stor259[address(msg.sender)] or uint256(stor260[call.data[0 len calldata.size]].field_256)
            require uint256(stor260[call.data[0 len calldata.size]].field_512) < stor261.length
            uint256(stor[code.data[14488 len 32] + uint256(stor260[call.data[0 len calldata.size]].field_512)]) = 0
            uint256(stor260[call.data[0 len calldata.size]].field_0) = 0
            uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
            uint256(stor260[call.data[0 len calldata.size]].field_512) = 0
            if not stor259[address(arg1)]:
            if sub_5e59b39d > m_numOwners - 1:
            require stor259[address(arg1)] < 256
            uint256(stor3[stor259[address(arg1)]].field_0) = 0
            stor259[address(arg1)] = 0
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if uint256(stor[code.data[14488 len 32] + idx]):
                    require idx < stor261.length
                    mem[0] = uint256(stor[code.data[14488 len 32] + idx])
                    mem[32] = 260
                    uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_0) = 0
                    uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_256) = 0
                    uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_512) = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = code.data[14488 len 32]
            while code.data[14488 len 32] + stor261.length > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
            if 1 < m_numOwners:
                # nil
            else:
                emit OwnerRemoved(arg1);
}

function addOwner(address arg1) payable {
    if 0 == stor259[address(msg.sender)]:
    if uint256(stor260[call.data[0 len calldata.size]].field_0):
        if 2^stor259[address(msg.sender)] and uint256(stor260[call.data[0 len calldata.size]].field_256) != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if uint256(stor260[call.data[0 len calldata.size]].field_0) > 1:
            uint256(stor260[call.data[0 len calldata.size]].field_0)--
            uint256(stor260[call.data[0 len calldata.size]].field_256) = 2^stor259[address(msg.sender)] or uint256(stor260[call.data[0 len calldata.size]].field_256)
        require uint256(stor260[call.data[0 len calldata.size]].field_512) < stor261.length
        uint256(stor[code.data[14488 len 32] + uint256(stor260[call.data[0 len calldata.size]].field_512)]) = 0
        uint256(stor260[call.data[0 len calldata.size]].field_0) = 0
        uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
        uint256(stor260[call.data[0 len calldata.size]].field_512) = 0
        if stor259[address(arg1)] > 0:
        idx = 0
        while idx < stor261.length:
            mem[0] = 261
            if uint256(stor[code.data[14488 len 32] + idx]):
                require idx < stor261.length
                mem[0] = uint256(stor[code.data[14488 len 32] + idx])
                mem[32] = 260
                uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_0) = 0
                uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_256) = 0
                uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_512) = 0
            idx = idx + 1
            continue 
        stor261.length = 0
        idx = code.data[14488 len 32]
        while code.data[14488 len 32] + stor261.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        if m_numOwners >= 250:
            # nil
        else:
            m_numOwners++
            require m_numOwners + 1 < 256
            address(stor4[stor2].field_0) = arg1
            Mask(96, 0, stor4[stor2].field_160) = 0
            stor259[address(arg1)] = m_numOwners
            emit OwnerAdded(arg1);
    else:
        uint256(stor260[call.data[0 len calldata.size]].field_0) = sub_6c1a5f85
        uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
        stor261.length++
        if not stor261.length > stor261.length + 1:
            uint256(stor260[call.data[0 len calldata.size]].field_512) = stor261.length
            require stor261.length < stor261.length
            uint256(stor[code.data[14488 len 32] + stor261.length]) = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and uint256(stor260[call.data[0 len calldata.size]].field_256) != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if uint256(stor260[call.data[0 len calldata.size]].field_0) > 1:
                uint256(stor260[call.data[0 len calldata.size]].field_0)--
                uint256(stor260[call.data[0 len calldata.size]].field_256) = 2^stor259[address(msg.sender)] or uint256(stor260[call.data[0 len calldata.size]].field_256)
            require uint256(stor260[call.data[0 len calldata.size]].field_512) < stor261.length
            uint256(stor[code.data[14488 len 32] + uint256(stor260[call.data[0 len calldata.size]].field_512)]) = 0
            uint256(stor260[call.data[0 len calldata.size]].field_0) = 0
            uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
            uint256(stor260[call.data[0 len calldata.size]].field_512) = 0
            if stor259[address(arg1)] > 0:
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if uint256(stor[code.data[14488 len 32] + idx]):
                    require idx < stor261.length
                    mem[0] = uint256(stor[code.data[14488 len 32] + idx])
                    mem[32] = 260
                    uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_0) = 0
                    uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_256) = 0
                    uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_512) = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = code.data[14488 len 32]
            while code.data[14488 len 32] + stor261.length > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
            if m_numOwners >= 250:
                # nil
            else:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(stor4[stor2].field_0) = arg1
                Mask(96, 0, stor4[stor2].field_160) = 0
                stor259[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
        else:
            idx = stor261.length + 1
            while stor261.length > idx:
                stor261[idx] = 0
                idx = idx + 1
                continue 
            uint256(stor260[call.data[0 len calldata.size]].field_512) = stor261.length
            require stor261.length < stor261.length
            uint256(stor[code.data[14488 len 32] + stor261.length]) = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and uint256(stor260[call.data[0 len calldata.size]].field_256) != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if uint256(stor260[call.data[0 len calldata.size]].field_0) > 1:
                uint256(stor260[call.data[0 len calldata.size]].field_0)--
                uint256(stor260[call.data[0 len calldata.size]].field_256) = 2^stor259[address(msg.sender)] or uint256(stor260[call.data[0 len calldata.size]].field_256)
            require uint256(stor260[call.data[0 len calldata.size]].field_512) < stor261.length
            uint256(stor[code.data[14488 len 32] + uint256(stor260[call.data[0 len calldata.size]].field_512)]) = 0
            uint256(stor260[call.data[0 len calldata.size]].field_0) = 0
            uint256(stor260[call.data[0 len calldata.size]].field_256) = 0
            uint256(stor260[call.data[0 len calldata.size]].field_512) = 0
            if stor259[address(arg1)] > 0:
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if uint256(stor[code.data[14488 len 32] + idx]):
                    require idx < stor261.length
                    mem[0] = uint256(stor[code.data[14488 len 32] + idx])
                    mem[32] = 260
                    uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_0) = 0
                    uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_256) = 0
                    uint256(stor260[uint256(stor[code.data[14488 len 32] + idx])].field_512) = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = code.data[14488 len 32]
            while code.data[14488 len 32] + stor261.length > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(stor4[stor2].field_0) = arg1
                Mask(96, 0, stor4[stor2].field_160) = 0
                stor259[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
            if 1 < m_numOwners:
                # nil
            else:
                if m_numOwners < 250:
                    m_numOwners++
                    require m_numOwners + 1 < 256
                    address(stor4[stor2].field_0) = arg1
                    Mask(96, 0, stor4[stor2].field_160) = 0
                    stor259[address(arg1)] = m_numOwners
                    emit OwnerAdded(arg1);
}



}
