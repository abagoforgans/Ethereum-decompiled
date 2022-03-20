contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0xee462a6717f17c57c826f1ad9b4d3813495296c9
    return code.data[70 len 327]
}



// =====================  Runtime code  =====================


address deployerAddress;
address targetAddr;
uint256 stor1;

function targetAddr() payable {
    return address(targetAddr)
}

function deployer() payable {
    return deployerAddress
}

function SetAddr(address arg1) payable {
    if deployerAddress == msg.sender:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function _fallback() payable {
    mem[64] = 96
    call address(targetAddr) with:
       value var4001 wei
         gas 0 wei
    var4001 = var4001 + 1
    continue 
}

function TestContract() payable {
    if deployerAddress == msg.sender:
        call deployerAddress with:
           value eth.balance(this.address) wei
             gas 0 wei
}



}
