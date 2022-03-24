contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 550]




// =====================  Runtime code  =====================


const go = 0


function _fallback() payable {
    call 0x0276fb667ea61ef16a5dd0620c09e771d731ad02 with:
       value 1000 wei
         gas 0 wei
    return 0
}

function getOut() payable {
    call 0x4eecf99d543b278106ac0c0e8ffe616f2137f10a with:
       funct Mask(32, 224, sha3('withdraw()')) >> 224
         gas 200000 wei
    return 1
}



}
