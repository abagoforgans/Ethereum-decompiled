contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = 555
    return code.data[63 len 878]
}



// =====================  Runtime code  =====================


address owner;
address sub_5142a39eAddress;
uint256 sub_6ca6c659;

function sub_5142a39e(?) {
    return sub_5142a39eAddress
}

function sub_6ca6c659(?) {
    return sub_6ca6c659
}

function Owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_3a579100(?) {
    require owner == msg.sender
    sub_6ca6c659 = arg1
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
