contract main {


// =======================  Init code  ======================


uint256 stor4;

function _fallback() payable {
    stor4 = this.address or Mask(96, 160, stor4)
    return code.data[36 len 381]
}



// =====================  Runtime code  =====================


uint256 get;
address stor1;
address stor3;
address stor6;
uint256 stor6;

function get() payable {
    return get
}

function set(uint256 arg1, address arg2) payable {
    get = arg1
    uint256(stor6) = arg2 or Mask(96, 160, uint256(stor6))
    stor1 = 0x245133ea0fb1b77fab5886d7ffb8046dfeff3858
    if 100 == get:
        call stor1 with:
           value 5 * 10^17 wei
             gas 0 wei
    if 999 == get:
        selfdestruct(stor1)
    stor3 = address(stor6)
    call address(stor6) with:
       funct Mask(32, 224, 'hello world') >> 224
       value 5 * 10^15 wei
         gas gas_remaining - 34050 wei
        args Mask(224, 0, 'hello world')
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
    stor3 = address(stor6)
    call address(stor6) with:
       funct Mask(32, 224, 'hello world') >> 224
       value 5 * 10^15 wei
         gas gas_remaining - 34050 wei
        args Mask(224, 0, 'hello world')
}



}
