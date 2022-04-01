contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[363 len 20]
    return code.data[75 len 276]
}



// =====================  Runtime code  =====================


address configurationAddress;

function wallet() {
    return configurationAddress
}

function getConfiguration() {
    return configurationAddress
}

function _fallback() payable {
    revert
}



}
