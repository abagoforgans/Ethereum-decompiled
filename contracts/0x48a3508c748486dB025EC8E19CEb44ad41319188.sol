contract main {


// =======================  Init code  ======================


uint256 stor5;

function _fallback() payable {
    stor5 = this.address or Mask(96, 160, stor5)
    return code.data[36 len 912]
}



// =====================  Runtime code  =====================


uint256 get;
array of struct stor1;
address stor2;
address stor4;
uint256 stor7;

function get() payable {
    return get
}

function set(uint256 arg1, string arg2) payable {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    get = arg1
    stor1[].field_0 = Array(len=arg2.length, data=arg2[all])
    stor2 = 0x245133ea0fb1b77fab5886d7ffb8046dfeff3858
    if 100 == get:
        call stor2 with:
           value 5 * 10^17 wei
             gas 0 wei
    if 999 == get:
        selfdestruct(stor2)
    stor4 = 0x2faa316fc4624ec39adc2ef7b5301124cfb68777
    stor7 = '01-05,18'
    if get != 10:
        if 20 == get:
            mem[ceil32(arg2.length) + 128] = uint256(stor1.field_0)
            idx = ceil32(arg2.length) + 128
            s = 0
            while ceil32(arg2.length) + stor1.length + 128 > idx + 32:
                mem[idx + 32] = stor1[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            call stor4.mem[ceil32(arg2.length) + 128 len 4] with:
               value 5 * 10^17 wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg2.length) + 132 len stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) - 4]
    else:
        mem[ceil32(arg2.length) + 128] = uint256(stor1.field_0)
        idx = ceil32(arg2.length) + 128
        s = 0
        while ceil32(arg2.length) + stor1.length + 128 > idx + 32:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call stor4.mem[ceil32(arg2.length) + 128 len 4] with:
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(arg2.length) + 132 len stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) - 4]
        if 20 == get:
            mem[0] = 1
            mem[ceil32(arg2.length) + 128] = uint256(stor1.field_0)
            idx = mem[64]
            s = 0
            while ceil32(arg2.length) + stor1.length + 128 > idx + 32:
                mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
                idx = idx + 32
                s = s + 1
                continue 
            call stor4.mem[mem[64] len 4] with:
               value 5 * 10^17 wei
                 gas gas_remaining - 34050 wei
                args mem[mem[64] + 4 len ceil32(arg2.length) + stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + -mem[64] + 124]
}

function c() payable {
    stor2 = 0x245133ea0fb1b77fab5886d7ffb8046dfeff3858
    if 100 == get:
        call stor2 with:
           value 5 * 10^17 wei
             gas 0 wei
    if get != 999:
    selfdestruct(stor2)
}

function _fallback() payable {
  stop
}

function sub_2f8e042d(?) payable {
    mem[64] = 96
    stor4 = 0x2faa316fc4624ec39adc2ef7b5301124cfb68777
    stor7 = '01-05,18'
    if get != 10:
        if 20 == get:
            mem[96] = uint256(stor1.field_0)
            idx = 96
            s = 0
            while stor1.length + 96 > idx + 32:
                mem[idx + 32] = stor1[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            call stor4.mem[96 len 4] with:
               value 5 * 10^17 wei
                 gas gas_remaining - 34050 wei
                args mem[100 len stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) - 4]
    else:
        mem[96] = uint256(stor1.field_0)
        idx = 96
        s = 0
        while stor1.length + 96 > idx + 32:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call stor4.mem[96 len 4] with:
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args mem[100 len stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) - 4]
        if 20 == get:
            mem[0] = 1
            mem[96] = uint256(stor1.field_0)
            idx = mem[64]
            s = 0
            while stor1.length + 96 > idx + 32:
                mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
                idx = idx + 32
                s = s + 1
                continue 
            call stor4.mem[mem[64] len 4] with:
               value 5 * 10^17 wei
                 gas gas_remaining - 34050 wei
                args mem[mem[64] + 4 len stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + -mem[64] + 92]
}



}
