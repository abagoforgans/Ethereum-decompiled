contract main {




// =====================  Runtime code  =====================


address myBAddress;

function myB() payable {
    return myBAddress
}

function _fallback() payable {
    revert
}



}
