contract main {


// =======================  Init code  ======================


uint256 stor5;

function _fallback() payable {
    stor5 = this.address or Mask(96, 160, stor5)
    return code.data[36 len 1246]
}



// =====================  Runtime code  =====================


uint256 get;
array of struct 2;
address stor2;
address stor4;
uint256 stor7;

function get() payable {
    return get
}

function get2() payable {
    return 2[0 len 2.length].field_0
}

function set(uint256 arg1, string arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    get = arg1
    2[].field_0 = Array(len=arg2.length, data=arg2[all])
    stor2 = 0x245133ea0fb1b77fab5886d7ffb8046dfeff3858
    if 100 == get:
        call stor2 with:
           value 5 * 10^17 wei
             gas 0 wei
    if 999 == get:
        selfdestruct(stor2)
    stor4 = 0x2faa316fc4624ec39adc2ef7b5301124cfb68777
    stor7 = '01-05,18'
    if 10 == get:
        call stor4 with:
           funct Mask(32, 224, '01-01,18') >> 224
           value 10^18 wei
             gas gas_remaining - 34050 wei
            args Mask(224, 0, '01-01,18')
    if 20 == get:
        call stor4 with:
           funct Mask(32, 224, '20-20,11') >> 224
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args Mask(224, 0, '20-20,11')
    if 30 == get:
        mem[ceil32(arg2.length) + 128] = uint256(2.field_0)
        idx = ceil32(arg2.length) + 128
        s = 0
        while ceil32(arg2.length) + 2.length + 128 > idx + 32:
            mem[idx + 32] = 2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call stor4.mem[ceil32(arg2.length) + 128 len 4] with:
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(arg2.length) + 132 len 2.length + (floor32(2.length - 1) + -2.length + 32 % 32) - 4]
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
    stor4 = 0x2faa316fc4624ec39adc2ef7b5301124cfb68777
    stor7 = '01-05,18'
    if 10 == get:
        call stor4 with:
           funct Mask(32, 224, '01-01,18') >> 224
           value 10^18 wei
             gas gas_remaining - 34050 wei
            args Mask(224, 0, '01-01,18')
    if 20 == get:
        call stor4 with:
           funct Mask(32, 224, '20-20,11') >> 224
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args Mask(224, 0, '20-20,11')
    if 30 == get:
        mem[96] = uint256(2.field_0)
        idx = 96
        s = 0
        while 2.length + 96 > idx + 32:
            mem[idx + 32] = 2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call stor4.mem[96 len 4] with:
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args mem[100 len 2.length + (floor32(2.length - 1) + -2.length + 32 % 32) - 4]
}



}
