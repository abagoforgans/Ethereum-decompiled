contract main {


// =======================  Init code  ======================


uint256 stor4;

function _fallback() payable {
    stor4 = this.address or Mask(96, 160, stor4)
    return code.data[36 len 644]
}



// =====================  Runtime code  =====================


uint256 get;
address stor1;
address stor3;
array of struct stor5;

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
    Mask(248, 0, stor5.length.field_8) = '19-20,15' / 256
    idx = 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
    while (stor5.length + 31 / 32) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    if 10 == get:
        mem[160] = uint256(stor5.field_0)
        idx = 160
        s = 0
        while stor5.length + 160 > idx + 32:
            mem[idx + 32] = stor5[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call stor3.mem[160 len 4] with:
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args mem[164 len stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32) - 4]
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
    Mask(248, 0, stor5.length.field_8) = '19-20,15' / 256
    idx = 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
    while (stor5.length + 31 / 32) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    if 10 == get:
        mem[160] = uint256(stor5.field_0)
        idx = 160
        s = 0
        while stor5.length + 160 > idx + 32:
            mem[idx + 32] = stor5[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call stor3.mem[160 len 4] with:
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args mem[164 len stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32) - 4]
}



}
