contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 0
    stor1 = 0x26588a9301b0428d95e6fc3a5024fce8bec12d51
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[134 len 1978]
}



// =====================  Runtime code  =====================


const getPrice(string arg1) = 10


uint256 stor0;
address sub_4c773795Address;
address stor2;

function sub_4c773795(?) payable {
    return sub_4c773795Address
}

function _fallback() payable {
  stop
}

function withdrawAll() payable {
    if msg.sender == stor2:
        call stor2 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function query(uint256 arg1, string arg2, string arg3) payable {
    if eth.balance(this.address) < 10:
        return 0
    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
       value 10 wei
         gas 0 wei
    stor0++
    emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160
    return sha3(block.timestamp + stor0)
}

function sub_a4c8a1c1(?) payable {
    if eth.balance(this.address) < 10:
        return 0
    call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
       value 10 wei
         gas 0 wei
    stor0++
    if not arg3.length % 32:
        emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg3.length + arg2.length + 224
    else:
        emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, floor32(arg3.length) + arg2.length + 256
    return sha3(block.timestamp + stor0)
}



}
