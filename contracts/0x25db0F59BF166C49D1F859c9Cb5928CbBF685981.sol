contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[37 len 410]
}



// =====================  Runtime code  =====================


address stor0;
address activeDiggerAddress;
uint256 stor1;

function ActiveDigger() payable {
    return address(activeDiggerAddress)
}

function ChangeActiveDigger(address arg1) payable {
    if msg.sender == stor0:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function GetMoney() payable {
    if msg.sender == stor0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function _fallback() payable {
    call address(activeDiggerAddress).ContributeWithSender(bool rg1, uint8 rg2, address rg3) with:
       value msg.value wei
         gas gas_remaining - 34050 wei
        args 0, 0, msg.sender
    require ext_call.success
}

function Contribute(bool arg1, uint8 arg2) payable {
    call address(activeDiggerAddress).ContributeWithSender(bool rg1, uint8 rg2, address rg3) with:
       value msg.value wei
         gas gas_remaining - 34050 wei
        args arg1, arg2 << 248, msg.sender
    require ext_call.success
}



}
