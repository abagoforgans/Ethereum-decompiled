contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor0 = 0
    stor1 = 0x26588a9301b0428d95e6fc3a5024fce8bec12d51
    return code.data[89 len 1364]
}



// =====================  Runtime code  =====================


uint256 stor0;
address sub_4c773795Address;

function sub_4c773795(?) payable {
    return sub_4c773795Address
}

function _fallback() payable {
  stop
}

function query(uint256 arg1, string arg2, string arg3) payable {
    stor0++
    emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160
    return sha3(block.timestamp + stor0)
}

function sub_a4c8a1c1(?) payable {
    stor0++
    if not arg3.length % 32:
        emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg3.length + arg2.length + 224
    else:
        emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, floor32(arg3.length) + arg2.length + 256
    return sha3(block.timestamp + stor0)
}



}
