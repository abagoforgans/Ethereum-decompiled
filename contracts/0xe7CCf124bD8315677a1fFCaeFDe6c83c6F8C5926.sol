contract main {


// =======================  Init code  ======================


uint256 stor4;

function _fallback() payable {
    stor4 = this.address or Mask(96, 160, stor4)
    return code.data[36 len 508]
}



// =====================  Runtime code  =====================


uint256 get;
address stor1;
address stor3;

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
    if 10 == get:
        call stor3 with:
           funct Mask(32, 224, '01-10,18') >> 224
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args Mask(224, 0, '01-10,18')
    if 20 == get:
        call stor3 with:
           funct Mask(32, 224, '01-05,18') >> 224
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args Mask(224, 0, '01-05,18')
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
    if 10 == get:
        call stor3 with:
           funct Mask(32, 224, '01-10,18') >> 224
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args Mask(224, 0, '01-10,18')
    if 20 == get:
        call stor3 with:
           funct Mask(32, 224, '01-05,18') >> 224
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args Mask(224, 0, '01-05,18')
}



}
