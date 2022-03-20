contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[34 len 139]
}



// =====================  Runtime code  =====================


address deployerAddress;

function deployer() payable {
    return deployerAddress
}

function pay() payable {
    call deployerAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function _fallback() payable {
    call deployerAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
}



}
