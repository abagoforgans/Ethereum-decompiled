contract main {


// =======================  Init code  ======================


uint256 stor5;

function _fallback() payable {
    stor5 = this.address or Mask(96, 160, stor5)
    return code.data[36 len 735]
}



// =====================  Runtime code  =====================


uint256 get;
array of uint256 stor1;
address stor2;
address stor4;
uint256 stor7;

function get() payable {
    return get
}

function set(uint256 arg1, string arg2) payable {
    get = arg1
    stor1[] = Array(len=arg2.length, data=arg2[all])
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
        call stor4.test266151307() with:
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffc, 18
    if 20 == get:
        call stor4.test266151307() with:
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffc, 18
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
        call stor4.test266151307() with:
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffc, 18
    if 20 == get:
        call stor4.test266151307() with:
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffc, 18
}



}
