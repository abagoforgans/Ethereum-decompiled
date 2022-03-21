contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 291]




// =====================  Runtime code  =====================


function _fallback() payable {
    emit Print(Array(len=13, data='Hello, World!'));
}

function sendMoney() payable {
    if eth.balance(this.address) > 3:
        call 0x7e5036bf0177702deca2e40ba8dab732fac49b5d with:
           value eth.balance(this.address) / 3 wei
             gas 0 wei
        call 0xa387e7b5139f19652d6bd20ccbc91f1b78ed6bd1 with:
           value eth.balance(this.address) / 3 wei
             gas 0 wei
        call 0xeda396755db5a6902a44c4a5db53ed18c2ac7ed1 with:
           value eth.balance(this.address) / 3 wei
             gas 0 wei
}



}
