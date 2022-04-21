contract main {


// =======================  Init code  ======================


address stor7;

function _fallback() {
    stor7 = msg.sender
    return code.data[63 len 12603]
}



// =====================  Runtime code  =====================


#
#  - createOrder(uint128 arg1, uint16 arg2, uint256 arg3, uint8 arg4, uint256 arg5)
#  - continueOrder(uint128 arg1, uint256 arg2)
#
address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
address stor7;
mapping of struct orderState;
array of uint256 stor9;
array of uint256 stor10;
mapping of struct stor94;
mapping of struct stor95;
mapping of uint128 stor97;
uint8 stor98;
uint256 stor98;

function getOrder(uint128 arg1) {
    require uint8(orderState[arg1 << 128].field_512) <= 3
    require uint8(orderState[arg1 << 128].field_520) <= 7
    require uint8(orderState[arg1 << 128].field_528) <= 8
    return address(orderState[arg1 << 128].field_0), 
           uint16(orderState[arg1 << 128].field_0),
           uint256(orderState[arg1 << 128].field_256),
           uint8(orderState[arg1 << 128].field_512),
           uint8(orderState[arg1 << 128].field_520),
           uint8(orderState[arg1 << 128].field_512),
           orderState[arg1 << 128].field_512,
           orderState[arg1 << 128].field_768,
           orderState[arg1 << 128].field_768,
           orderState[arg1 << 128].field_1024
}

function getOrderState(uint128 arg1) {
    require uint8(orderState[arg1 << 128].field_520) <= 7
    require uint8(orderState[arg1 << 128].field_528) <= 8
    return uint8(orderState[arg1 << 128].field_512), 
           uint8(orderState[arg1 << 128].field_512),
           orderState[arg1 << 128].field_512,
           orderState[arg1 << 128].field_768,
           orderState[arg1 << 128].field_896,
           orderState[arg1 << 128].field_1024
}

function _fallback() payable {
    revert
}

function changeFeeCollector(address arg1) {
    require stor7 == msg.sender
    require stor7 != arg1
    stor7 = arg1
}

function depositCntr() payable {
    require msg.value > 0
    stor5[address(msg.sender)] += msg.value
    emit ClientPaymentEvent(0, 1, msg.value, msg.sender);
}

function getBookInfo() {
    return 0, 
           stor0,
           stor3,
           stor1,
           10^16,
           ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98)))))),
           2000,
           stor7
}

function withdrawCntr(uint256 arg1) {
    require arg1 > 0
    require arg1 <= stor5[address(msg.sender)]
    stor5[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit ClientPaymentEvent(1, 1, -arg1, msg.sender);
}

function transferBase(uint256 arg1) {
    require arg1 > 0
    require arg1 <= stor4[address(msg.sender)]
    stor4[address(msg.sender)] -= arg1
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
    emit ClientPaymentEvent(3, 0, -arg1, msg.sender);
}

function transferRwrd(uint256 arg1) {
    require arg1 > 0
    require arg1 <= stor6[address(msg.sender)]
    stor6[address(msg.sender)] -= arg1
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
    emit ClientPaymentEvent(3, 2, -arg1, msg.sender);
}

function transferFromBase() {
    require ext_code.size(stor0)
    call stor0.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, this.address
    require ext_call.success
    require not ext_call.return_data[0]
    stor4[address(msg.sender)] += ext_call.return_data[0]
    emit ClientPaymentEvent(2, 0, ext_call.return_data[0], msg.sender);
}

function transferFromRwrd() {
    require ext_code.size(stor3)
    call stor3.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, this.address
    require ext_call.success
    require not ext_call.return_data[0]
    stor6[address(msg.sender)] += ext_call.return_data[0]
    emit ClientPaymentEvent(2, 2, ext_call.return_data[0], msg.sender);
}

function getClientBalances(address arg1) {
    require ext_code.size(stor0)
    call stor0.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg1), this.address
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg1), this.address
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return stor4[address(arg1)], 
           0,
           stor6[address(arg1)],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function init(address arg1, address arg2, uint256 arg3, int8 arg4) {
    require stor7 == msg.sender
    require not stor0
    require arg1
    require not stor3
    require arg2
    require arg3 >= 10
    require arg3 < 1000000 * 10^18
    require ('signextend', 0, ('signextend', 0, ('param', 'arg4'))) >= -20
    require ('signextend', 0, ('signextend', 0, ('param', 'arg4'))) <= 20
    if ('signextend', 0, ('signextend', 0, ('param', 'arg4'))) < 2:
        require arg3 >= 10^(-('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98))))) + 3)
    stor1 = arg3
    stor2 = arg3 / 10
    uint8(stor98) = uint8(('signextend', 0, ('signextend', 0, ('param', 'arg4'))))
    require ext_code.size(arg1)
    call arg1.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] > 0
    stor0 = arg1
    require ext_code.size(arg2)
    call arg2.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] > 0
    stor3 = arg2
}

function walkClientOrders(address arg1, uint128 arg2, uint128 arg3) {
    if arg2:
        mem[0] = arg2
        mem[32] = 97
    else:
        mem[0] = arg1
        mem[32] = 96
    s = 0
    idx = stor[sha3(mem[0 len 64])]
    while uint128(idx):
        if uint128(idx) >= arg3:
            if uint8(orderState[idx << 128].field_512) <= 3:
                if uint8(orderState[idx << 128].field_520) <= 7:
                    if uint8(orderState[idx << 128].field_528) <= 8:
                        return idx << 128, 
                               uint16(orderState[idx << 128].field_0),
                               uint256(orderState[idx << 128].field_256),
                               uint8(orderState[idx << 128].field_512),
                               uint8(orderState[idx << 128].field_520),
                               uint8(orderState[idx << 128].field_512),
                               orderState[idx << 128].field_512,
                               orderState[idx << 128].field_768,
                               orderState[idx << 128].field_768,
                               orderState[idx << 128].field_1024
        else:
            if uint8(orderState[idx << 128].field_520) <= 7:
                if uint8(orderState[idx << 128].field_520) == 2:
                    if uint8(orderState[idx << 128].field_512) <= 3:
                        if uint8(orderState[idx << 128].field_520) <= 7:
                            if uint8(orderState[idx << 128].field_528) <= 8:
                                return idx << 128, 
                                       uint16(orderState[idx << 128].field_0),
                                       uint256(orderState[idx << 128].field_256),
                                       uint8(orderState[idx << 128].field_512),
                                       uint8(orderState[idx << 128].field_520),
                                       uint8(orderState[idx << 128].field_512),
                                       orderState[idx << 128].field_512,
                                       orderState[idx << 128].field_768,
                                       orderState[idx << 128].field_768,
                                       orderState[idx << 128].field_1024
                else:
                    if uint8(orderState[idx << 128].field_520) <= 7:
                        if uint8(orderState[idx << 128].field_520) != 4:
                            mem[0] = uint128(idx)
                            mem[32] = 97
                            s = sha3(idx << 128, 8)
                            idx = stor97[idx << 128]
                            continue 
                        if uint8(orderState[idx << 128].field_512) <= 3:
                            if uint8(orderState[idx << 128].field_520) <= 7:
                                if uint8(orderState[idx << 128].field_528) <= 8:
                                    return idx << 128, 
                                           uint16(orderState[idx << 128].field_0),
                                           uint256(orderState[idx << 128].field_256),
                                           uint8(orderState[idx << 128].field_512),
                                           uint8(orderState[idx << 128].field_520),
                                           uint8(orderState[idx << 128].field_512),
                                           orderState[idx << 128].field_512,
                                           orderState[idx << 128].field_768,
                                           orderState[idx << 128].field_768,
                                           orderState[idx << 128].field_1024
        revert
    return idx << 128, 0, 0, 0, 0, 0, 0, 0, 0, 0
}

function walkBook(uint16 arg1) {
    if arg1 >= 1:
        if arg1 <= 3 * 3600:
            require uint8(arg1) < 85
            s = stor9[uint8(arg1)] / 2^uint8(arg1)
            t = uint8(arg1)
            idx = uint8(arg1)
            while idx < 42:
                if not s:
                    require idx + 1 < 85
                    s = stor10[idx]
                    t = 0
                    idx = idx + 1
                    continue 
                if 256 == t:
                    require idx + 1 < 85
                    s = stor10[idx]
                    t = 0
                    idx = idx + 1
                    continue 
                if not bool(s):
                    s = s / 2
                    t = t + 1
                    idx = idx
                    continue 
                s = 0
                s = 0
                u = 0
                v = stor94[t + (256 * idx) << 240].field_0
                while stor95[stor94[t + (256 * idx) << 240].field_0].field_0:
                    mem[0] = stor95[stor94[t + (256 * idx) << 240].field_0].field_0
                    mem[32] = 95
                    s = sha3(stor94[t + (256 * idx) << 240].field_0, 8)
                    s = s + 1
                    u = uint256(orderState[stor94[t + (256 * idx) << 240].field_0].field_256) - orderState[stor94[t + (256 * idx) << 240].field_0].field_536 + u
                    v = stor95[stor95[stor94[t + (256 * idx) << 240].field_0].field_0].field_0
                    continue 
                return t + (256 * idx) << 240, 
                       uint256(orderState[stor94[t + (256 * idx) << 240].field_0].field_256) - orderState[stor94[t + (256 * idx) << 240].field_0].field_536 + u,
                       s + 1,
                       block.number
            v = s
            u = t
            while u <= 48:
                if not v:
                    return 3 * 3600, 0, 0, block.number
                if not bool(v):
                    v = v / 2
                    u = u + 1
                    continue 
                s = 0
                s = 0
                t = 0
                v = stor94[u + (256 * idx) << 240].field_0
                while stor95[stor94[u + (256 * idx) << 240].field_0].field_0:
                    mem[0] = stor95[stor94[u + (256 * idx) << 240].field_0].field_0
                    mem[32] = 95
                    s = sha3(stor94[u + (256 * idx) << 240].field_0, 8)
                    s = s + 1
                    t = uint256(orderState[stor94[u + (256 * idx) << 240].field_0].field_256) - orderState[stor94[u + (256 * idx) << 240].field_0].field_536 + t
                    v = stor95[stor95[stor94[u + (256 * idx) << 240].field_0].field_0].field_0
                    continue 
                return u + (256 * idx) << 240, 
                       uint256(orderState[stor94[u + (256 * idx) << 240].field_0].field_256) - orderState[stor94[u + (256 * idx) << 240].field_0].field_536 + t,
                       s + 1,
                       block.number
            return 3 * 3600, 0, 0, block.number
    require uint8(arg1) < 85
    s = stor9[uint8(arg1)] / 2^uint8(arg1)
    t = uint8(arg1)
    idx = uint8(arg1)
    while idx < 84:
        if not s:
            require idx + 1 < 85
            s = stor10[idx]
            t = 0
            idx = idx + 1
            continue 
        if 256 == t:
            require idx + 1 < 85
            s = stor10[idx]
            t = 0
            idx = idx + 1
            continue 
        if not bool(s):
            s = s / 2
            t = t + 1
            idx = idx
            continue 
        s = 0
        s = 0
        u = 0
        v = stor94[t + (256 * idx) << 240].field_0
        while stor95[stor94[t + (256 * idx) << 240].field_0].field_0:
            mem[0] = stor95[stor94[t + (256 * idx) << 240].field_0].field_0
            mem[32] = 95
            s = sha3(stor94[t + (256 * idx) << 240].field_0, 8)
            s = s + 1
            u = uint256(orderState[stor94[t + (256 * idx) << 240].field_0].field_256) - orderState[stor94[t + (256 * idx) << 240].field_0].field_536 + u
            v = stor95[stor95[stor94[t + (256 * idx) << 240].field_0].field_0].field_0
            continue 
        return t + (256 * idx) << 240, 
               uint256(orderState[stor94[t + (256 * idx) << 240].field_0].field_256) - orderState[stor94[t + (256 * idx) << 240].field_0].field_536 + u,
               s + 1,
               block.number
    v = s
    u = t
    while u <= 96:
        if not v:
            return 6 * 3600, 0, 0, block.number
        if not bool(v):
            v = v / 2
            u = u + 1
            continue 
        s = 0
        s = 0
        t = 0
        v = stor94[u + (256 * idx) << 240].field_0
        while stor95[stor94[u + (256 * idx) << 240].field_0].field_0:
            mem[0] = stor95[stor94[u + (256 * idx) << 240].field_0].field_0
            mem[32] = 95
            s = sha3(stor94[u + (256 * idx) << 240].field_0, 8)
            s = s + 1
            t = uint256(orderState[stor94[u + (256 * idx) << 240].field_0].field_256) - orderState[stor94[u + (256 * idx) << 240].field_0].field_536 + t
            v = stor95[stor95[stor94[u + (256 * idx) << 240].field_0].field_0].field_0
            continue 
        return u + (256 * idx) << 240, 
               uint256(orderState[stor94[u + (256 * idx) << 240].field_0].field_256) - orderState[stor94[u + (256 * idx) << 240].field_0].field_536 + t,
               s + 1,
               block.number
    return 6 * 3600, 0, 0, block.number
}

function cancelOrder(uint128 arg1) {
    require address(orderState[arg1 << 128].field_0) == msg.sender
    require uint8(orderState[arg1 << 128].field_520) <= 7
    if uint8(orderState[arg1 << 128].field_520) == 2:
        emit ClientOrderEvent(2, arg1 << 128, 0, msg.sender);
        require uint8(orderState[arg1 << 128].field_520) <= 7
        if uint8(orderState[arg1 << 128].field_520) == 2:
            if not stor95[arg1 << 128].field_0:
                stor94[uint16(stor8[arg1 << 128].field_0)].field_128 = stor95[arg1 << 128].field_128
            else:
                stor95[stor95[arg1 << 128].field_0].field_128 = stor95[arg1 << 128].field_128
            if not stor95[arg1 << 128].field_128:
                stor94[uint16(stor8[arg1 << 128].field_0)].field_0 = stor95[arg1 << 128].field_0
            else:
                stor95[stor95[arg1 << 128].field_0].field_0 = stor95[arg1 << 128].field_0
            if not stor95[arg1 << 128].field_0:
                if not stor95[arg1 << 128].field_128:
                    require uint8(orderState[arg1 << 128].field_168) < 85
                    stor9[uint8(stor8[arg1 << 128].field_168)] = 2^uint8(orderState[arg1 << 128].field_160) xor stor9[uint8(stor8[arg1 << 128].field_168)]
            emit 0x7540d0a1: 1, uint16(orderState[arg1 << 128].field_0), uint256(orderState[arg1 << 128].field_256) - orderState[arg1 << 128].field_536, 0, block.timestamp, arg1
        if uint16(orderState[arg1 << 128].field_160) < 1:
            stor4[address(stor8[arg1 << 128].field_0)] = stor4[address(stor8[arg1 << 128].field_0)] + uint256(orderState[arg1 << 128].field_256) - orderState[arg1 << 128].field_536
        else:
            if uint16(orderState[arg1 << 128].field_160) > 3 * 3600:
                stor4[address(stor8[arg1 << 128].field_0)] = stor4[address(stor8[arg1 << 128].field_0)] + uint256(orderState[arg1 << 128].field_256) - orderState[arg1 << 128].field_536
            else:
                if uint16(orderState[arg1 << 128].field_160) < 1:
                    stor5[address(stor8[arg1 << 128].field_0)] -= orderState[arg1 << 128].field_768
                else:
                    if uint16(orderState[arg1 << 128].field_160) > 6 * 3600:
                        stor5[address(stor8[arg1 << 128].field_0)] -= orderState[arg1 << 128].field_768
                    else:
                        if uint16(orderState[arg1 << 128].field_160) > 3 * 3600:
                            if ('signextend', 0, ('add', ('div', ('add', -10801, ('type', 16, ('field', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('name', 'orderState', 8)))))), 900), ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98)))))) >= 0:
                                stor5[address(stor8[arg1 << 128].field_0)] = stor5[address(stor8[arg1 << 128].field_0)] + (uint256(orderState[arg1 << 128].field_256) * uint16((uint16(orderState[arg1 << 128].field_160) - 10801 % 900) + 100) / 1000 * 10^('signextend', 0, ('add', ('div', ('add', -10801, ('type', 16, ('field', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('name', 'orderState', 8)))))), 900), ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98))))))) - orderState[arg1 << 128].field_768
                            else:
                                require 10^('signextend', 0, ('add', ('mul', -1, ('div', ('add', -10801, ('type', 16, ('field', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('name', 'orderState', 8)))))), 900)), ('mul', -1, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98)))))))
                                stor5[address(stor8[arg1 << 128].field_0)] = stor5[address(stor8[arg1 << 128].field_0)] + (uint256(orderState[arg1 << 128].field_256) * uint16((uint16(orderState[arg1 << 128].field_160) - 10801 % 900) + 100) / 1000 / 10^('signextend', 0, ('add', ('mul', -1, ('div', ('add', -10801, ('type', 16, ('field', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('name', 'orderState', 8)))))), 900)), ('mul', -1, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98)))))))) - orderState[arg1 << 128].field_768
                        else:
                            if ('signextend', 0, ('add', ('div', ('add', 10800, ('mul', -1, ('type', 16, ('field', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('name', 'orderState', 8))))))), 900), ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98)))))) >= 0:
                                stor5[address(stor8[arg1 << 128].field_0)] = stor5[address(stor8[arg1 << 128].field_0)] + (uint256(orderState[arg1 << 128].field_256) * uint16((-uint16(orderState[arg1 << 128].field_160) + (3 * 3600) % 900) + 100) / 1000 * 10^('signextend', 0, ('add', ('div', ('add', 10800, ('mul', -1, ('type', 16, ('field', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('name', 'orderState', 8))))))), 900), ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98))))))) - orderState[arg1 << 128].field_768
                            else:
                                require 10^('signextend', 0, ('add', ('mul', -1, ('div', ('add', 10800, ('mul', -1, ('type', 16, ('field', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('name', 'orderState', 8))))))), 900)), ('mul', -1, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98)))))))
                                stor5[address(stor8[arg1 << 128].field_0)] = stor5[address(stor8[arg1 << 128].field_0)] + (uint256(orderState[arg1 << 128].field_256) * uint16((-uint16(orderState[arg1 << 128].field_160) + (3 * 3600) % 900) + 100) / 1000 / 10^('signextend', 0, ('add', ('mul', -1, ('div', ('add', 10800, ('mul', -1, ('type', 16, ('field', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('name', 'orderState', 8))))))), 900)), ('mul', -1, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98)))))))) - orderState[arg1 << 128].field_768
        uint8(orderState[arg1 << 128].field_520) = 3
        uint8(orderState[arg1 << 128].field_528) = 8
    else:
        require uint8(orderState[arg1 << 128].field_520) <= 7
        if uint8(orderState[arg1 << 128].field_520) == 4:
            emit ClientOrderEvent(2, arg1 << 128, 0, msg.sender);
            require uint8(orderState[arg1 << 128].field_520) <= 7
            if uint8(orderState[arg1 << 128].field_520) == 2:
                if not stor95[arg1 << 128].field_0:
                    stor94[uint16(stor8[arg1 << 128].field_0)].field_128 = stor95[arg1 << 128].field_128
                else:
                    stor95[stor95[arg1 << 128].field_0].field_128 = stor95[arg1 << 128].field_128
                if not stor95[arg1 << 128].field_128:
                    stor94[uint16(stor8[arg1 << 128].field_0)].field_0 = stor95[arg1 << 128].field_0
                else:
                    stor95[stor95[arg1 << 128].field_0].field_0 = stor95[arg1 << 128].field_0
                if not stor95[arg1 << 128].field_0:
                    if not stor95[arg1 << 128].field_128:
                        require uint8(orderState[arg1 << 128].field_168) < 85
                        stor9[uint8(stor8[arg1 << 128].field_168)] = 2^uint8(orderState[arg1 << 128].field_160) xor stor9[uint8(stor8[arg1 << 128].field_168)]
                emit 0x7540d0a1: 1, uint16(orderState[arg1 << 128].field_0), uint256(orderState[arg1 << 128].field_256) - orderState[arg1 << 128].field_536, 0, block.timestamp, arg1
            if uint16(orderState[arg1 << 128].field_160) < 1:
                stor4[address(stor8[arg1 << 128].field_0)] = stor4[address(stor8[arg1 << 128].field_0)] + uint256(orderState[arg1 << 128].field_256) - orderState[arg1 << 128].field_536
            else:
                if uint16(orderState[arg1 << 128].field_160) > 3 * 3600:
                    stor4[address(stor8[arg1 << 128].field_0)] = stor4[address(stor8[arg1 << 128].field_0)] + uint256(orderState[arg1 << 128].field_256) - orderState[arg1 << 128].field_536
                else:
                    if uint16(orderState[arg1 << 128].field_160) < 1:
                        stor5[address(stor8[arg1 << 128].field_0)] -= orderState[arg1 << 128].field_768
                    else:
                        if uint16(orderState[arg1 << 128].field_160) > 6 * 3600:
                            stor5[address(stor8[arg1 << 128].field_0)] -= orderState[arg1 << 128].field_768
                        else:
                            if uint16(orderState[arg1 << 128].field_160) > 3 * 3600:
                                if ('signextend', 0, ('add', ('div', ('add', -10801, ('type', 16, ('field', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('name', 'orderState', 8)))))), 900), ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98)))))) >= 0:
                                    stor5[address(stor8[arg1 << 128].field_0)] = stor5[address(stor8[arg1 << 128].field_0)] + (uint256(orderState[arg1 << 128].field_256) * uint16((uint16(orderState[arg1 << 128].field_160) - 10801 % 900) + 100) / 1000 * 10^('signextend', 0, ('add', ('div', ('add', -10801, ('type', 16, ('field', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('name', 'orderState', 8)))))), 900), ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98))))))) - orderState[arg1 << 128].field_768
                                else:
                                    require 10^('signextend', 0, ('add', ('mul', -1, ('div', ('add', -10801, ('type', 16, ('field', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('name', 'orderState', 8)))))), 900)), ('mul', -1, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98)))))))
                                    stor5[address(stor8[arg1 << 128].field_0)] = stor5[address(stor8[arg1 << 128].field_0)] + (uint256(orderState[arg1 << 128].field_256) * uint16((uint16(orderState[arg1 << 128].field_160) - 10801 % 900) + 100) / 1000 / 10^('signextend', 0, ('add', ('mul', -1, ('div', ('add', -10801, ('type', 16, ('field', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('name', 'orderState', 8)))))), 900)), ('mul', -1, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98)))))))) - orderState[arg1 << 128].field_768
                            else:
                                if ('signextend', 0, ('add', ('div', ('add', 10800, ('mul', -1, ('type', 16, ('field', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('name', 'orderState', 8))))))), 900), ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98)))))) >= 0:
                                    stor5[address(stor8[arg1 << 128].field_0)] = stor5[address(stor8[arg1 << 128].field_0)] + (uint256(orderState[arg1 << 128].field_256) * uint16((-uint16(orderState[arg1 << 128].field_160) + (3 * 3600) % 900) + 100) / 1000 * 10^('signextend', 0, ('add', ('div', ('add', 10800, ('mul', -1, ('type', 16, ('field', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('name', 'orderState', 8))))))), 900), ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98))))))) - orderState[arg1 << 128].field_768
                                else:
                                    require 10^('signextend', 0, ('add', ('mul', -1, ('div', ('add', 10800, ('mul', -1, ('type', 16, ('field', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('name', 'orderState', 8))))))), 900)), ('mul', -1, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98)))))))
                                    stor5[address(stor8[arg1 << 128].field_0)] = stor5[address(stor8[arg1 << 128].field_0)] + (uint256(orderState[arg1 << 128].field_256) * uint16((-uint16(orderState[arg1 << 128].field_160) + (3 * 3600) % 900) + 100) / 1000 / 10^('signextend', 0, ('add', ('mul', -1, ('div', ('add', 10800, ('mul', -1, ('type', 16, ('field', 160, ('stor', ('map', ('mask_shl', 128, 0, 128, ('param', 'arg1')), ('name', 'orderState', 8))))))), 900)), ('mul', -1, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor98', 98)))))))) - orderState[arg1 << 128].field_768
            uint8(orderState[arg1 << 128].field_520) = 3
            uint8(orderState[arg1 << 128].field_528) = 8
}



}
