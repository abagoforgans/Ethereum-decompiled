contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 623]




// =====================  Runtime code  =====================


uint8 stor0;
address stor0; offset 8
uint256 stor0;
uint256 stor0; offset 8

function _fallback() payable {
    if uint8(stor0.field_0):
        uint8(stor0.field_0) = 0
    else:
        if address(stor0.field_8) != msg.sender:
            uint8(stor0.field_0) = 0
        else:
            uint8(stor0.field_0) = 1
            call 0 or address(stor0.field_8).withdraw() with:
                 gas 50000 wei
}

function sub_1b4b46cb(?) payable {
    uint8(stor0.field_0) = 0
    Mask(248, 0, stor0.field_8) = Mask(248, 0, arg1)
    call address(arg1) with:
       value arg2 wei
         gas 0 wei
    call address(arg1) with:
       funct Mask(32, 224, sha3('withdrawWithSend()')) >> 224
         gas gas_remaining - 25050 wei
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 0 wei
    Mask(168, 0, stor0.field_0) = 0
}

function sub_a1f13418(?) payable {
    uint8(stor0.field_0) = 0
    Mask(248, 0, stor0.field_8) = Mask(248, 0, arg1)
    call address(arg1) with:
       value arg2 wei
         gas 0 wei
    call address(arg1) with:
       funct Mask(32, 224, sha3('withdrawWithCall()')) >> 224
         gas gas_remaining - 25050 wei
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 0 wei
    Mask(168, 0, stor0.field_0) = 0
}



}
