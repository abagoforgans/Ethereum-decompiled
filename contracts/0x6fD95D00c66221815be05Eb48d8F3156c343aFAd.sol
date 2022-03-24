contract main {


// =======================  Init code  ======================


function _fallback() payable {
    mem[96 len 96] = code.data[280 len 96]
    s = 0
    idx = 96
    while 192 > idx:
        uint256(stor[s]) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while 3 > idx:
        address(stor[idx]) = 0
        idx = idx + 1
        continue 
    return code.data[132 len 148]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    idx = 0
    while idx < 3:
        call stor[idx] with:
           value eth.balance(this.address) / 3 wei
             gas 0 wei
        idx = idx + 1
        continue 
}

function sendPayment() payable {
    idx = 0
    while idx < 3:
        call stor[idx] with:
           value eth.balance(this.address) / 3 wei
             gas 0 wei
        idx = idx + 1
        continue 
}



}
