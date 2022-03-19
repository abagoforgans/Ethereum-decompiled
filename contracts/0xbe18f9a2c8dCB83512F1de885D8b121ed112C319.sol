contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = tx.origin or Mask(96, 160, stor1)
    return code.data[63 len 762]
}



// =====================  Runtime code  =====================


mapping of address lookup;
address stor1;

function lookup(string arg1) payable {
    return address(lookup[arg1[all]])
}

function kill() payable {
    if tx.origin == stor1:
        selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function register(string arg1) payable {
    uint256(lookup[arg1[all]]) = tx.origin or Mask(96, 160, uint256(lookup[arg1[all]]))
}

function empty() payable {
    if tx.origin == stor1:
        call stor1 with:
           value eth.balance(this.address) wei
             gas 0 wei
}



}
