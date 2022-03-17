contract main {


// =======================  Init code  ======================


uint8 stor2;
uint8 stor2; offset 8
uint256 stor1E84;
uint256 stor1E84;
uint256 stor1E84;
uint256 stor1E84;
uint256 stor1E84;

function _fallback() payable {
    uint8(stor2.field_0) = 1
    uint8(stor2.field_8) = 0
    stor1E84 = 110
    stor1E84 = 1
    stor1E84 = 1
    stor1E84 = 5 * 10^15
    stor1E84 = msg.sender or Mask(96, 160, stor1E84)
    return code.data[87 len 4539]
}



// =====================  Runtime code  =====================


#
#  - sub_e021fadb(?)
#
mapping of address sub_8bf50628;
mapping of uint16 sub_cf955f34;
uint16 sub_d54b4a04;
uint256 stor2;
address stor1E84;
uint256 sub_1ff6c705;
uint256 feePercent;
uint256 sub_47980c0d;
uint256 minPrice;

function sub_1ff6c705(?) payable {
    return sub_1ff6c705
}

function sub_47980c0d(?) payable {
    return sub_47980c0d
}

function feePercent() payable {
    return feePercent
}

function sub_8bf50628(?) payable {
    return address(sub_8bf50628[arg1])
}

function sub_cf955f34(?) payable {
    return uint16(sub_cf955f34[arg1])
}

function sub_d54b4a04(?) payable {
    return uint16(sub_d54b4a04)
}

function minPrice() payable {
    return minPrice
}

function _fallback() payable {
  stop
}

function sub_90a248f8(?) payable {
    if msg.sender == stor1E84:
        sub_47980c0d = arg1
}

function sub_d229b54b(?) payable {
    if msg.sender == stor1E84:
        sub_1ff6c705 = arg1
}

function setMinPrice(uint256 arg1) payable {
    if msg.sender == stor1E84:
        minPrice = arg1
}

function setFeePercent(uint256 arg1) payable {
    if msg.sender == stor1E84:
        feePercent = arg1
}

function sub_b4c70cea(?) payable {
    if not arg1:
        emit Log(msg.sender, Array(len=arg2.length, data=arg2[all]), arg3);
    return arg1
}

function empty() payable {
    if msg.sender == stor1E84:
        call stor1E84 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function pixels(uint256 arg1, uint256 arg2) payable {
    require arg1 < 1000
    require arg2 < 1000
    return uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0), 
           ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))),
           uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0)
}

function getPixel(uint16 arg1, uint16 arg2) payable {
    require arg1 < 1000
    require arg2 < 1000
    require arg1 < 1000
    require arg2 < 1000
    require arg1 < 1000
    require arg2 < 1000
    return address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), 
           ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))),
           uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0)
}

function sub_7d1bb97a(?) payable {
    mem[96] = 0
    mem[128 len 31968] = 0
    mem[32096] = 0
    mem[32128 len 31968] = 0
    mem[64] = 96096
    mem[64096] = 0
    mem[64128 len 31968] = 0
    idx = 0
    while uint16(idx) < 1000:
        require idx < 1000
        require arg1 < 1000
        mem[0] = uint16(stor[(2 * arg1) + (2000 * idx) + 3].field_0)
        mem[32] = 0
        require idx < 1000
        mem[(32 * idx) + 96] = address(sub_8bf50628[uint16(stor[(2 * arg1) + (2000 * idx) + 3].field_0)])
        require arg1 < 1000
        require idx < 1000
        mem[(32 * idx) + 32096] = ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg1')), ('mul', 2000, ('var', 0))))))))
        require arg1 < 1000
        require idx < 1000
        mem[(32 * idx) + 64096] = uint256(stor[(2 * arg1) + (2000 * idx) + 4].field_0)
        idx = idx + 1
        continue 
    mem[mem[64] len 32000] = mem[96 len 32000]
    mem[mem[64] + 32000 len 32000] = mem[32096 len 32000]
    mem[mem[64] + 64000 len 32000] = mem[64096 len 32000]
    return memory
      from mem[64]
       len 96000
}

function sub_b019e017(?) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg4.length) + (32 * arg5.length) + 224
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg4.length) + 192] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg4.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if msg.sender == stor1E84:
        idx = 0
        while idx < arg1.length:
            _33 = mem[64]
            mem[64] = mem[64] + 96
            mem[0] = arg3
            mem[32] = 1
            if uint16(sub_cf955f34[address(arg3)]):
                mem[_33] = uint16(sub_cf955f34[address(arg3)])
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[_33 + 32] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg4.length) + 192]
                mem[_33 + 64] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg4.length) + 224]
                require idx < mem[96]
                require mem[(32 * idx) + 128] < 1000
                require idx < mem[(32 * arg1.length) + 128]
                require mem[(32 * idx) + (32 * arg1.length) + 160] < 1000
                uint16(stor[(2 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (2000 * mem[(32 * idx) + 128]) + 3].field_0) = uint16(sub_cf955f34[address(arg3)])
                uint32(stor[(2 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (2000 * mem[(32 * idx) + 128]) + 3].field_16) = mem[_33 + 60 len 4]
                Mask(208, 0, stor[(2 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (2000 * mem[(32 * idx) + 128]) + 3].field_48) = 0
            else:
                uint256(stor2) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(stor2))
                uint256(sub_8bf50628[uint16(stor2) + 1 << 240]) = arg3 or Mask(96, 160, uint256(sub_8bf50628[uint16(stor2) + 1 << 240]))
                mem[0] = arg3
                mem[32] = 1
                uint256(sub_cf955f34[address(arg3)]) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(sub_cf955f34[address(arg3)]))
                mem[_33] = uint16(sub_d54b4a04) + 1
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[_33 + 32] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg4.length) + 192]
                mem[_33 + 64] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg4.length) + 224]
                require idx < mem[96]
                require mem[(32 * idx) + 128] < 1000
                require idx < mem[(32 * arg1.length) + 128]
                require mem[(32 * idx) + (32 * arg1.length) + 160] < 1000
                uint16(stor[(2 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (2000 * mem[(32 * idx) + 128]) + 3].field_0) = uint16(uint16(sub_d54b4a04) + 1)
                uint32(stor[(2 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (2000 * mem[(32 * idx) + 128]) + 3].field_16) = mem[_33 + 60 len 4]
                Mask(208, 0, stor[(2 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (2000 * mem[(32 * idx) + 128]) + 3].field_48) = Mask(208, 48, uint16(sub_d54b4a04) + 1) >> 48
            uint256(stor[(2 * mem[(32 * idx) + (32 * arg1.length) + 160]) + (2000 * mem[(32 * idx) + 128]) + 4].field_0) = mem[_33 + 64]
            idx = idx + 1
            continue 
}

function sub_eddfa7c8(?) payable {
    require arg1 < 1000
    require arg2 < 1000
    if address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) == msg.sender:
        if msg.value >= uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100:
            if address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) == msg.sender:
                emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('param', 'arg3')), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0)
                require arg1 < 1000
                require arg2 < 1000
                uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                if msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) > 0:
                    call msg.sender with:
                       value msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) wei
                         gas 0 wei
            else:
                if uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) > 0:
                    call address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) with:
                       value msg.value - (msg.value * feePercent / 100) wei
                         gas 0 wei
                emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), msg.sender, ('signextend', 3, ('param', 'arg3')), msg.value
                if uint16(sub_cf955f34[address(msg.sender)]):
                    require arg1 < 1000
                    require arg2 < 1000
                    uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(sub_cf955f34[address(msg.sender)])
                    uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                    Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = 0
                else:
                    uint256(stor2) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(stor2))
                    uint256(sub_8bf50628[uint16(stor2) + 1 << 240]) = msg.sender or Mask(96, 160, uint256(sub_8bf50628[uint16(stor2) + 1 << 240]))
                    uint256(sub_cf955f34[address(msg.sender)]) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(sub_cf955f34[address(msg.sender)]))
                    require arg1 < 1000
                    require arg2 < 1000
                    uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(uint16(sub_d54b4a04) + 1)
                    uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                    Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = Mask(208, 48, uint16(sub_d54b4a04) + 1) >> 48
                uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) = msg.value
        else:
            mem[352] = mem[370 len 14]
            emit Log(msg.sender, Array(len=46, data='Changing your own pixel costs 10', '% of its value', mem[352]), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100);
            if msg.value < uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100:
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) == msg.sender:
                    emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('param', 'arg3')), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0)
                    require arg1 < 1000
                    require arg2 < 1000
                    uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                    if msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) > 0:
                        call msg.sender with:
                           value msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) wei
                             gas 0 wei
                else:
                    if uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) > 0:
                        call address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) with:
                           value msg.value - (msg.value * feePercent / 100) wei
                             gas 0 wei
                    emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), msg.sender, ('signextend', 3, ('param', 'arg3')), msg.value
                    if uint16(sub_cf955f34[address(msg.sender)]):
                        require arg1 < 1000
                        require arg2 < 1000
                        uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(sub_cf955f34[address(msg.sender)])
                        uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                        Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = 0
                    else:
                        uint256(stor2) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(stor2))
                        uint256(sub_8bf50628[uint16(stor2) + 1 << 240]) = msg.sender or Mask(96, 160, uint256(sub_8bf50628[uint16(stor2) + 1 << 240]))
                        uint256(sub_cf955f34[address(msg.sender)]) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(sub_cf955f34[address(msg.sender)]))
                        require arg1 < 1000
                        require arg2 < 1000
                        uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(uint16(sub_d54b4a04) + 1)
                        uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                        Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = Mask(208, 48, uint16(sub_d54b4a04) + 1) >> 48
                    uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) = msg.value
    else:
        if msg.value >= minPrice:
            if msg.value >= uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_1ff6c705 / 100:
                if address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) == msg.sender:
                    emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('param', 'arg3')), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0)
                    require arg1 < 1000
                    require arg2 < 1000
                    uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                    if msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) > 0:
                        call msg.sender with:
                           value msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) wei
                             gas 0 wei
                else:
                    if uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) > 0:
                        call address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) with:
                           value msg.value - (msg.value * feePercent / 100) wei
                             gas 0 wei
                    emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), msg.sender, ('signextend', 3, ('param', 'arg3')), msg.value
                    if uint16(sub_cf955f34[address(msg.sender)]):
                        require arg1 < 1000
                        require arg2 < 1000
                        uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(sub_cf955f34[address(msg.sender)])
                        uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                        Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = 0
                    else:
                        uint256(stor2) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(stor2))
                        uint256(sub_8bf50628[uint16(stor2) + 1 << 240]) = msg.sender or Mask(96, 160, uint256(sub_8bf50628[uint16(stor2) + 1 << 240]))
                        uint256(sub_cf955f34[address(msg.sender)]) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(sub_cf955f34[address(msg.sender)]))
                        require arg1 < 1000
                        require arg2 < 1000
                        uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(uint16(sub_d54b4a04) + 1)
                        uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                        Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = Mask(208, 48, uint16(sub_d54b4a04) + 1) >> 48
                    uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) = msg.value
            else:
                mem[448] = 0, mem[466 len 14]
                emit Log(msg.sender, Array(len=50, data='Value must be 10% higher than cu', 'rrent pixel price.', mem[448]), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_1ff6c705 / 100);
                if msg.value < uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_1ff6c705 / 100:
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                else:
                    if address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) == msg.sender:
                        emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('param', 'arg3')), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0)
                        require arg1 < 1000
                        require arg2 < 1000
                        uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                        if msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) > 0:
                            call msg.sender with:
                               value msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) wei
                                 gas 0 wei
                    else:
                        if uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) > 0:
                            call address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) with:
                               value msg.value - (msg.value * feePercent / 100) wei
                                 gas 0 wei
                        emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), msg.sender, ('signextend', 3, ('param', 'arg3')), msg.value
                        if uint16(sub_cf955f34[address(msg.sender)]):
                            require arg1 < 1000
                            require arg2 < 1000
                            uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(sub_cf955f34[address(msg.sender)])
                            uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                            Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = 0
                        else:
                            uint256(stor2) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(stor2))
                            uint256(sub_8bf50628[uint16(stor2) + 1 << 240]) = msg.sender or Mask(96, 160, uint256(sub_8bf50628[uint16(stor2) + 1 << 240]))
                            uint256(sub_cf955f34[address(msg.sender)]) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(sub_cf955f34[address(msg.sender)]))
                            require arg1 < 1000
                            require arg2 < 1000
                            uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(uint16(sub_d54b4a04) + 1)
                            uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                            Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = Mask(208, 48, uint16(sub_d54b4a04) + 1) >> 48
                        uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) = msg.value
        else:
            mem[352] = mem[383 len 1]
            emit Log(msg.sender, Array(len=33, data='Minimum pixel price is 50 finney', '.', mem[352]), msg.value);
            if msg.value < minPrice:
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if msg.value >= uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_1ff6c705 / 100:
                    if address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) == msg.sender:
                        emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('param', 'arg3')), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0)
                        require arg1 < 1000
                        require arg2 < 1000
                        uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                        if msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) > 0:
                            call msg.sender with:
                               value msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) wei
                                 gas 0 wei
                    else:
                        if uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) > 0:
                            call address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) with:
                               value msg.value - (msg.value * feePercent / 100) wei
                                 gas 0 wei
                        emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), msg.sender, ('signextend', 3, ('param', 'arg3')), msg.value
                        if uint16(sub_cf955f34[address(msg.sender)]):
                            require arg1 < 1000
                            require arg2 < 1000
                            uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(sub_cf955f34[address(msg.sender)])
                            uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                            Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = 0
                        else:
                            uint256(stor2) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(stor2))
                            uint256(sub_8bf50628[uint16(stor2) + 1 << 240]) = msg.sender or Mask(96, 160, uint256(sub_8bf50628[uint16(stor2) + 1 << 240]))
                            uint256(sub_cf955f34[address(msg.sender)]) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(sub_cf955f34[address(msg.sender)]))
                            require arg1 < 1000
                            require arg2 < 1000
                            uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(uint16(sub_d54b4a04) + 1)
                            uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                            Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = Mask(208, 48, uint16(sub_d54b4a04) + 1) >> 48
                        uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) = msg.value
                else:
                    mem[448] = 0, mem[466 len 14]
                    emit Log(msg.sender, Array(len=50, data='Value must be 10% higher than cu', 'rrent pixel price.', mem[448]), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_1ff6c705 / 100);
                    if msg.value < uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_1ff6c705 / 100:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 0 wei
                    else:
                        if address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) == msg.sender:
                            emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('param', 'arg3')), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0)
                            require arg1 < 1000
                            require arg2 < 1000
                            uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                            if msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) > 0:
                                call msg.sender with:
                                   value msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) wei
                                     gas 0 wei
                        else:
                            if uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) > 0:
                                call address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) with:
                                   value msg.value - (msg.value * feePercent / 100) wei
                                     gas 0 wei
                            emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), msg.sender, ('signextend', 3, ('param', 'arg3')), msg.value
                            if uint16(sub_cf955f34[address(msg.sender)]):
                                require arg1 < 1000
                                require arg2 < 1000
                                uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(sub_cf955f34[address(msg.sender)])
                                uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                                Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = 0
                            else:
                                uint256(stor2) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(stor2))
                                uint256(sub_8bf50628[uint16(stor2) + 1 << 240]) = msg.sender or Mask(96, 160, uint256(sub_8bf50628[uint16(stor2) + 1 << 240]))
                                uint256(sub_cf955f34[address(msg.sender)]) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(sub_cf955f34[address(msg.sender)]))
                                require arg1 < 1000
                                require arg2 < 1000
                                uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(uint16(sub_d54b4a04) + 1)
                                uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32(arg3)
                                Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = Mask(208, 48, uint16(sub_d54b4a04) + 1) >> 48
                            uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) = msg.value
}

function sub_a8f37bb2(?) payable {
    require arg1 < 1000
    require arg2 < 1000
    if address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) == msg.sender:
        if msg.value >= uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100:
            if address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) == msg.sender:
                emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('add', ('mul', 127, ('param', 'arg6')), ('mask_shl', 240, 0, 16, ('param', 'arg3')), ('mask_shl', 248, 0, 8, ('param', 'arg4')), ('param', 'arg5'))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0)
                require arg1 < 1000
                require arg2 < 1000
                uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                if msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) > 0:
                    call msg.sender with:
                       value msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) wei
                         gas 0 wei
            else:
                if uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) > 0:
                    call address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) with:
                       value msg.value - (msg.value * feePercent / 100) wei
                         gas 0 wei
                emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), msg.sender, ('signextend', 3, ('add', ('mul', 127, ('param', 'arg6')), ('mask_shl', 240, 0, 16, ('param', 'arg3')), ('mask_shl', 248, 0, 8, ('param', 'arg4')), ('param', 'arg5'))), msg.value
                if uint16(sub_cf955f34[address(msg.sender)]):
                    require arg1 < 1000
                    require arg2 < 1000
                    uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(sub_cf955f34[address(msg.sender)])
                    uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                    Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = 0
                else:
                    uint256(stor2) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(stor2))
                    uint256(sub_8bf50628[uint16(stor2) + 1 << 240]) = msg.sender or Mask(96, 160, uint256(sub_8bf50628[uint16(stor2) + 1 << 240]))
                    uint256(sub_cf955f34[address(msg.sender)]) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(sub_cf955f34[address(msg.sender)]))
                    require arg1 < 1000
                    require arg2 < 1000
                    uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(uint16(sub_d54b4a04) + 1)
                    uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                    Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = Mask(208, 48, uint16(sub_d54b4a04) + 1) >> 48
                uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) = msg.value
        else:
            mem[352] = mem[370 len 14]
            emit Log(msg.sender, Array(len=46, data='Changing your own pixel costs 10', '% of its value', mem[352]), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100);
            if msg.value < uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100:
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) == msg.sender:
                    emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('add', ('mul', 127, ('param', 'arg6')), ('mask_shl', 240, 0, 16, ('param', 'arg3')), ('mask_shl', 248, 0, 8, ('param', 'arg4')), ('param', 'arg5'))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0)
                    require arg1 < 1000
                    require arg2 < 1000
                    uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                    if msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) > 0:
                        call msg.sender with:
                           value msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) wei
                             gas 0 wei
                else:
                    if uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) > 0:
                        call address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) with:
                           value msg.value - (msg.value * feePercent / 100) wei
                             gas 0 wei
                    emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), msg.sender, ('signextend', 3, ('add', ('mul', 127, ('param', 'arg6')), ('mask_shl', 240, 0, 16, ('param', 'arg3')), ('mask_shl', 248, 0, 8, ('param', 'arg4')), ('param', 'arg5'))), msg.value
                    if uint16(sub_cf955f34[address(msg.sender)]):
                        require arg1 < 1000
                        require arg2 < 1000
                        uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(sub_cf955f34[address(msg.sender)])
                        uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                        Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = 0
                    else:
                        uint256(stor2) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(stor2))
                        uint256(sub_8bf50628[uint16(stor2) + 1 << 240]) = msg.sender or Mask(96, 160, uint256(sub_8bf50628[uint16(stor2) + 1 << 240]))
                        uint256(sub_cf955f34[address(msg.sender)]) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(sub_cf955f34[address(msg.sender)]))
                        require arg1 < 1000
                        require arg2 < 1000
                        uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(uint16(sub_d54b4a04) + 1)
                        uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                        Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = Mask(208, 48, uint16(sub_d54b4a04) + 1) >> 48
                    uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) = msg.value
    else:
        if msg.value >= minPrice:
            if msg.value >= uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_1ff6c705 / 100:
                if address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) == msg.sender:
                    emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('add', ('mul', 127, ('param', 'arg6')), ('mask_shl', 240, 0, 16, ('param', 'arg3')), ('mask_shl', 248, 0, 8, ('param', 'arg4')), ('param', 'arg5'))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0)
                    require arg1 < 1000
                    require arg2 < 1000
                    uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                    if msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) > 0:
                        call msg.sender with:
                           value msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) wei
                             gas 0 wei
                else:
                    if uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) > 0:
                        call address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) with:
                           value msg.value - (msg.value * feePercent / 100) wei
                             gas 0 wei
                    emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), msg.sender, ('signextend', 3, ('add', ('mul', 127, ('param', 'arg6')), ('mask_shl', 240, 0, 16, ('param', 'arg3')), ('mask_shl', 248, 0, 8, ('param', 'arg4')), ('param', 'arg5'))), msg.value
                    if uint16(sub_cf955f34[address(msg.sender)]):
                        require arg1 < 1000
                        require arg2 < 1000
                        uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(sub_cf955f34[address(msg.sender)])
                        uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                        Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = 0
                    else:
                        uint256(stor2) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(stor2))
                        uint256(sub_8bf50628[uint16(stor2) + 1 << 240]) = msg.sender or Mask(96, 160, uint256(sub_8bf50628[uint16(stor2) + 1 << 240]))
                        uint256(sub_cf955f34[address(msg.sender)]) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(sub_cf955f34[address(msg.sender)]))
                        require arg1 < 1000
                        require arg2 < 1000
                        uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(uint16(sub_d54b4a04) + 1)
                        uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                        Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = Mask(208, 48, uint16(sub_d54b4a04) + 1) >> 48
                    uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) = msg.value
            else:
                mem[448] = 0, mem[466 len 14]
                emit Log(msg.sender, Array(len=50, data='Value must be 10% higher than cu', 'rrent pixel price.', mem[448]), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_1ff6c705 / 100);
                if msg.value < uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_1ff6c705 / 100:
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                else:
                    if address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) == msg.sender:
                        emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('add', ('mul', 127, ('param', 'arg6')), ('mask_shl', 240, 0, 16, ('param', 'arg3')), ('mask_shl', 248, 0, 8, ('param', 'arg4')), ('param', 'arg5'))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0)
                        require arg1 < 1000
                        require arg2 < 1000
                        uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                        if msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) > 0:
                            call msg.sender with:
                               value msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) wei
                                 gas 0 wei
                    else:
                        if uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) > 0:
                            call address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) with:
                               value msg.value - (msg.value * feePercent / 100) wei
                                 gas 0 wei
                        emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), msg.sender, ('signextend', 3, ('add', ('mul', 127, ('param', 'arg6')), ('mask_shl', 240, 0, 16, ('param', 'arg3')), ('mask_shl', 248, 0, 8, ('param', 'arg4')), ('param', 'arg5'))), msg.value
                        if uint16(sub_cf955f34[address(msg.sender)]):
                            require arg1 < 1000
                            require arg2 < 1000
                            uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(sub_cf955f34[address(msg.sender)])
                            uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                            Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = 0
                        else:
                            uint256(stor2) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(stor2))
                            uint256(sub_8bf50628[uint16(stor2) + 1 << 240]) = msg.sender or Mask(96, 160, uint256(sub_8bf50628[uint16(stor2) + 1 << 240]))
                            uint256(sub_cf955f34[address(msg.sender)]) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(sub_cf955f34[address(msg.sender)]))
                            require arg1 < 1000
                            require arg2 < 1000
                            uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(uint16(sub_d54b4a04) + 1)
                            uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                            Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = Mask(208, 48, uint16(sub_d54b4a04) + 1) >> 48
                        uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) = msg.value
        else:
            mem[352] = mem[383 len 1]
            emit Log(msg.sender, Array(len=33, data='Minimum pixel price is 50 finney', '.', mem[352]), msg.value);
            if msg.value < minPrice:
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if msg.value >= uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_1ff6c705 / 100:
                    if address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) == msg.sender:
                        emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('add', ('mul', 127, ('param', 'arg6')), ('mask_shl', 240, 0, 16, ('param', 'arg3')), ('mask_shl', 248, 0, 8, ('param', 'arg4')), ('param', 'arg5'))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0)
                        require arg1 < 1000
                        require arg2 < 1000
                        uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                        if msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) > 0:
                            call msg.sender with:
                               value msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) wei
                                 gas 0 wei
                    else:
                        if uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) > 0:
                            call address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) with:
                               value msg.value - (msg.value * feePercent / 100) wei
                                 gas 0 wei
                        emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), msg.sender, ('signextend', 3, ('add', ('mul', 127, ('param', 'arg6')), ('mask_shl', 240, 0, 16, ('param', 'arg3')), ('mask_shl', 248, 0, 8, ('param', 'arg4')), ('param', 'arg5'))), msg.value
                        if uint16(sub_cf955f34[address(msg.sender)]):
                            require arg1 < 1000
                            require arg2 < 1000
                            uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(sub_cf955f34[address(msg.sender)])
                            uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                            Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = 0
                        else:
                            uint256(stor2) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(stor2))
                            uint256(sub_8bf50628[uint16(stor2) + 1 << 240]) = msg.sender or Mask(96, 160, uint256(sub_8bf50628[uint16(stor2) + 1 << 240]))
                            uint256(sub_cf955f34[address(msg.sender)]) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(sub_cf955f34[address(msg.sender)]))
                            require arg1 < 1000
                            require arg2 < 1000
                            uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(uint16(sub_d54b4a04) + 1)
                            uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                            Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = Mask(208, 48, uint16(sub_d54b4a04) + 1) >> 48
                        uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) = msg.value
                else:
                    mem[448] = 0, mem[466 len 14]
                    emit Log(msg.sender, Array(len=50, data='Value must be 10% higher than cu', 'rrent pixel price.', mem[448]), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_1ff6c705 / 100);
                    if msg.value < uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_1ff6c705 / 100:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 0 wei
                    else:
                        if address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) == msg.sender:
                            emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('add', ('mul', 127, ('param', 'arg6')), ('mask_shl', 240, 0, 16, ('param', 'arg3')), ('mask_shl', 248, 0, 8, ('param', 'arg4')), ('param', 'arg5'))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0)
                            require arg1 < 1000
                            require arg2 < 1000
                            uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                            if msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) > 0:
                                call msg.sender with:
                                   value msg.value - (uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) * sub_47980c0d / 100) wei
                                     gas 0 wei
                        else:
                            if uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) > 0:
                                call address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]) with:
                                   value msg.value - (msg.value * feePercent / 100) wei
                                     gas 0 wei
                            emit 0xcacb62d8: arg1 << 240, arg2 << 240, address(sub_8bf50628[uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0)]), ('signextend', 3, ('signextend', 3, ('type', 240, ('field', 16, ('stor', ('add', 3, ('mul', 2, ('param', 'arg2')), ('mul', 2000, ('param', 'arg1')))))))), uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0), msg.sender, ('signextend', 3, ('add', ('mul', 127, ('param', 'arg6')), ('mask_shl', 240, 0, 16, ('param', 'arg3')), ('mask_shl', 248, 0, 8, ('param', 'arg4')), ('param', 'arg5'))), msg.value
                            if uint16(sub_cf955f34[address(msg.sender)]):
                                require arg1 < 1000
                                require arg2 < 1000
                                uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(sub_cf955f34[address(msg.sender)])
                                uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                                Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = 0
                            else:
                                uint256(stor2) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(stor2))
                                uint256(sub_8bf50628[uint16(stor2) + 1 << 240]) = msg.sender or Mask(96, 160, uint256(sub_8bf50628[uint16(stor2) + 1 << 240]))
                                uint256(sub_cf955f34[address(msg.sender)]) = uint16(sub_d54b4a04) + 1 or Mask(240, 16, uint256(sub_cf955f34[address(msg.sender)]))
                                require arg1 < 1000
                                require arg2 < 1000
                                uint16(stor[(2 * arg2) + (2000 * arg1) + 3].field_0) = uint16(uint16(sub_d54b4a04) + 1)
                                uint32(stor[(2 * arg2) + (2000 * arg1) + 3].field_16) = uint32((127 * arg6) + (65536 * arg3) + (256 * arg4) + arg5)
                                Mask(208, 0, stor[(2 * arg2) + (2000 * arg1) + 3].field_48) = Mask(208, 48, uint16(sub_d54b4a04) + 1) >> 48
                            uint256(stor[(2 * arg2) + (2000 * arg1) + 4].field_0) = msg.value
}



}
