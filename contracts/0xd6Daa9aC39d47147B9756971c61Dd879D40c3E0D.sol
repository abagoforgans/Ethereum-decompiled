contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 3876]
}



// =====================  Runtime code  =====================


#
#  - updateRegistration(string arg1, string arg2)
#  - sendMsg(address arg1, string arg2)
#
address registrarAddress;
uint256 fee_registration;
uint256 fee_msg;
uint256 cnt_registrations;

function registrar() payable {
    return registrarAddress
}

function fee_registration() payable {
    return fee_registration
}

function fee_msg() payable {
    return fee_msg
}

function cnt_registrations() payable {
    return cnt_registrations
}

function _fallback() payable {
  stop
}

function setMsgPrice(uint256 arg1) payable {
    require registrarAddress == msg.sender
    fee_msg = arg1
}

function setRegistrationPrice(uint256 arg1) payable {
    require registrarAddress == msg.sender
    fee_registration = arg1
}



}
