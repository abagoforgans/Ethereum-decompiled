contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 458]




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
           funct Mask(32, 224, sha3('01-01,17')) >> 224
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args Mask(32, 192, sha3('01-01,17'))
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
           funct Mask(32, 224, sha3('01-01,17')) >> 224
           value 5 * 10^17 wei
             gas gas_remaining - 34050 wei
            args Mask(32, 192, sha3('01-01,17'))
}



}
