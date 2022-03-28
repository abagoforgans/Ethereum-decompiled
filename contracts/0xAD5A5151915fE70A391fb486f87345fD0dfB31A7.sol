contract main {


// =======================  Init code  ======================


const _fallback = code.data[27 len 224]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function hello() {
    emit log(Array(len=12, data='Hello world!'));
}



}
