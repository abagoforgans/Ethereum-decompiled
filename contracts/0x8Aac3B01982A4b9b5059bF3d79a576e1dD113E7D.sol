contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 297]




// =====================  Runtime code  =====================


function go() payable {
    call 0x4eecf99d543b278106ac0c0e8ffe616f2137f10a with:
       value 100 wei
         gas 0 wei
    return 0
}

function _fallback() payable {
    call 0x0276fb667ea61ef16a5dd0620c09e771d731ad02 with:
       value 100 wei
         gas 0 wei
    return 0
}



}
