contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 751]
}



// =====================  Runtime code  =====================


address owner;
address sub_5142a39eAddress;

function sub_5142a39e(?) {
    return sub_5142a39eAddress
}

function Owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_19dac45d(?) {
    require owner == msg.sender
    require arg1
    sub_5142a39eAddress = arg1
}

function GetBalance() {
    if not sub_5142a39eAddress:
        emit 0x421b1a1a 
        return 0
    emit 0x617d151f 
    delegate sub_5142a39eAddress with:
       funct (Mask(32, 224, sha3('GetBalance()')) >> 224)
         gas gas_remaining - 710 wei
        args 
    require delegate.return_code
    emit 0x32955c78: bool(delegate.return_data[0])
    return bool(delegate.return_data[0])
}



}
