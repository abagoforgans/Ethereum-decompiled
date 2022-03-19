contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 650]
}



// =====================  Runtime code  =====================


address sub_b8729084Address;
uint256 sub_82cab06e;
uint256 sub_f37a7ba7;
uint8 sub_69ee9f10;
uint8 sub_bacc248d; offset 8
address sub_449c9249Address; offset 16
uint256 stor3; offset 16

function sub_449c9249(?) payable {
    return sub_449c9249Address
}

function sub_69ee9f10(?) payable {
    return sub_69ee9f10
}

function sub_82cab06e(?) payable {
    return sub_82cab06e
}

function sub_b8729084(?) payable {
    return sub_b8729084Address
}

function sub_bacc248d(?) payable {
    return sub_bacc248d
}

function sub_f37a7ba7(?) payable {
    return sub_f37a7ba7
}

function _fallback() payable {
  stop
}

function empty() payable {
    call sub_b8729084Address with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function sub_8a9c049f(?) payable {
    if sub_b8729084Address != msg.sender:
        sub_bacc248d = 0
    else:
        sub_82cab06e = sha3(arg1[all])
        sub_bacc248d = 1
}

function sub_c5eff94f(?) payable {
    stor3 = Mask(240, 0, msg.sender)
    sub_f37a7ba7 = sha3(arg1[all])
    if sub_82cab06e != sha3(arg1[all]):
        sub_69ee9f10 = 0
    else:
        sub_69ee9f10 = 1
}



}
