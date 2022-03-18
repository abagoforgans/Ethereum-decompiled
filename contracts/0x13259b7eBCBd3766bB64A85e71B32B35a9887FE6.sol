contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 190]




// =====================  Runtime code  =====================


function _fallback() payable {
    if msg.value > 999999999999:
        if 0 == (block.timestamp * block.difficulty * block.number) + 1 % (10^18 / msg.value) + 10:
            call msg.sender with:
               value eth.balance(this.address) / 10 wei
                 gas 0 wei
            call 0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae with:
               value eth.balance(this.address) / 20 wei
                 gas 0 wei
}



}
