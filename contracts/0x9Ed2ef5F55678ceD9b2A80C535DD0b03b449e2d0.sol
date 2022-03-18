contract main {


// =======================  Init code  ======================


uint256 stor5;

function _fallback() payable {
    stor5 = this.address or Mask(96, 160, stor5)
    return code.data[36 len 613]
}



// =====================  Runtime code  =====================


uint256 get;
address stor1;
address stor3;
address stor4;

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
    stor4 = 0xb18e8971823aff9fedb6856ba78fd669d1dc111c
    call 0x2faa316fc4624ec39adc2ef7b5301124cfb68777 with:
       funct Mask(32, 224, '01-09,17') >> 224
       value 5 * 10^17 wei
         gas gas_remaining - 34050 wei
        args Mask(224, 0, '01-09,17')
    call stor4 with:
       funct Mask(32, 224, '01-09,17') >> 224
       value 10^15 wei
         gas gas_remaining - 34050 wei
        args (uint32('01-09,17') << 192)
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
    stor4 = 0xb18e8971823aff9fedb6856ba78fd669d1dc111c
    call 0x2faa316fc4624ec39adc2ef7b5301124cfb68777 with:
       funct Mask(32, 224, '01-09,17') >> 224
       value 5 * 10^17 wei
         gas gas_remaining - 34050 wei
        args Mask(224, 0, '01-09,17')
    call stor4 with:
       funct Mask(32, 224, '01-09,17') >> 224
       value 10^15 wei
         gas gas_remaining - 34050 wei
        args (uint32('01-09,17') << 192)
}



}
