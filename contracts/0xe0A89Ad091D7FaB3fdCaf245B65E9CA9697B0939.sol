contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 242]
}



// =====================  Runtime code  =====================


address stor0;
address activeDiggerAddress;
uint256 stor1;

function ActiveDigger() payable {
    return address(activeDiggerAddress)
}

function _fallback() payable {
    call address(activeDiggerAddress) with:
       value msg.value wei
         gas 0 wei
}

function ChangeActiveDigger(address arg1) payable {
    if stor0 == msg.sender:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function GetMoney() payable {
    if stor0 == msg.sender:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 0 wei
}



}
