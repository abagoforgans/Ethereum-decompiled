contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = code.data[1823 len 32]
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[60 len 1763]
}



// =====================  Runtime code  =====================


address owner;
uint256 rate;
mapping of struct sub_364460f3;

function rate() {
    return rate
}

function sub_364460f3(?) {
    return sub_364460f3[arg1[all]][1][0 len sub_364460f3[arg1[all]][1].length].field_0
}

function sub_442a0c6f(?) {
    return sub_364460f3[arg1[all]].field_512
}

function owner() {
    return owner
}

function _fallback() payable {
    revert 
}

function changeRate(uint256 arg1) {
    require owner == msg.sender
    rate = arg1
}

function sub_178c4b1f(?) {
    emit 0x66cd17a3: msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
}

function sub_87a3d555(?) payable {
    if sub_364460f3[arg1[all]].field_0:
        require sub_364460f3[arg1[all]].field_512 <= block.timestamp
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require rate
    sub_364460f3[arg1[all]].field_0 = msg.sender or Mask(96, 160, sub_364460f3[arg1[all]].field_0)
    sub_364460f3[arg1[all]][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_364460f3[arg1[all]].field_512 = block.timestamp + (msg.value / rate)
    emit 0x66cd17a3: msg.sender, Array(len=arg1.length, data=arg1[all]), block.timestamp + (msg.value / rate)
}



}
