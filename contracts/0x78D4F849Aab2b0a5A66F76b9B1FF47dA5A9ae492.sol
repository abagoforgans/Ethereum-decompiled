contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0x12905fa36a703d6ef75cb2198f9165192b0c5ae5
    return code.data[70 len 316]
}



// =====================  Runtime code  =====================


address deployerAddress;
address dividendAddr;
uint256 stor1;

function dividendAddr() payable {
    return address(dividendAddr)
}

function deployer() payable {
    return deployerAddress
}

function SetAddr(address arg1) payable {
    if deployerAddress == msg.sender:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function TestContract() payable {
    if deployerAddress == msg.sender:
        call deployerAddress with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function _fallback() payable {
    if eth.balance(this.address) > 10^17:
        call address(dividendAddr) with:
           value eth.balance(this.address) wei
             gas 0 wei
}



}
