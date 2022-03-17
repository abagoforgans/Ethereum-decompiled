contract main {


// =======================  Init code  ======================


uint256 stor4;

function _fallback() payable {
    stor4 = this.address or Mask(96, 160, stor4)
    return code.data[36 len 1186]
}



// =====================  Runtime code  =====================


uint256 get;
address stor1;
address stor3;
address stor4;
array of struct stor5;
array of struct stor6;
array of uint256 stor7;
array of uint256 stor8;

function get() payable {
    return get
}

function set(uint256 arg1) payable {
    get = arg1
    stor1 = 0x245133ea0fb1b77fab5886d7ffb8046dfeff3858
    if 100 == get:
        call stor1 with:
           value 5 * 10^17 wei
             gas 0 wei
    if 999 == get:
        selfdestruct(stor1)
    stor3 = 0x2faa316fc4624ec39adc2ef7b5301124cfb68777
    uint8(stor5.length) = 16
    Mask(184, 0, stor5.length.field_8) = 0
    uint64(stor5.length.field_192) = 3545789975203950642
    idx = 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
    while (stor5.length + 31 / 32) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    uint8(stor6.length) = 16
    Mask(248, 0, stor6.length.field_8) = '01-09,17' / 256
    idx = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
    while (stor6.length + 31 / 32) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    uint8(stor7.length) = 16
    Mask(184, 0, stor7.length.field_8) = 0
    uint64(stor7.length.field_192) = 3545789975203950642
    idx = 0xa66cc928b5edb82af9bd49922954155ab7b0942694bea4ce44661d9a8736c688
    while (stor7.length + 31 / 32) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    uint8(stor8.length) = 16
    Mask(248, 0, stor8.length.field_8) = '11-20,01' / 256
    idx = 0xf3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636ee3
    while (stor8.length + 31 / 32) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    if eth.balance(stor4) <= 5 * 10^17:
        if block.number + bool(block.difficulty) != 0:
            mem[352] = uint256(stor6.field_0)
            idx = 352
            s = 0
            while stor6.length + 352 > idx + 32:
                mem[idx + 32] = stor6[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            call stor3.mem[352 len 4] with:
               value 5 * 10^17 wei
                 gas gas_remaining - 34050 wei
                args mem[356 len stor6.length + (floor32(stor6.length - 1) + -stor6.length + 32 % 32) - 4]
        else:
            mem[352] = uint256(stor5.field_0)
            idx = 352
            s = 0
            while stor5.length + 352 > idx + 32:
                mem[idx + 32] = stor5[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            call stor3.mem[352 len 4] with:
               value 5 * 10^17 wei
                 gas gas_remaining - 34050 wei
                args mem[356 len stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32) - 4]
    else:
        if 10 == get:
            if block.number + bool(block.difficulty) != 0:
                mem[352] = uint256(stor6.field_0)
                idx = 352
                s = 0
                while stor6.length + 352 > idx + 32:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor3.mem[352 len 4] with:
                   value 5 * 10^17 wei
                     gas gas_remaining - 34050 wei
                    args mem[356 len stor6.length + (floor32(stor6.length - 1) + -stor6.length + 32 % 32) - 4]
            else:
                mem[352] = uint256(stor5.field_0)
                idx = 352
                s = 0
                while stor5.length + 352 > idx + 32:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor3.mem[352 len 4] with:
                   value 5 * 10^17 wei
                     gas gas_remaining - 34050 wei
                    args mem[356 len stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32) - 4]
}

function c() payable {
    stor1 = 0x245133ea0fb1b77fab5886d7ffb8046dfeff3858
    if 100 == get:
        call stor1 with:
           value 5 * 10^17 wei
             gas 0 wei
    if get != 999:
    selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function sub_2f8e042d(?) payable {
    stor3 = 0x2faa316fc4624ec39adc2ef7b5301124cfb68777
    uint8(stor5.length) = 16
    Mask(184, 0, stor5.length.field_8) = 0
    uint64(stor5.length.field_192) = 3545789975203950642
    idx = 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
    while (stor5.length + 31 / 32) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    uint8(stor6.length) = 16
    Mask(248, 0, stor6.length.field_8) = '01-09,17' / 256
    idx = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
    while (stor6.length + 31 / 32) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    uint8(stor7.length) = 16
    Mask(184, 0, stor7.length.field_8) = 0
    uint64(stor7.length.field_192) = 3545789975203950642
    idx = 0xa66cc928b5edb82af9bd49922954155ab7b0942694bea4ce44661d9a8736c688
    while (stor7.length + 31 / 32) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    uint8(stor8.length) = 16
    Mask(248, 0, stor8.length.field_8) = '11-20,01' / 256
    idx = 0xf3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636ee3
    while (stor8.length + 31 / 32) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    if eth.balance(stor4) <= 5 * 10^17:
        if block.number + bool(block.difficulty) != 0:
            mem[352] = uint256(stor6.field_0)
            idx = 352
            s = 0
            while stor6.length + 352 > idx + 32:
                mem[idx + 32] = stor6[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            call stor3.mem[352 len 4] with:
               value 5 * 10^17 wei
                 gas gas_remaining - 34050 wei
                args mem[356 len stor6.length + (floor32(stor6.length - 1) + -stor6.length + 32 % 32) - 4]
        else:
            mem[352] = uint256(stor5.field_0)
            idx = 352
            s = 0
            while stor5.length + 352 > idx + 32:
                mem[idx + 32] = stor5[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            call stor3.mem[352 len 4] with:
               value 5 * 10^17 wei
                 gas gas_remaining - 34050 wei
                args mem[356 len stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32) - 4]
    else:
        if 10 == get:
            if block.number + bool(block.difficulty) != 0:
                mem[352] = uint256(stor6.field_0)
                idx = 352
                s = 0
                while stor6.length + 352 > idx + 32:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor3.mem[352 len 4] with:
                   value 5 * 10^17 wei
                     gas gas_remaining - 34050 wei
                    args mem[356 len stor6.length + (floor32(stor6.length - 1) + -stor6.length + 32 % 32) - 4]
            else:
                mem[352] = uint256(stor5.field_0)
                idx = 352
                s = 0
                while stor5.length + 352 > idx + 32:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor3.mem[352 len 4] with:
                   value 5 * 10^17 wei
                     gas gas_remaining - 34050 wei
                    args mem[356 len stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32) - 4]
}



}
