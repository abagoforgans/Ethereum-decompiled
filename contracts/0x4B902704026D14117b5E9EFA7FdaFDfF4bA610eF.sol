contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 986]
}



// =====================  Runtime code  =====================


address stor0;
mapping of address myAccount;

function myAccount() payable {
    require msg.value <= 0
    return address(myAccount[address(msg.sender)])
}

function terminate() payable {
    require msg.value <= 0
    require msg.sender == stor0
    emit notifyTerminate(eth.balance(this.address));
    selfdestruct(stor0)
}

function _fallback() payable {
    require msg.value <= 0
}

function createAccount() payable {
    require msg.value <= 0
    require 0 == address(myAccount[address(msg.sender)])
    create contract with 0 wei
                    code: code.data[518 len 468], address(msg.sender), stor0
    uint256(myAccount[address(msg.sender)]) = create.new_address or Mask(96, 160, uint256(myAccount[address(msg.sender)]))
    return address(myAccount[address(msg.sender)])
}



}
